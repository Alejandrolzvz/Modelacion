#!/usr/bin/python3
import math
import tkinter
from functools import partial


top_width  = 1015
top_height = 793

mm_px_ratio = 7

top_x_center = top_width/2
top_y_center = top_height/2

pointset_filename = "pointset.txt"

robot_diamater_mm   = 300
robot_diamater_px   = robot_diamater_mm/mm_px_ratio
robot_radius_px     = robot_diamater_px/2
robot_velocity_mm_s = 400
robot_velocity_px_s = robot_velocity_mm_s/mm_px_ratio

number_of_possible_initial_velocities = 6

x_distance_between_points_px = 0
y_distance_between_points_px = 0
number_id = None


class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y
        
    def __str__(self):
        return "[" + str(self.x) + ", " + str(self.y) + "]"

class Vector:
    def __init__(self, x, y):
        self.x  = x
        self.y  = y
    
    def __str__(self):
        return "[" + str(self.x) + ", " + str(self.y) + "]"
    
    def get_norm(self):
        return math.sqrt(self.x**2 + self.y**2)

    def get_direction(self):
        direction = math.atan2(self.y, self.x)
        if(direction < 0):
            direction += 2 * math.pi
        return direction

    def dot_product(self, v):
        return (self.x * v.x + self.y * v.y)
    
    def cross_product(self, v):
        return self.x * v.y - self.y * v.x

    def angle_between(self, v):
        return math.acos( self.dot_product(v) / (self.get_norm() * v.get_norm()) )
    
    def signed_angle_between(self, v):
        ccw = ( self.cross_product(v) >= 0 )
        if ccw:
            return self.angle_between(v)
        else:
            return -self.angle_between(v)
    
    def rotate_by(self, theta):
        return Vector( self.x * math.cos(theta) - self.y * math.sin(theta), self.x * math.sin(theta) + self.y * math.cos(theta) )

class Segment:
    def __init__(self, p0, p1):
        self.p0 = p0
        self.p1 = p1

    def __str__(self):
        return str(self.p0) + " -> " + str(self.p1)

    def norm_in_px(self):
        return Vector(self.p1.x - self.p0.x, self.p1.y - self.p0.y).get_norm()
    
    def norm_in_mm(self):
        return self.norm_in_px()*mm_px_ratio

class Polygon:
    def __init__(self):
        self.pointset   = []
        self.segmentset = []
    
    #Get points from file one by one to list a set of points to create the polygon
    def get_pointset_from_file(self, filename):
        pointset = []
        file_ptr = open(filename, "r")

        line = file_ptr.readline()
        while line:
            x, y = line.split()
            pointset.append(Point(int(x),int(y)))
            line = file_ptr.readline()

        self.pointset = pointset

    #Create a set of segments from a given set of points that describes the polygon
    def get_segmentset(self):

        if len(self.pointset) < 2:
            return

        segmentset = []

        for i in range(0, len(self.pointset)-1):
            segmentset.append(Segment(self.pointset[i], self.pointset[i+1]))

        segmentset.append(Segment(self.pointset[len(self.pointset)-1], self.pointset[0]))

        self.segmentset = segmentset

    #Display the polygon
    def display_in_canvas(self, canvas_object, line_color, line_width):

        if len(self.pointset) < 2:
            return 

        #Draw polygon in canvas line by line
        for i in range(0, len(self.pointset)-1):
            canvas_object.create_line(self.pointset[i].x, self.pointset[i].y, self.pointset[i+1].x, self.pointset[i+1].y, fill = line_color, width = line_width)

        canvas_object.create_line(self.pointset[len(self.pointset)-1].x, self.pointset[len(self.pointset)-1].y, self.pointset[0].x, self.pointset[0].y, fill = line_color, width = line_width)

    #Ray tracing algorithm
    def ray_intersects_segment(self, segment, p):

        epsilon = 1e-5
        a, b = segment.p0, segment.p1

        if a.y > b.y:
            a, b = b, a
        
        if p.y == a.y or p.y == b.y:
            p.y += epsilon
        if p.y < a.y or p.y > b.y:
            return False
        elif p.x >= max(a.x, b.x):
            return False
        else:
            if p.x < min(a.x, b.x):
                return True
            else:
                if a.x != b.x:
                    m_1 = (b.y-a.y)/(b.x-a.x)
                else:
                    m_1 = 1e9
                if a.x != p.x:
                    m_2 = (p.y-a.y)/(p.x-a.x)
                else:
                    m_2 = 1e9
                if m_2 >= m_1:
                    return True
                else:
                    return False

    #Returns if a point is inside the polygon or not (using the ray tracing algorithm)
    def point_inside_polygon(self, p):

        ray_instersect = 0

        for segment in self.segmentset:
            if self.ray_intersects_segment(segment, p):
                ray_instersect += 1

        if ray_instersect%2 == 0:
            return False
        else:
            return True

class Robot_pose:
    def __init__(self, position, velocity):
        self.position = position
        self.velocity = velocity




def distance_from_point_to_segment(p, segment):
    #Vector representing x axis
    x_axis = Vector(1,0)

    vector_p        = Vector(p.x-segment.p0.x, p.y-segment.p0.y)
    vector_segment  = Vector(segment.p1.x-segment.p0.x, segment.p1.y-segment.p0.y)

    angle_between_x_axis_and_segment = x_axis.signed_angle_between(vector_segment)

    rotated_vector_p        = vector_p.rotate_by(-angle_between_x_axis_and_segment)
    rotated_vector_segment  = vector_segment.rotate_by(-angle_between_x_axis_and_segment)

    is_corner_case = False
    closest_point  = None

    if rotated_vector_p.x <= rotated_vector_segment.x and rotated_vector_p.x >= 0.0:
        distance_to_segment = Vector(0,rotated_vector_p.y).get_norm()
    else:
        distance_to_p0      = vector_p.get_norm()
        distance_to_p1      = Vector(p.x-segment.p1.x, p.y-segment.p1.y).get_norm()

        if distance_to_p0 < distance_to_p1:
            distance_to_segment = distance_to_p0
            closest_point       = segment.p0
        else:
            distance_to_segment = distance_to_p1
            closest_point       = segment.p1

        is_corner_case      = True
    
    return distance_to_segment, is_corner_case, closest_point

def get_possible_initial_velocities(number_of_possible_initial_velocities):
    robot_possible_initial_velocities = []

    velocity = Vector( robot_velocity_px_s, 0 ) 
    angle_between_possible_initial_velocities = 2*math.pi/number_of_possible_initial_velocities

    for i in range(0, number_of_possible_initial_velocities):
        robot_possible_initial_velocities.append(velocity)
        velocity = velocity.rotate_by(angle_between_possible_initial_velocities)

    return robot_possible_initial_velocities





class Swept_area_handler:
    def __init__(self, distance_between_points_px, points_to_sweep):
        self.distance_between_points_px = distance_between_points_px
        self.occupation_grid_rows       = 0
        self.occupation_grid_cols       = 0
        self.occupation_grid            = self.create_occupation_grid()
        self.swept_points               = 0
        self.points_to_sweep            = points_to_sweep
        self.swept_area                 = 0

    def create_occupation_grid(self):
        occupation_grid = []
        rows = math.ceil(top_width / self.distance_between_points_px.x)
        cols = math.ceil(top_height / self.distance_between_points_px.y)
        
        for r in range(rows):
            occupation_grid.append([])

        for row in occupation_grid:
            for c in range(cols):
                row.append(0) 

        self.occupation_grid_rows = rows
        self.occupation_grid_cols = cols
        return occupation_grid

    def check_if_sweepable(self, x, y):
        return (x < self.occupation_grid_rows and y < self.occupation_grid_cols and self.occupation_grid[x][y] == 0)

    def add_swept_area(self, robot_pose, GUI_flag):

        position = robot_pose.position

        initial = Point( math.floor( (position.x-robot_radius_px) / self.distance_between_points_px.x), math.floor( (position.y-robot_radius_px) / self.distance_between_points_px.y))
        final   = Point( math.ceil ( (position.x+robot_radius_px) / self.distance_between_points_px.x), math.ceil ( (position.y+robot_radius_px) / self.distance_between_points_px.y))

        for x in range(initial.x, final.x+1):
            for y in range(initial.y, final.y+1):
                if self.check_if_sweepable(x,y):
                    p = Point( x * self.distance_between_points_px.x, y * self.distance_between_points_px.y )
                    vector_p = Vector( p.x - position.x, p.y - position.y )

                    if vector_p.get_norm() > robot_radius_px:
                        continue

                    self.occupation_grid[x][y] = 1
                    self.swept_points += 1

                    if GUI_flag:
                        C.create_oval(p.x, p.y, p.x, p.y, width = 0, fill = 'green')

        self.swept_area = self.swept_points/self.points_to_sweep

        if GUI_flag:
            C.itemconfig(number_id, text = str(round(self.swept_area*100.0,2))+"%")

class Move_robot_handler:
    def __init__(self, robot_pose, robot_gui_id, GUI_flag, polygon, unoccupied_grid_pointset, dt_s):
        self.robot_pose                 = robot_pose
        self.robot_gui_id               = robot_gui_id
        self.GUI_flag                   = GUI_flag
        self.polygon                    = polygon
        self.unoccupied_grid_pointset   = unoccupied_grid_pointset
        self.swept_area_handler         = Swept_area_handler(Point(x_distance_between_points_px, y_distance_between_points_px), len(self.unoccupied_grid_pointset))
        self.dt_s                       = dt_s

        self.swept_area_handler.add_swept_area(self.robot_pose, self.GUI_flag) 
    
    def move_robot(self):

        dt_s     = self.dt_s
        position = self.robot_pose.position
        velocity = self.robot_pose.velocity

        position = Point( position.x + velocity.x*dt_s, position.y + velocity.y*dt_s )

        shortest_distance    = 1e9
        closest_segment      = None
        is_corner_case_flag  = False
        closest_point_in_corner_case = None

        #Vector representing x axis
        x_axis = Vector(1,0)

        for segment in polygon.segmentset:
            distance_to_segment, is_corner_case, closest_point = distance_from_point_to_segment( position, segment )

            if distance_to_segment < shortest_distance:
                shortest_distance            = distance_to_segment
                closest_segment              = segment
                is_corner_case_flag          = is_corner_case
                closest_point_in_corner_case = closest_point      

        if shortest_distance < robot_radius_px:

            #Position correction to prevent interleaving of robot and segment
            delta_distance = robot_radius_px - shortest_distance
            corrected_dt_s = delta_distance / velocity.get_norm()
            position = Point( position.x + velocity.x*(-corrected_dt_s), position.y + velocity.y*(-corrected_dt_s) )

            if not is_corner_case_flag:

                vector_segment  = Vector(closest_segment.p1.x-closest_segment.p0.x, closest_segment.p1.y-closest_segment.p0.y)

                angle_between_x_axis_and_segment = x_axis.signed_angle_between(vector_segment)
                
                rotated_velocity_vector = velocity.rotate_by(-angle_between_x_axis_and_segment)

                #Change direction of velocity vector
                rotated_velocity_vector.y *= -1
                velocity = rotated_velocity_vector.rotate_by(angle_between_x_axis_and_segment)

            else:

                vector_corner = Vector(closest_point_in_corner_case.x - position.x, closest_point_in_corner_case.y - position.y)
                angle_between_corner_and_velocity = velocity.signed_angle_between(vector_corner)
                coeff = 1.0 - math.fabs(angle_between_corner_and_velocity)/(math.pi/2)

                if angle_between_corner_and_velocity > 0.0:
                    rotated_velocity_vector = velocity.rotate_by(-coeff*math.pi)
                else:
                    rotated_velocity_vector = velocity.rotate_by(coeff*math.pi)
                velocity = rotated_velocity_vector

            #position = Point( position.x + velocity.x*dt_s, position.y + velocity.y*dt_s)

        self.swept_area_handler.add_swept_area(self.robot_pose, self.GUI_flag)

        #GUI simulation of robot move
        if self.GUI_flag:
            C.coords(self.robot_gui_id, position.x-robot_diamater_px/2, position.y-robot_diamater_px/2, position.x+robot_diamater_px/2, position.y+robot_diamater_px/2)

        if self.GUI_flag:
            top.after(round(1000*dt_s), self.move_robot)
            #move_robot_func_call = partial(self.move_robot)
            #move_robot_func_call.__name__ = "move_robot_func_call"
            
        self.robot_pose = Robot_pose(position, velocity)




top = tkinter.Tk()
top.title("Ejercicio 1.12")


C = tkinter.Canvas(top, bg = "white", width = top_width, height = top_height)
C.pack()

filename    = tkinter.PhotoImage(file = "map.PNG")
image       = C.create_image(top_x_center, top_y_center, image = filename)


#---------------------------Map Characterization----------------------------------------------#
#Create and display a polygon that encloses unoccupied space in the map
polygon = Polygon()
polygon.get_pointset_from_file(pointset_filename)
polygon.display_in_canvas(C, "red", 1)

#print polygon segment set
polygon.get_segmentset()
for seg in polygon.segmentset:
    print(str(seg) + " length: " + str(round(seg.norm_in_mm())) + " mm")

print(top_width*top_height)

#---------------------------Unoccupied grid characterization----------------------------------#
unoccupied_grid_pointset = []

x_distance_between_points_px = 8
y_distance_between_points_px = 8

for x in range(0, top_width-1, x_distance_between_points_px):
    for y in range(0, top_height-1, y_distance_between_points_px):
        if polygon.point_inside_polygon(Point(x,y)):
            unoccupied_grid_pointset.append(Point(x,y))
'''
for p in unoccupied_grid_pointset:
    C.create_oval(p.x, p.y, p.x, p.y, width = 0, fill = 'blue')
'''

print("points inside polygon: "+str(len(unoccupied_grid_pointset)))

#---------------------------Robot possible initial position characterization------------------#

robot_position_grid = []

for x in range(0, top_width-1, 45):
    for y in range(0, top_height-1, 45):
        if polygon.point_inside_polygon(Point(x,y)):
            robot_position_grid.append(Point(x,y))

'''
for p in robot_position_grid:
    C.create_oval(p.x, p.y, p.x, p.y, width = 0, fill = 'blue')
'''

robot_possible_initial_positions = []
#idx = 0
for p in robot_position_grid:

    shortest_distance = 1e9
    for segment in polygon.segmentset:
        
        distance_to_segment, is_corner_case, closest_point = distance_from_point_to_segment(p, segment)
        shortest_distance                   = min( distance_to_segment, shortest_distance )
    #print(str(idx)+" "+str(shortest_distance))
    #idx += 1
    if shortest_distance >= robot_radius_px :
        robot_possible_initial_positions.append(p)

print("robot initial positions: "+str(len(robot_possible_initial_positions)))

for p in robot_possible_initial_positions:
    C.create_oval(p.x, p.y, p.x, p.y, width = 0, fill = 'blue')

'''
p = robot_possible_initial_positions[51]
C.create_oval(p.x, p.y, p.x, p.y, width = 0, fill = 'red')
'''

#---------------------------Initial velocities characterization-------------------------------#
robot_possible_initial_velocities = get_possible_initial_velocities(number_of_possible_initial_velocities)
for velocity in robot_possible_initial_velocities:
    print(velocity)

#Create text
C.create_text(top_width * 0.9,
              top_height * 0.9,
              text="Area swept: ")
number_id = C.create_text(top_width * 0.95,
              top_height * 0.9,
              text="0.0 %")



#C.pack()

#robot_position = robot_possible_initial_positions[3050]
#robot_position = robot_possible_initial_positions[0]
#robot_velocity = robot_possible_initial_velocities[0] 
#robot_pose     = Robot_pose(robot_position, robot_velocity)

  

dt_s = 0.05
simulation_time_s = 300
simulation_robot_moves = math.ceil(simulation_time_s/dt_s)

robot_position = Vector(720, 225)
robot_velocity = Vector(28.57142857142858, 49.48716593053935)

robot_id = C.create_oval(robot_position.x-robot_diamater_px/2, robot_position.y-robot_diamater_px/2, robot_position.x+robot_diamater_px/2, robot_position.y+robot_diamater_px/2, width = 1, fill = 'green')
move_robot = Move_robot_handler(Robot_pose(robot_position, robot_velocity), robot_id, True, polygon, unoccupied_grid_pointset, dt_s)
move_robot.move_robot()

#move_robot = Move_robot_handler(Robot_pose(robot_position, robot_velocity), None, False, polygon, unoccupied_grid_pointset, dt_s)

#for i in range(simulation_robot_moves):
#    move_robot.move_robot()

#print("final swept area: "+str(move_robot.swept_area_handler.swept_area))

'''
biggest_area_swept = 0
best_initial_position = None
best_initial_velocity = None

sum_of_swept_areas = 0
cont = 0
for initial_position in robot_possible_initial_positions:
    for initial_velocity in robot_possible_initial_velocities:
        move_robot = Move_robot_handler(Robot_pose(initial_position, initial_velocity), None, False, polygon, unoccupied_grid_pointset, dt_s)
        for move in range(simulation_robot_moves):
            move_robot.move_robot()

        if move_robot.swept_area_handler.swept_area > biggest_area_swept:
            best_initial_position   = initial_position
            best_initial_velocity   = initial_velocity
            biggest_area_swept      = move_robot.swept_area_handler.swept_area
        cont += 1
        sum_of_swept_areas += move_robot.swept_area_handler.swept_area
        print(cont)
        print(move_robot.swept_area_handler.swept_area)
print("process ended: ")
print("biggest area swept "+str(biggest_area_swept))
print("initial position "+str(best_initial_position))
print("initial velocity "+str(best_initial_velocity))
print("swept area mean "+str(sum_of_swept_areas/(len(robot_possible_initial_positions)*len(robot_possible_initial_velocities))))
'''


top.mainloop()
