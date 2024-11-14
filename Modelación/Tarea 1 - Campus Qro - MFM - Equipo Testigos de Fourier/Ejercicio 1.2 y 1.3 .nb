(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 12.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[     82973,       2387]
NotebookOptionsPosition[     70541,       2190]
NotebookOutlinePosition[     70884,       2205]
CellTagsIndexPosition[     70841,       2202]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["\<\
Definimos los vectores
\
\>", "Text",
 CellChangeTimes->{{3.7917632281055136`*^9, 
  3.7917633203786354`*^9}},ExpressionUUID->"f8f8f804-b0a0-467a-ba28-\
b5dc6f93a238"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"p", "=", 
  RowBox[{"{", 
   RowBox[{"5", ",", " ", "11", ",", " ", "17", ",", " ", "23"}], 
   "}"}]}], "\[IndentingNewLine]", 
 RowBox[{"q", "=", 
  RowBox[{"{", 
   RowBox[{"33", ",", "30", ",", "27", ",", "24"}], 
   "}"}]}], "\[IndentingNewLine]", 
 RowBox[{"r", "=", 
  RowBox[{"{", 
   RowBox[{"1", ",", 
    RowBox[{"-", "3"}], ",", 
    RowBox[{"-", "7"}], ",", 
    RowBox[{"-", "11"}]}], "}"}]}], "\[IndentingNewLine]", 
 RowBox[{"u", "=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"2", "*", "Pi"}], ",", "a", ",", 
    RowBox[{"7", "c"}], ",", "1"}], "}"}]}], "\[IndentingNewLine]", 
 RowBox[{"v", "=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"b", "^", "2"}], ",", 
    RowBox[{"a", "^", 
     RowBox[{"(", 
      RowBox[{"1", "/", "2"}], ")"}]}], ",", 
    RowBox[{"8", 
     RowBox[{"(", 
      RowBox[{"b", "-", "a"}], ")"}]}], ",", 
    RowBox[{"4", 
     RowBox[{"Sin", "[", 
      RowBox[{"2", 
       RowBox[{"Pi", "/", "7"}]}], "]"}]}]}], "}"}]}], "\[IndentingNewLine]", 
 RowBox[{"w", "=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"3", 
     RowBox[{"c", "/", 
      RowBox[{"(", 
       RowBox[{"7", "b"}], ")"}]}]}], ",", 
    RowBox[{"2", "/", 
     RowBox[{"(", 
      RowBox[{"3", "a"}], ")"}]}], ",", 
    RowBox[{"15", "/", "13"}], ",", "1"}], 
   "}"}]}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.791763336851161*^9, 3.791763651687096*^9}},
 CellLabel->"In[3]:=",ExpressionUUID->"a528b342-985b-40cb-b378-db1a9e617db8"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"5", ",", "11", ",", "17", ",", "23"}], "}"}]], "Output",
 CellChangeTimes->{3.7917636549084773`*^9, 3.7920160808866386`*^9},
 CellLabel->"Out[3]=",ExpressionUUID->"2de95226-65c3-4c8e-881c-27ff545d534d"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"33", ",", "30", ",", "27", ",", "24"}], "}"}]], "Output",
 CellChangeTimes->{3.7917636549084773`*^9, 3.7920160808866386`*^9},
 CellLabel->"Out[4]=",ExpressionUUID->"cd72bb9c-5b21-44c4-a5aa-4a08f2b2c67d"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   RowBox[{"-", "3"}], ",", 
   RowBox[{"-", "7"}], ",", 
   RowBox[{"-", "11"}]}], "}"}]], "Output",
 CellChangeTimes->{3.7917636549084773`*^9, 3.792016080902299*^9},
 CellLabel->"Out[5]=",ExpressionUUID->"f9b1f671-1eca-4a99-be35-fb06192e4556"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"2", " ", "\[Pi]"}], ",", "a", ",", 
   RowBox[{"7", " ", "c"}], ",", "1"}], "}"}]], "Output",
 CellChangeTimes->{3.7917636549084773`*^9, 3.792016080902299*^9},
 CellLabel->"Out[6]=",ExpressionUUID->"89f74715-d701-49bc-9300-001af6cf40f5"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SuperscriptBox["b", "2"], ",", 
   SqrtBox["a"], ",", 
   RowBox[{"8", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "a"}], "+", "b"}], ")"}]}], ",", 
   RowBox[{"4", " ", 
    RowBox[{"Cos", "[", 
     FractionBox[
      RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.7917636549084773`*^9, 3.7920160809648023`*^9},
 CellLabel->"Out[7]=",ExpressionUUID->"f1f86022-2732-4970-b7b2-494cff6dad85"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox[
    RowBox[{"3", " ", "c"}], 
    RowBox[{"7", " ", "b"}]], ",", 
   FractionBox["2", 
    RowBox[{"3", " ", "a"}]], ",", 
   FractionBox["15", "13"], ",", "1"}], "}"}]], "Output",
 CellChangeTimes->{3.7917636549084773`*^9, 3.7920160809648023`*^9},
 CellLabel->"Out[8]=",ExpressionUUID->"69b44c08-2cdc-4414-ac38-d2ccd63bc02b"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{
    FractionBox[
     RowBox[{"3", " ", "c"}], 
     RowBox[{"7", " ", "b"}]], ",", 
    FractionBox["2", 
     RowBox[{"3", " ", "a"}]], ",", 
    FractionBox["15", "13"], ",", "1"}], "}"}], 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.7917637005715375`*^9, 3.791763700615971*^9}},
 CellLabel->"In[9]:=",ExpressionUUID->"07af8b24-fb78-414b-8bc2-91e50fe4c5e3"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   FractionBox[
    RowBox[{"3", " ", "c"}], 
    RowBox[{"7", " ", "b"}]], ",", 
   FractionBox["2", 
    RowBox[{"3", " ", "a"}]], ",", 
   FractionBox["15", "13"], ",", "1"}], "}"}]], "Output",
 CellChangeTimes->{3.7920160811028123`*^9},
 CellLabel->"Out[9]=",ExpressionUUID->"e505ab3c-18c0-43b2-a074-dd70c8a37907"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"p", "+", "q"}], "//", "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.7917637157646737`*^9, 3.7917637335480175`*^9}, {
  3.7917637742047596`*^9, 3.7917637764210052`*^9}},
 CellLabel->"In[10]:=",ExpressionUUID->"3b0a2369-13f5-4f48-957c-f331df21811e"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {"38"},
      {"41"},
      {"44"},
      {"47"}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7920160812030573`*^9},
 CellLabel->
  "Out[10]//MatrixForm=",ExpressionUUID->"41f13cc4-31e5-481f-b569-\
59867769cc91"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {"38"},
      {"41"},
      {"44"},
      {"47"}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"q", "-", "p"}], "//", "MatrixForm"}]}], "Input",
 CellChangeTimes->{{3.791763900833315*^9, 3.791763900847804*^9}, {
  3.7917640016212387`*^9, 3.7917640221779747`*^9}},
 CellLabel->"In[11]:=",ExpressionUUID->"25f0926b-b598-416f-8886-22d6def6aaed"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"38", ",", "41", ",", "44", ",", "47"}], "}"}]], "Output",
 CellChangeTimes->{3.7917640242909527`*^9, 3.7920160812655745`*^9},
 CellLabel->"Out[11]=",ExpressionUUID->"30a15b28-ed50-4576-b3c5-ba461073c18f"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {"28"},
      {"19"},
      {"10"},
      {"1"}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7917640242909527`*^9, 3.7920160812655745`*^9},
 CellLabel->
  "Out[12]//MatrixForm=",ExpressionUUID->"eb8f1895-9fae-4869-84f7-\
0f767eb4325a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {"28"},
      {"19"},
      {"10"},
      {"1"}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"p", "+", "q", "-", "r"}], "//", "MatrixForm"}]}], "Input",
 CellChangeTimes->{{3.791764044566252*^9, 3.7917640687860627`*^9}},
 CellLabel->"In[13]:=",ExpressionUUID->"f8c80fc0-7455-43cc-9ae2-6971fed5f826"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"28", ",", "19", ",", "10", ",", "1"}], "}"}]], "Output",
 CellChangeTimes->{3.791764070341817*^9, 3.792016081303403*^9},
 CellLabel->"Out[13]=",ExpressionUUID->"5a3e25b0-1ec2-49e6-8543-c1832490ff50"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {"37"},
      {"44"},
      {"51"},
      {"58"}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.791764070341817*^9, 3.792016081318972*^9},
 CellLabel->
  "Out[14]//MatrixForm=",ExpressionUUID->"d445b4e4-d097-4582-acf4-\
a5f608708a4f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  TagBox[
   RowBox[{"(", "\[NoBreak]", 
    TagBox[GridBox[{
       {"37"},
       {"44"},
       {"51"},
       {"58"}
      },
      GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.5599999999999999]}, 
          Offset[0.27999999999999997`]}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}}],
     Column], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"\[Alpha]", "*", "p"}], "+", 
   RowBox[{"\[Gamma]", "*", "r"}]}], "//", "MatrixForm"}]}], "Input",
 CellChangeTimes->{{3.7917640782285013`*^9, 3.791764078248556*^9}, {
  3.791764179978823*^9, 3.791764228184514*^9}, {3.791764338444317*^9, 
  3.791764419295515*^9}, {3.791764494789934*^9, 3.7917644959549675`*^9}},
 CellLabel->"In[15]:=",ExpressionUUID->"94539bd3-3eea-4424-8db9-c864fd595a60"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"37", ",", "44", ",", "51", ",", "58"}], "}"}]], "Output",
 CellChangeTimes->{3.791764232806249*^9, 3.7917643925329733`*^9, 
  3.7920160813658347`*^9},
 CellLabel->"Out[15]=",ExpressionUUID->"2f2d8aa4-45d8-4636-ba4e-8c81ff041eca"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{"5", " ", "\[Alpha]"}], "+", "\[Gamma]"}]},
      {
       RowBox[{
        RowBox[{"11", " ", "\[Alpha]"}], "-", 
        RowBox[{"3", " ", "\[Gamma]"}]}]},
      {
       RowBox[{
        RowBox[{"17", " ", "\[Alpha]"}], "-", 
        RowBox[{"7", " ", "\[Gamma]"}]}]},
      {
       RowBox[{
        RowBox[{"23", " ", "\[Alpha]"}], "-", 
        RowBox[{"11", " ", "\[Gamma]"}]}]}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.791764232806249*^9, 3.7917643925329733`*^9, 
  3.7920160813658347`*^9},
 CellLabel->
  "Out[16]//MatrixForm=",ExpressionUUID->"7eb8a8e3-7f44-47f7-b797-\
a72bde9b2277"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{"5", " ", "\[Alpha]"}], "+", "\[Gamma]"}]},
      {
       RowBox[{
        RowBox[{"11", " ", "\[Alpha]"}], "-", 
        RowBox[{"3", " ", "\[Gamma]"}]}]},
      {
       RowBox[{
        RowBox[{"17", " ", "\[Alpha]"}], "-", 
        RowBox[{"7", " ", "\[Gamma]"}]}]},
      {
       RowBox[{
        RowBox[{"23", " ", "\[Alpha]"}], "-", 
        RowBox[{"11", " ", "\[Gamma]"}]}]}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"u", "-", "v"}], "//", "MatrixForm"}]}], "Input",
 CellChangeTimes->{{3.7917644088482714`*^9, 3.791764408853857*^9}, {
  3.7917644491777077`*^9, 3.7917644560802402`*^9}},
 CellLabel->"In[17]:=",ExpressionUUID->"43690537-d5dd-4caf-9029-54b4c8173c6f"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"5", " ", "\[Alpha]"}], "+", "\[Gamma]"}], ",", 
   RowBox[{
    RowBox[{"11", " ", "\[Alpha]"}], "-", 
    RowBox[{"3", " ", "\[Gamma]"}]}], ",", 
   RowBox[{
    RowBox[{"17", " ", "\[Alpha]"}], "-", 
    RowBox[{"7", " ", "\[Gamma]"}]}], ",", 
   RowBox[{
    RowBox[{"23", " ", "\[Alpha]"}], "-", 
    RowBox[{"11", " ", "\[Gamma]"}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.791764232806249*^9, 3.79176439254499*^9, 
  3.791764457739849*^9, 3.792016081419265*^9},
 CellLabel->"Out[17]=",ExpressionUUID->"bec7672d-3baf-4a03-864b-6a25cbe03057"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox["b", "2"]}], "+", 
        RowBox[{"2", " ", "\[Pi]"}]}]},
      {
       RowBox[{
        RowBox[{"-", 
         SqrtBox["a"]}], "+", "a"}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "8"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "a"}], "+", "b"}], ")"}]}], "+", 
        RowBox[{"7", " ", "c"}]}]},
      {
       RowBox[{"1", "-", 
        RowBox[{"4", " ", 
         RowBox[{"Cos", "[", 
          FractionBox[
           RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}]}]}]}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.791764232806249*^9, 3.79176439254499*^9, 
  3.791764457739849*^9, 3.792016081419265*^9},
 CellLabel->
  "Out[18]//MatrixForm=",ExpressionUUID->"db16944d-ca03-4fda-9ea8-\
b23dc1c46814"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox["b", "2"]}], "+", 
        RowBox[{"2", " ", "\[Pi]"}]}]},
      {
       RowBox[{
        RowBox[{"-", 
         SqrtBox["a"]}], "+", "a"}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "8"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "a"}], "+", "b"}], ")"}]}], "+", 
        RowBox[{"7", " ", "c"}]}]},
      {
       RowBox[{"1", "-", 
        RowBox[{"4", " ", 
         RowBox[{"Cos", "[", 
          FractionBox[
           RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}]}]}]}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"\[Alpha]", "*", "w"}], "-", 
   RowBox[{"3", "u"}]}], "//", "MatrixForm"}]}], "Input",
 CellChangeTimes->{{3.791764463724194*^9, 3.7917644756532135`*^9}},
 CellLabel->"In[19]:=",ExpressionUUID->"db0ae277-6ae5-44aa-872a-2d648552bde9"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     SuperscriptBox["b", "2"]}], "+", 
    RowBox[{"2", " ", "\[Pi]"}]}], ",", 
   RowBox[{
    RowBox[{"-", 
     SqrtBox["a"]}], "+", "a"}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "8"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "a"}], "+", "b"}], ")"}]}], "+", 
    RowBox[{"7", " ", "c"}]}], ",", 
   RowBox[{"1", "-", 
    RowBox[{"4", " ", 
     RowBox[{"Cos", "[", 
      FractionBox[
       RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}]}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.791764483742733*^9, 3.792016081488221*^9},
 CellLabel->"Out[19]=",ExpressionUUID->"3b368ae3-ec2f-42aa-b10f-487cc6ca0c6a"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "6"}], " ", "\[Pi]"}], "+", 
        FractionBox[
         RowBox[{"3", " ", "c", " ", "\[Alpha]"}], 
         RowBox[{"7", " ", "b"}]]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "3"}], " ", "a"}], "+", 
        FractionBox[
         RowBox[{"2", " ", "\[Alpha]"}], 
         RowBox[{"3", " ", "a"}]]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "21"}], " ", "c"}], "+", 
        FractionBox[
         RowBox[{"15", " ", "\[Alpha]"}], "13"]}]},
      {
       RowBox[{
        RowBox[{"-", "3"}], "+", "\[Alpha]"}]}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.791764483742733*^9, 3.792016081488221*^9},
 CellLabel->
  "Out[20]//MatrixForm=",ExpressionUUID->"0b443fb9-67e2-4cb0-883b-\
f57a0a1bf3a6"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "6"}], " ", "\[Pi]"}], "+", 
        FractionBox[
         RowBox[{"3", " ", "c", " ", "\[Alpha]"}], 
         RowBox[{"7", " ", "b"}]]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "3"}], " ", "a"}], "+", 
        FractionBox[
         RowBox[{"2", " ", "\[Alpha]"}], 
         RowBox[{"3", " ", "a"}]]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "21"}], " ", "c"}], "+", 
        FractionBox[
         RowBox[{"15", " ", "\[Alpha]"}], "13"]}]},
      {
       RowBox[{
        RowBox[{"-", "3"}], "+", "\[Alpha]"}]}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"v", "/", "2"}], "-", 
   RowBox[{"\[Beta]", "*", "q"}]}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.7917644883079405`*^9, 3.79176448832868*^9}, {
  3.7917645203765745`*^9, 3.7917645553821163`*^9}},
 CellLabel->"In[21]:=",ExpressionUUID->"01726034-a537-45d1-977f-507fb61308db"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"-", "6"}], " ", "\[Pi]"}], "+", 
    FractionBox[
     RowBox[{"3", " ", "c", " ", "\[Alpha]"}], 
     RowBox[{"7", " ", "b"}]]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "3"}], " ", "a"}], "+", 
    FractionBox[
     RowBox[{"2", " ", "\[Alpha]"}], 
     RowBox[{"3", " ", "a"}]]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "21"}], " ", "c"}], "+", 
    FractionBox[
     RowBox[{"15", " ", "\[Alpha]"}], "13"]}], ",", 
   RowBox[{
    RowBox[{"-", "3"}], "+", "\[Alpha]"}]}], "}"}]], "Output",
 CellChangeTimes->{3.7917645584982367`*^9, 3.792016081535144*^9},
 CellLabel->"Out[21]=",ExpressionUUID->"f9c9e1e0-23f7-4e06-91c0-da5afd717917"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        FractionBox[
         SuperscriptBox["b", "2"], "2"], "-", 
        RowBox[{"33", " ", "\[Beta]"}]}]},
      {
       RowBox[{
        FractionBox[
         SqrtBox["a"], "2"], "-", 
        RowBox[{"30", " ", "\[Beta]"}]}]},
      {
       RowBox[{
        RowBox[{"4", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "a"}], "+", "b"}], ")"}]}], "-", 
        RowBox[{"27", " ", "\[Beta]"}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "24"}], " ", "\[Beta]"}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Cos", "[", 
          FractionBox[
           RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}]}]}]}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7917645584982367`*^9, 3.792016081550712*^9},
 CellLabel->
  "Out[22]//MatrixForm=",ExpressionUUID->"a20578bc-3374-4ece-b217-\
cf8f7b7c54c0"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        FractionBox[
         SuperscriptBox["b", "2"], "2"], "-", 
        RowBox[{"33", " ", "\[Beta]"}]}]},
      {
       RowBox[{
        FractionBox[
         SqrtBox["a"], "2"], "-", 
        RowBox[{"30", " ", "\[Beta]"}]}]},
      {
       RowBox[{
        RowBox[{"4", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "a"}], "+", "b"}], ")"}]}], "-", 
        RowBox[{"27", " ", "\[Beta]"}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "24"}], " ", "\[Beta]"}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Cos", "[", 
          FractionBox[
           RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}]}]}]}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"\[Alpha]", "*", "w"}], "\[Minus]", 
   RowBox[{"\[Beta]", "*", "v"}], "+", 
   RowBox[{"\[Gamma]", "*", "u"}]}], "//", "MatrixForm"}]}], "Input",
 CellChangeTimes->{{3.7917645692041836`*^9, 3.7917646004458055`*^9}},
 CellLabel->"In[23]:=",ExpressionUUID->"08869cc8-eb20-4bff-8967-c41a6e6114a9"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    FractionBox[
     SuperscriptBox["b", "2"], "2"], "-", 
    RowBox[{"33", " ", "\[Beta]"}]}], ",", 
   RowBox[{
    FractionBox[
     SqrtBox["a"], "2"], "-", 
    RowBox[{"30", " ", "\[Beta]"}]}], ",", 
   RowBox[{
    RowBox[{"4", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "a"}], "+", "b"}], ")"}]}], "-", 
    RowBox[{"27", " ", "\[Beta]"}]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "24"}], " ", "\[Beta]"}], "+", 
    RowBox[{"2", " ", 
     RowBox[{"Cos", "[", 
      FractionBox[
       RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}]}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.7917646021851873`*^9, 3.7920160816041408`*^9},
 CellLabel->"Out[23]=",ExpressionUUID->"88648a11-b8bf-44a0-9a83-e412b304e8d7"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        FractionBox[
         RowBox[{"3", " ", "c", " ", "\[Alpha]"}], 
         RowBox[{"7", " ", "b"}]], "-", 
        RowBox[{
         SuperscriptBox["b", "2"], " ", "\[Beta]"}], "+", 
        RowBox[{"2", " ", "\[Pi]", " ", "\[Gamma]"}]}]},
      {
       RowBox[{
        FractionBox[
         RowBox[{"2", " ", "\[Alpha]"}], 
         RowBox[{"3", " ", "a"}]], "-", 
        RowBox[{
         SqrtBox["a"], " ", "\[Beta]"}], "+", 
        RowBox[{"a", " ", "\[Gamma]"}]}]},
      {
       RowBox[{
        FractionBox[
         RowBox[{"15", " ", "\[Alpha]"}], "13"], "-", 
        RowBox[{"8", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "a"}], "+", "b"}], ")"}], " ", "\[Beta]"}], "+", 
        RowBox[{"7", " ", "c", " ", "\[Gamma]"}]}]},
      {
       RowBox[{"\[Alpha]", "+", "\[Gamma]", "-", 
        RowBox[{"4", " ", "\[Beta]", " ", 
         RowBox[{"Cos", "[", 
          FractionBox[
           RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}]}]}]}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7917646021851873`*^9, 3.7920160816041408`*^9},
 CellLabel->
  "Out[24]//MatrixForm=",ExpressionUUID->"d1a9c1a1-f258-41ac-9252-\
7ec7484b61e2"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        FractionBox[
         RowBox[{"3", " ", "c", " ", "\[Alpha]"}], 
         RowBox[{"7", " ", "b"}]], "-", 
        RowBox[{
         SuperscriptBox["b", "2"], " ", "\[Beta]"}], "+", 
        RowBox[{"2", " ", "\[Pi]", " ", "\[Gamma]"}]}]},
      {
       RowBox[{
        FractionBox[
         RowBox[{"2", " ", "\[Alpha]"}], 
         RowBox[{"3", " ", "a"}]], "-", 
        RowBox[{
         SqrtBox["a"], " ", "\[Beta]"}], "+", 
        RowBox[{"a", " ", "\[Gamma]"}]}]},
      {
       RowBox[{
        FractionBox[
         RowBox[{"15", " ", "\[Alpha]"}], "13"], "-", 
        RowBox[{"8", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "a"}], "+", "b"}], ")"}], " ", "\[Beta]"}], "+", 
        RowBox[{"7", " ", "c", " ", "\[Gamma]"}]}]},
      {
       RowBox[{"\[Alpha]", "+", "\[Gamma]", "-", 
        RowBox[{"4", " ", "\[Beta]", " ", 
         RowBox[{"Cos", "[", 
          FractionBox[
           RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}]}]}]}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Input",
 CellChangeTimes->{{3.791764904461212*^9, 3.7917649044858212`*^9}, {
   3.7917650919436316`*^9, 3.7917651513068027`*^9}, 3.791765329471369*^9, {
   3.7917653942582064`*^9, 3.7917653949732523`*^9}},
 CellLabel->"In[25]:=",ExpressionUUID->"e9c2fd18-0694-4fb1-8a9e-6b0be4e2cbae"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    FractionBox[
     RowBox[{"3", " ", "c", " ", "\[Alpha]"}], 
     RowBox[{"7", " ", "b"}]], "-", 
    RowBox[{
     SuperscriptBox["b", "2"], " ", "\[Beta]"}], "+", 
    RowBox[{"2", " ", "\[Pi]", " ", "\[Gamma]"}]}], ",", 
   RowBox[{
    FractionBox[
     RowBox[{"2", " ", "\[Alpha]"}], 
     RowBox[{"3", " ", "a"}]], "-", 
    RowBox[{
     SqrtBox["a"], " ", "\[Beta]"}], "+", 
    RowBox[{"a", " ", "\[Gamma]"}]}], ",", 
   RowBox[{
    FractionBox[
     RowBox[{"15", " ", "\[Alpha]"}], "13"], "-", 
    RowBox[{"8", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "a"}], "+", "b"}], ")"}], " ", "\[Beta]"}], "+", 
    RowBox[{"7", " ", "c", " ", "\[Gamma]"}]}], ",", 
   RowBox[{"\[Alpha]", "+", "\[Gamma]", "-", 
    RowBox[{"4", " ", "\[Beta]", " ", 
     RowBox[{"Cos", "[", 
      FractionBox[
       RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}]}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.7920160816509495`*^9},
 CellLabel->"Out[25]=",ExpressionUUID->"fe6088e4-472e-47e6-9846-895d4b74367a"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917653814392858`*^9, 3.791765391954066*^9}},
 CellLabel->"In[26]:=",ExpressionUUID->"7cb06486-8e08-447e-a0c1-4a3eb6a1e64e"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917653449481373`*^9, 3.7917653457835803`*^9}},
 CellLabel->"In[27]:=",ExpressionUUID->"6f6f7eff-cba2-4e1d-bf77-f87ddda86e8a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Dot", " ", "[", 
  RowBox[{"p", ",", "q"}], "]"}]], "Input",
 CellLabel->"In[28]:=",ExpressionUUID->"24d7e30d-0b27-40a2-b7c7-8d6d23b04d98"],

Cell[BoxData["1506"], "Output",
 CellChangeTimes->{3.7917653519206867`*^9, 3.7920160817890697`*^9},
 CellLabel->"Out[28]=",ExpressionUUID->"5ebca8b1-c46d-442c-96c6-69b780bf8051"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Norm", "[", "r", "]"}]], "Input",
 CellChangeTimes->{{3.7917654620238113`*^9, 3.7917654711088*^9}},
 CellLabel->"In[29]:=",ExpressionUUID->"726fd8b2-4084-47d7-83f7-24ad607bce3e"],

Cell[BoxData[
 RowBox[{"6", " ", 
  SqrtBox["5"]}]], "Output",
 CellChangeTimes->{3.792016081882806*^9},
 CellLabel->"Out[29]=",ExpressionUUID->"17c54480-dc5e-4479-93b3-4764abae55ea"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"6", " ", 
  SqrtBox["5"]}], "\[IndentingNewLine]", 
 RowBox[{"Norm", "[", 
  RowBox[{"Pi", "*", "p"}], "]"}]}], "Input",
 CellChangeTimes->{{3.7917654902025957`*^9, 3.7917655105025134`*^9}, {
  3.7917655582205944`*^9, 3.7917655766745453`*^9}},
 CellLabel->"In[30]:=",ExpressionUUID->"1a0829db-8954-4fdd-ab59-e9a8f20dc7ac"],

Cell[BoxData[
 RowBox[{"6", " ", 
  SqrtBox["5"]}]], "Output",
 CellChangeTimes->{3.7920160819206553`*^9},
 CellLabel->"Out[30]=",ExpressionUUID->"0e62c451-0622-4d6c-9c0c-662b8c0481fb"],

Cell[BoxData[
 RowBox[{"2", " ", 
  SqrtBox["241"], " ", "\[Pi]"}]], "Output",
 CellChangeTimes->{3.792016081936278*^9},
 CellLabel->"Out[31]=",ExpressionUUID->"f6f67c28-f070-4509-9cbc-84097f400b2b"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917655716563644`*^9, 3.791765573141919*^9}},
 CellLabel->"In[32]:=",ExpressionUUID->"333a22c5-f89b-4aaf-9048-8cfdeef3122a"],

Cell[BoxData[
 RowBox[{"2", " ", 
  SqrtBox["241"], " ", "\[Pi]"}]], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.791765568400713*^9, {3.791765806316228*^9, 
   3.791765808112835*^9}},ExpressionUUID->"d8d8ff5c-b90b-4edb-ab4c-\
e18f9a28a9cb"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917655165466156`*^9, 3.791765519750021*^9}},
 CellLabel->"In[33]:=",ExpressionUUID->"00aa2820-63ba-49b3-8152-558fa23214c6"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917656090473833`*^9, 3.7917656278399715`*^9}, {
  3.7917658019191127`*^9, 3.791765803760807*^9}},
 CellLabel->"In[34]:=",ExpressionUUID->"53e5224f-e39f-41b9-b5d1-a67bb36cdccd"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.791765794737032*^9, 3.791765813632145*^9}},
 CellLabel->"In[35]:=",ExpressionUUID->"70daede2-2444-4a24-8306-18b1fa5f5a39"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Dot", "[", 
   RowBox[{"v", ",", "v"}], "]"}], "-", 
  RowBox[{"Norm", "[", 
   RowBox[{"v", ",", "2"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.791765699421057*^9, 3.791765737453306*^9}},
 CellLabel->"In[36]:=",ExpressionUUID->"6aa2d465-3d08-4be2-aa3f-a6dcafc1d5a6"],

Cell[BoxData[
 RowBox[{"a", "+", 
  SuperscriptBox["b", "4"], "+", 
  RowBox[{"64", " ", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "a"}], "+", "b"}], ")"}], "2"]}], "+", 
  RowBox[{"16", " ", 
   SuperscriptBox[
    RowBox[{"Cos", "[", 
     FractionBox[
      RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}], "2"]}], "-", 
  SqrtBox[
   RowBox[{
    RowBox[{"Abs", "[", "a", "]"}], "+", 
    SuperscriptBox[
     RowBox[{"Abs", "[", "b", "]"}], "4"], "+", 
    RowBox[{"64", " ", 
     SuperscriptBox[
      RowBox[{"Abs", "[", 
       RowBox[{
        RowBox[{"-", "a"}], "+", "b"}], "]"}], "2"]}], "+", 
    RowBox[{"16", " ", 
     SuperscriptBox[
      RowBox[{"Cos", "[", 
       FractionBox[
        RowBox[{"3", " ", "\[Pi]"}], "14"], "]"}], "2"]}]}]]}]], "Output",
 CellChangeTimes->{3.791765755971978*^9, 3.792016082168167*^9},
 CellLabel->"Out[36]=",ExpressionUUID->"eaa89a6f-8e17-4790-bc50-ba1d52701206"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Norm", "[", 
  RowBox[{
   RowBox[{"u", "+", "r"}], ",", "1"}], "]"}]], "Input",
 CellChangeTimes->{{3.7917658289293966`*^9, 3.791765829278475*^9}, {
  3.7917659545188866`*^9, 3.7917659557883034`*^9}, {3.7917660396285114`*^9, 
  3.79176604034435*^9}},
 CellLabel->
  "In[113]:=",ExpressionUUID->"469a260f-1770-42d5-884a-ebd822533980"],

Cell[BoxData[
 RowBox[{"11", "+", 
  RowBox[{"2", " ", "\[Pi]"}], "+", 
  RowBox[{"Abs", "[", 
   RowBox[{
    RowBox[{"-", "3"}], "+", "a"}], "]"}], "+", 
  RowBox[{"Abs", "[", 
   RowBox[{
    RowBox[{"-", "7"}], "+", 
    RowBox[{"7", " ", "c"}]}], "]"}]}]], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.791765958194181*^9, {3.791766044371722*^9, 3.791766053484969*^9}, 
   3.792016082221554*^9, 3.792017030307308*^9},
 CellLabel->
  "Out[113]=",ExpressionUUID->"0be841e3-c77b-40aa-8ab2-bc057d09dd65"],

Cell[BoxData[
 RowBox[{"11", "+", 
  RowBox[{"2", " ", "\[Pi]"}], "+", 
  RowBox[{"Abs", "[", 
   RowBox[{
    RowBox[{"-", "3"}], "+", "a"}], "]"}], "+", 
  RowBox[{"Abs", "[", 
   RowBox[{
    RowBox[{"-", "7"}], "+", 
    RowBox[{"7", " ", "c"}]}], "]"}]}]], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.791765958194181*^9, {3.791766044371722*^9, 3.791766053484969*^9}, 
   3.792016082221554*^9},
 CellLabel->"Out[37]=",ExpressionUUID->"c14fac97-d5d5-470c-9d04-fee64da228a5"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.792017045415444*^9, 
  3.792017047772113*^9}},ExpressionUUID->"6b8c2c86-a5be-4d40-9c57-\
7adb79052291"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.791765946678317*^9, 3.7917659467053986`*^9}, {
  3.791765988381676*^9, 3.7917659890287066`*^9}},
 CellLabel->"In[38]:=",ExpressionUUID->"c1ac1e61-6f74-4d39-a68e-706248a07e46"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.79176592881896*^9, 3.791765928837726*^9}},
 CellLabel->"In[39]:=",ExpressionUUID->"3ca91742-290a-44ea-9acb-49f282eb99ad"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{3.791765842124048*^9, 3.791765985673973*^9},
 CellLabel->"In[40]:=",ExpressionUUID->"169bec30-1454-4821-a60c-f38f59b5eec3"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Norm", "[", 
  RowBox[{
   RowBox[{"u", "+", "r"}], ",", "2"}], "]"}]], "Input",
 CellLabel->"In[41]:=",ExpressionUUID->"50ab24c9-03e3-4c42-999d-92ac26bfef3c"],

Cell[BoxData[
 SqrtBox[
  RowBox[{"100", "+", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", 
      RowBox[{"2", " ", "\[Pi]"}]}], ")"}], "2"], "+", 
   SuperscriptBox[
    RowBox[{"Abs", "[", 
     RowBox[{
      RowBox[{"-", "3"}], "+", "a"}], "]"}], "2"], "+", 
   SuperscriptBox[
    RowBox[{"Abs", "[", 
     RowBox[{
      RowBox[{"-", "7"}], "+", 
      RowBox[{"7", " ", "c"}]}], "]"}], "2"]}]]], "Output",
 CellChangeTimes->{3.7917658488443966`*^9, 3.7920160823062305`*^9},
 CellLabel->"Out[41]=",ExpressionUUID->"a0e5af33-8485-487c-ac60-2cf47219fe4f"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917658776131887`*^9, 3.791765878403333*^9}},
 CellLabel->"In[42]:=",ExpressionUUID->"6d6c355b-bd85-49e9-b44e-9f7ee7ad5447"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Norm", "[", 
  RowBox[{
   RowBox[{"u", "+", "r"}], ",", "3"}], "]"}]], "Input",
 CellChangeTimes->{{3.7917658848594575`*^9, 3.791765885655678*^9}},
 CellLabel->"In[43]:=",ExpressionUUID->"59a42bc6-2053-448e-afd5-57a597f24e3f"],

Cell[BoxData[
 SuperscriptBox[
  RowBox[{"(", 
   RowBox[{"1000", "+", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"1", "+", 
       RowBox[{"2", " ", "\[Pi]"}]}], ")"}], "3"], "+", 
    SuperscriptBox[
     RowBox[{"Abs", "[", 
      RowBox[{
       RowBox[{"-", "3"}], "+", "a"}], "]"}], "3"], "+", 
    SuperscriptBox[
     RowBox[{"Abs", "[", 
      RowBox[{
       RowBox[{"-", "7"}], "+", 
       RowBox[{"7", " ", "c"}]}], "]"}], "3"]}], ")"}], 
  RowBox[{"1", "/", "3"}]]], "Output",
 CellChangeTimes->{3.7917658932217956`*^9, 3.792016082368716*^9},
 CellLabel->"Out[43]=",ExpressionUUID->"3055c9f9-617a-4f42-bdd9-07eda1f4365a"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{3.791765860167199*^9},
 CellLabel->"In[44]:=",ExpressionUUID->"551fb05b-f271-4c7f-953c-7108aed4eb9f"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Cross", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"5", ",", "11", ",", "17"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"3", 
      RowBox[{"c", "/", "7"}], "b"}], ",", 
     RowBox[{"2", "/", 
      RowBox[{"(", 
       RowBox[{"3", "a"}], ")"}]}], ",", 
     RowBox[{"15", "/", "13"}]}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.7917662077362213`*^9, 3.791766242462976*^9}, {
  3.7917662732325044`*^9, 3.791766278051401*^9}, {3.791766377940648*^9, 
  3.791766457102892*^9}},
 CellLabel->"In[45]:=",ExpressionUUID->"ee2ea1ba-2c11-4224-86da-69548e6ba521"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    FractionBox["165", "13"], "-", 
    FractionBox["34", 
     RowBox[{"3", " ", "a"}]]}], ",", 
   RowBox[{
    RowBox[{"-", 
     FractionBox["75", "13"]}], "+", 
    FractionBox[
     RowBox[{"51", " ", "b", " ", "c"}], "7"]}], ",", 
   RowBox[{
    FractionBox["10", 
     RowBox[{"3", " ", "a"}]], "-", 
    FractionBox[
     RowBox[{"33", " ", "b", " ", "c"}], "7"]}]}], "}"}]], "Output",
 CellChangeTimes->{3.7917664608698215`*^9, 3.792016082538275*^9},
 CellLabel->"Out[45]=",ExpressionUUID->"afbaf4b8-e76d-40b3-beb3-87673fa4d259"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.791766487181877*^9, 3.791766488681682*^9}},
 CellLabel->"In[46]:=",ExpressionUUID->"adca149a-f5ec-4419-a337-8f7dce334a7b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Cross", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"5", ",", "11", ",", "17"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"1", ",", 
      RowBox[{"-", "3"}], ",", 
      RowBox[{"-", "7"}]}], "}"}]}], "]"}], 
  RowBox[{"Cross", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"2", "*", "Pi"}], ",", "a", ",", 
      RowBox[{"7", "c"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"1", ",", 
      RowBox[{"-", "3"}], ",", 
      RowBox[{"-", "7"}]}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.791766493528257*^9, 3.7917665927324033`*^9}, {
  3.7917666253250737`*^9, 3.791766670744419*^9}, {3.7917668107090335`*^9, 
  3.7917668136811914`*^9}, {3.792016903795766*^9, 3.7920169044982176`*^9}, {
  3.7920169804797707`*^9, 3.7920170088753796`*^9}},
 CellLabel->
  "In[112]:=",ExpressionUUID->"6ac7299b-1088-47da-b608-a8a78ae5a3c1"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"-", "26"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", "7"}], " ", "a"}], "+", 
      RowBox[{"21", " ", "c"}]}], ")"}]}], ",", 
   RowBox[{"52", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"7", " ", "c"}], "+", 
      RowBox[{"14", " ", "\[Pi]"}]}], ")"}]}], ",", 
   RowBox[{
    RowBox[{"-", "26"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "a"}], "-", 
      RowBox[{"6", " ", "\[Pi]"}]}], ")"}]}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.791766674601506*^9, 3.791766818672859*^9, 3.7920160827229786`*^9, 
   3.7920168730919666`*^9, 3.79201690573398*^9, {3.792016996352945*^9, 
   3.792017011901189*^9}},
 CellLabel->
  "Out[112]=",ExpressionUUID->"66ec042d-6917-43fb-b139-59882d6366d7"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.791767466896764*^9, 3.791767470231846*^9}},
 CellLabel->"In[48]:=",ExpressionUUID->"80c38d86-c283-46ca-bbfc-5fbad5bf186b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"vectorP", "[", "pi_", "]"}], "=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"Pi", "*", "n"}], ",", 
    RowBox[{"6", "+", "n"}], ",", 
    RowBox[{"11", "+", "n"}], ",", 
    RowBox[{"42", "+", "n"}], ",", 
    RowBox[{"96", "+", "n"}]}], "}"}]}]], "Input",
 CellChangeTimes->{{3.79176878454772*^9, 3.7917688065299664`*^9}, {
   3.7917688587676997`*^9, 3.7917688591786647`*^9}, {3.7917690412276278`*^9, 
   3.7917690587785254`*^9}, 3.7920162722520075`*^9},
 CellLabel->"In[83]:=",ExpressionUUID->"890e0736-5556-4187-b348-b1a264d6e715"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"n", " ", "\[Pi]"}], ",", 
   RowBox[{"6", "+", "n"}], ",", 
   RowBox[{"11", "+", "n"}], ",", 
   RowBox[{"42", "+", "n"}], ",", 
   RowBox[{"96", "+", "n"}]}], "}"}]], "Output",
 CellChangeTimes->{3.7917690618575263`*^9, 3.7917711385377507`*^9, 
  3.7920160827919693`*^9, 3.7920161216659355`*^9, 3.7920162761321125`*^9},
 CellLabel->"Out[83]=",ExpressionUUID->"deae58ff-2135-4668-bf7c-21c24322c15c"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917690116810417`*^9, 3.791769022311636*^9}, {
  3.7917711467556877`*^9, 3.79177115003043*^9}},
 CellLabel->"In[50]:=",ExpressionUUID->"5e76ea44-3b93-49bf-b72d-51d91dcfe07a"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917711435772047`*^9, 3.7917711435911694`*^9}},
 CellLabel->"In[51]:=",ExpressionUUID->"d2453e22-d266-479d-a1cf-b27169802407"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.791767473757128*^9, 3.7917675455996923`*^9}, {
   3.791767939004011*^9, 3.79176795936097*^9}, {3.791768091530424*^9, 
   3.791768096389469*^9}, {3.791768187830776*^9, 3.7917681895755067`*^9}, {
   3.7917683003990116`*^9, 3.791768301069953*^9}, 3.7917687707996387`*^9},
 CellLabel->"In[52]:=",ExpressionUUID->"71be3317-0fbf-4be1-83e8-76b96c4c327a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"vectorP", "[", "pi", "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"n", ",", "1", ",", "67", ",", "2"}], "}"}]}], "]"}], "//", 
   "TableForm"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.791768831085415*^9, 3.7917688401783967`*^9}, 
   3.79176968338376*^9, 3.7920162800099125`*^9},
 CellLabel->"In[84]:=",ExpressionUUID->"797111ec-6411-4683-bb60-da445787df0a"],

Cell[BoxData[
 TagBox[GridBox[{
    {"\[Pi]", "7", "12", "43", "97"},
    {
     RowBox[{"3", " ", "\[Pi]"}], "9", "14", "45", "99"},
    {
     RowBox[{"5", " ", "\[Pi]"}], "11", "16", "47", "101"},
    {
     RowBox[{"7", " ", "\[Pi]"}], "13", "18", "49", "103"},
    {
     RowBox[{"9", " ", "\[Pi]"}], "15", "20", "51", "105"},
    {
     RowBox[{"11", " ", "\[Pi]"}], "17", "22", "53", "107"},
    {
     RowBox[{"13", " ", "\[Pi]"}], "19", "24", "55", "109"},
    {
     RowBox[{"15", " ", "\[Pi]"}], "21", "26", "57", "111"},
    {
     RowBox[{"17", " ", "\[Pi]"}], "23", "28", "59", "113"},
    {
     RowBox[{"19", " ", "\[Pi]"}], "25", "30", "61", "115"},
    {
     RowBox[{"21", " ", "\[Pi]"}], "27", "32", "63", "117"},
    {
     RowBox[{"23", " ", "\[Pi]"}], "29", "34", "65", "119"},
    {
     RowBox[{"25", " ", "\[Pi]"}], "31", "36", "67", "121"},
    {
     RowBox[{"27", " ", "\[Pi]"}], "33", "38", "69", "123"},
    {
     RowBox[{"29", " ", "\[Pi]"}], "35", "40", "71", "125"},
    {
     RowBox[{"31", " ", "\[Pi]"}], "37", "42", "73", "127"},
    {
     RowBox[{"33", " ", "\[Pi]"}], "39", "44", "75", "129"},
    {
     RowBox[{"35", " ", "\[Pi]"}], "41", "46", "77", "131"},
    {
     RowBox[{"37", " ", "\[Pi]"}], "43", "48", "79", "133"},
    {
     RowBox[{"39", " ", "\[Pi]"}], "45", "50", "81", "135"},
    {
     RowBox[{"41", " ", "\[Pi]"}], "47", "52", "83", "137"},
    {
     RowBox[{"43", " ", "\[Pi]"}], "49", "54", "85", "139"},
    {
     RowBox[{"45", " ", "\[Pi]"}], "51", "56", "87", "141"},
    {
     RowBox[{"47", " ", "\[Pi]"}], "53", "58", "89", "143"},
    {
     RowBox[{"49", " ", "\[Pi]"}], "55", "60", "91", "145"},
    {
     RowBox[{"51", " ", "\[Pi]"}], "57", "62", "93", "147"},
    {
     RowBox[{"53", " ", "\[Pi]"}], "59", "64", "95", "149"},
    {
     RowBox[{"55", " ", "\[Pi]"}], "61", "66", "97", "151"},
    {
     RowBox[{"57", " ", "\[Pi]"}], "63", "68", "99", "153"},
    {
     RowBox[{"59", " ", "\[Pi]"}], "65", "70", "101", "155"},
    {
     RowBox[{"61", " ", "\[Pi]"}], "67", "72", "103", "157"},
    {
     RowBox[{"63", " ", "\[Pi]"}], "69", "74", "105", "159"},
    {
     RowBox[{"65", " ", "\[Pi]"}], "71", "76", "107", "161"},
    {
     RowBox[{"67", " ", "\[Pi]"}], "73", "78", "109", "163"}
   },
   GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Baseline}}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[2.0999999999999996`]}, 
       Offset[0.27999999999999997`]}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}}],
  Function[BoxForm`e$, 
   TableForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.791771014114292*^9, {3.7917711276956453`*^9, 3.791771155406188*^9}, 
   3.792016083340226*^9, 3.792016113659746*^9, 3.792016156673831*^9, 
   3.792016284201804*^9},
 CellLabel->
  "Out[84]//TableForm=",ExpressionUUID->"97dbf07a-68a2-4263-b3ff-\
82a9b4924ea6"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917696906407175`*^9, 3.7917697190017557`*^9}, 
   3.791770980532051*^9},
 CellLabel->"In[54]:=",ExpressionUUID->"8d7af697-1119-4b66-bd89-86384ab7d34c"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917710248677626`*^9, 3.7917710265869546`*^9}},
 CellLabel->"In[55]:=",ExpressionUUID->"dea3dc10-fa64-4a47-94c7-031eb81977cb"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917675811309276`*^9, 3.791767584194436*^9}, {
  3.7917676726207075`*^9, 3.7917676737550225`*^9}, {3.791768885304781*^9, 
  3.7917688858353624`*^9}},
 CellLabel->"In[56]:=",ExpressionUUID->"b51beef6-5823-4143-9745-726f6a374a10"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.791767683512238*^9, 3.791767728001073*^9}, {
   3.7917677914354773`*^9, 3.7917677963546343`*^9}, {3.7917684484272375`*^9, 
   3.7917684500461903`*^9}, {3.791768571906329*^9, 3.7917685888900633`*^9}, 
   3.791768773779771*^9, 3.791771031376881*^9},
 CellLabel->"In[57]:=",ExpressionUUID->"f5d0383b-51a2-44fe-b325-5b2b59dfb11f"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7917688805986204`*^9, 3.7917688807459497`*^9}},
 CellLabel->"In[58]:=",ExpressionUUID->"990d1136-26a5-4583-a9a8-3efb5fb07a0a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"vector", "[", "b_", "]"}], "=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"E", "*", "n"}], ",", 
    RowBox[{"6", "+", "n"}], ",", 
    RowBox[{"11", "+", "n"}], ",", 
    RowBox[{"42", "+", "n"}], ",", 
    RowBox[{"96", "+", "n"}]}], "}"}]}]], "Input",
 CellChangeTimes->{{3.7917680431054506`*^9, 3.791768063789935*^9}, {
  3.791768602616105*^9, 3.79176866864022*^9}, {3.791769075616313*^9, 
  3.791769086277673*^9}, {3.791769118345214*^9, 3.7917691654383*^9}},
 CellLabel->"In[78]:=",ExpressionUUID->"5b11e88e-d36b-44cc-b376-042d544997d4"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"\[ExponentialE]", " ", "n"}], ",", 
   RowBox[{"6", "+", "n"}], ",", 
   RowBox[{"11", "+", "n"}], ",", 
   RowBox[{"42", "+", "n"}], ",", 
   RowBox[{"96", "+", "n"}]}], "}"}]], "Output",
 CellChangeTimes->{3.7917686736833997`*^9, 3.791769088405063*^9, 
  3.791769125070259*^9, 3.7917691679614763`*^9, 3.792016083493966*^9, 
  3.792016138408801*^9},
 CellLabel->"Out[78]=",ExpressionUUID->"2fd1bdd4-9310-449f-a100-0639fb07695d"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"vector", "[", "b", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"n", ",", "2", ",", "66", ",", "2"}], "}"}]}], "]"}], "//", 
  "TableForm"}]], "Input",
 CellChangeTimes->{{3.791768683862667*^9, 3.7917687308253555`*^9}},
 CellLabel->"In[79]:=",ExpressionUUID->"51a4e1f8-52cb-4e11-88bd-62768020544c"],

Cell[BoxData[
 TagBox[GridBox[{
    {
     RowBox[{"2", " ", "\[ExponentialE]"}], "8", "13", "44", "98"},
    {
     RowBox[{"4", " ", "\[ExponentialE]"}], "10", "15", "46", "100"},
    {
     RowBox[{"6", " ", "\[ExponentialE]"}], "12", "17", "48", "102"},
    {
     RowBox[{"8", " ", "\[ExponentialE]"}], "14", "19", "50", "104"},
    {
     RowBox[{"10", " ", "\[ExponentialE]"}], "16", "21", "52", "106"},
    {
     RowBox[{"12", " ", "\[ExponentialE]"}], "18", "23", "54", "108"},
    {
     RowBox[{"14", " ", "\[ExponentialE]"}], "20", "25", "56", "110"},
    {
     RowBox[{"16", " ", "\[ExponentialE]"}], "22", "27", "58", "112"},
    {
     RowBox[{"18", " ", "\[ExponentialE]"}], "24", "29", "60", "114"},
    {
     RowBox[{"20", " ", "\[ExponentialE]"}], "26", "31", "62", "116"},
    {
     RowBox[{"22", " ", "\[ExponentialE]"}], "28", "33", "64", "118"},
    {
     RowBox[{"24", " ", "\[ExponentialE]"}], "30", "35", "66", "120"},
    {
     RowBox[{"26", " ", "\[ExponentialE]"}], "32", "37", "68", "122"},
    {
     RowBox[{"28", " ", "\[ExponentialE]"}], "34", "39", "70", "124"},
    {
     RowBox[{"30", " ", "\[ExponentialE]"}], "36", "41", "72", "126"},
    {
     RowBox[{"32", " ", "\[ExponentialE]"}], "38", "43", "74", "128"},
    {
     RowBox[{"34", " ", "\[ExponentialE]"}], "40", "45", "76", "130"},
    {
     RowBox[{"36", " ", "\[ExponentialE]"}], "42", "47", "78", "132"},
    {
     RowBox[{"38", " ", "\[ExponentialE]"}], "44", "49", "80", "134"},
    {
     RowBox[{"40", " ", "\[ExponentialE]"}], "46", "51", "82", "136"},
    {
     RowBox[{"42", " ", "\[ExponentialE]"}], "48", "53", "84", "138"},
    {
     RowBox[{"44", " ", "\[ExponentialE]"}], "50", "55", "86", "140"},
    {
     RowBox[{"46", " ", "\[ExponentialE]"}], "52", "57", "88", "142"},
    {
     RowBox[{"48", " ", "\[ExponentialE]"}], "54", "59", "90", "144"},
    {
     RowBox[{"50", " ", "\[ExponentialE]"}], "56", "61", "92", "146"},
    {
     RowBox[{"52", " ", "\[ExponentialE]"}], "58", "63", "94", "148"},
    {
     RowBox[{"54", " ", "\[ExponentialE]"}], "60", "65", "96", "150"},
    {
     RowBox[{"56", " ", "\[ExponentialE]"}], "62", "67", "98", "152"},
    {
     RowBox[{"58", " ", "\[ExponentialE]"}], "64", "69", "100", "154"},
    {
     RowBox[{"60", " ", "\[ExponentialE]"}], "66", "71", "102", "156"},
    {
     RowBox[{"62", " ", "\[ExponentialE]"}], "68", "73", "104", "158"},
    {
     RowBox[{"64", " ", "\[ExponentialE]"}], "70", "75", "106", "160"},
    {
     RowBox[{"66", " ", "\[ExponentialE]"}], "72", "77", "108", "162"}
   },
   GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Baseline}}},
   GridBoxSpacings->{"Columns" -> {
       Offset[0.27999999999999997`], {
        Offset[2.0999999999999996`]}, 
       Offset[0.27999999999999997`]}, "Rows" -> {
       Offset[0.2], {
        Offset[0.4]}, 
       Offset[0.2]}}],
  Function[BoxForm`e$, 
   TableForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.7917687331584034`*^9, 3.791769091208296*^9, 
  3.7917691703271523`*^9, 3.791771040575771*^9, 3.792016083540887*^9, 
  3.792016142186545*^9},
 CellLabel->
  "Out[79]//TableForm=",ExpressionUUID->"b1f40f02-2165-4429-90f5-\
8d528e62601d"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.79176558812616*^9, 3.791765588169449*^9}},
 CellLabel->"In[61]:=",ExpressionUUID->"51bc748b-573b-4767-84c0-128f4fefa86d"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"pi", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"vectorP", "[", "pi", "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"n", ",", "1", ",", "67", ",", "2"}], "}"}]}], "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"e", "=", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"vector", "[", "b", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"n", ",", "2", ",", "66", ",", "2"}], "}"}]}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.792015995694648*^9, 3.792016040571439*^9}, 
   3.7920163072271414`*^9},
 CellLabel->"In[87]:=",ExpressionUUID->"3fac850f-83de-44ea-8af2-0277073f36c1"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"\[Pi]", ",", "7", ",", "12", ",", "43", ",", "97"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"3", " ", "\[Pi]"}], ",", "9", ",", "14", ",", "45", ",", "99"}],
     "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"5", " ", "\[Pi]"}], ",", "11", ",", "16", ",", "47", ",", 
     "101"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"7", " ", "\[Pi]"}], ",", "13", ",", "18", ",", "49", ",", 
     "103"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"9", " ", "\[Pi]"}], ",", "15", ",", "20", ",", "51", ",", 
     "105"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"11", " ", "\[Pi]"}], ",", "17", ",", "22", ",", "53", ",", 
     "107"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"13", " ", "\[Pi]"}], ",", "19", ",", "24", ",", "55", ",", 
     "109"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"15", " ", "\[Pi]"}], ",", "21", ",", "26", ",", "57", ",", 
     "111"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"17", " ", "\[Pi]"}], ",", "23", ",", "28", ",", "59", ",", 
     "113"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"19", " ", "\[Pi]"}], ",", "25", ",", "30", ",", "61", ",", 
     "115"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"21", " ", "\[Pi]"}], ",", "27", ",", "32", ",", "63", ",", 
     "117"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"23", " ", "\[Pi]"}], ",", "29", ",", "34", ",", "65", ",", 
     "119"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"25", " ", "\[Pi]"}], ",", "31", ",", "36", ",", "67", ",", 
     "121"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"27", " ", "\[Pi]"}], ",", "33", ",", "38", ",", "69", ",", 
     "123"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"29", " ", "\[Pi]"}], ",", "35", ",", "40", ",", "71", ",", 
     "125"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"31", " ", "\[Pi]"}], ",", "37", ",", "42", ",", "73", ",", 
     "127"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"33", " ", "\[Pi]"}], ",", "39", ",", "44", ",", "75", ",", 
     "129"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"35", " ", "\[Pi]"}], ",", "41", ",", "46", ",", "77", ",", 
     "131"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"37", " ", "\[Pi]"}], ",", "43", ",", "48", ",", "79", ",", 
     "133"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"39", " ", "\[Pi]"}], ",", "45", ",", "50", ",", "81", ",", 
     "135"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"41", " ", "\[Pi]"}], ",", "47", ",", "52", ",", "83", ",", 
     "137"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"43", " ", "\[Pi]"}], ",", "49", ",", "54", ",", "85", ",", 
     "139"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"45", " ", "\[Pi]"}], ",", "51", ",", "56", ",", "87", ",", 
     "141"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"47", " ", "\[Pi]"}], ",", "53", ",", "58", ",", "89", ",", 
     "143"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"49", " ", "\[Pi]"}], ",", "55", ",", "60", ",", "91", ",", 
     "145"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"51", " ", "\[Pi]"}], ",", "57", ",", "62", ",", "93", ",", 
     "147"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"53", " ", "\[Pi]"}], ",", "59", ",", "64", ",", "95", ",", 
     "149"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"55", " ", "\[Pi]"}], ",", "61", ",", "66", ",", "97", ",", 
     "151"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"57", " ", "\[Pi]"}], ",", "63", ",", "68", ",", "99", ",", 
     "153"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"59", " ", "\[Pi]"}], ",", "65", ",", "70", ",", "101", ",", 
     "155"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"61", " ", "\[Pi]"}], ",", "67", ",", "72", ",", "103", ",", 
     "157"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"63", " ", "\[Pi]"}], ",", "69", ",", "74", ",", "105", ",", 
     "159"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"65", " ", "\[Pi]"}], ",", "71", ",", "76", ",", "107", ",", 
     "161"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"67", " ", "\[Pi]"}], ",", "73", ",", "78", ",", "109", ",", 
     "163"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.792016044628251*^9, {3.792016084073499*^9, 3.792016102495739*^9}, 
   3.792016148821925*^9, {3.792016311293736*^9, 3.7920163167288976`*^9}},
 CellLabel->"Out[87]=",ExpressionUUID->"92a5881b-cd64-4839-9135-49e3da9fcda2"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"2", " ", "\[ExponentialE]"}], ",", "8", ",", "13", ",", "44", 
     ",", "98"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"4", " ", "\[ExponentialE]"}], ",", "10", ",", "15", ",", "46", 
     ",", "100"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"6", " ", "\[ExponentialE]"}], ",", "12", ",", "17", ",", "48", 
     ",", "102"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"8", " ", "\[ExponentialE]"}], ",", "14", ",", "19", ",", "50", 
     ",", "104"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"10", " ", "\[ExponentialE]"}], ",", "16", ",", "21", ",", "52", 
     ",", "106"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"12", " ", "\[ExponentialE]"}], ",", "18", ",", "23", ",", "54", 
     ",", "108"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"14", " ", "\[ExponentialE]"}], ",", "20", ",", "25", ",", "56", 
     ",", "110"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"16", " ", "\[ExponentialE]"}], ",", "22", ",", "27", ",", "58", 
     ",", "112"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"18", " ", "\[ExponentialE]"}], ",", "24", ",", "29", ",", "60", 
     ",", "114"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"20", " ", "\[ExponentialE]"}], ",", "26", ",", "31", ",", "62", 
     ",", "116"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"22", " ", "\[ExponentialE]"}], ",", "28", ",", "33", ",", "64", 
     ",", "118"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"24", " ", "\[ExponentialE]"}], ",", "30", ",", "35", ",", "66", 
     ",", "120"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"26", " ", "\[ExponentialE]"}], ",", "32", ",", "37", ",", "68", 
     ",", "122"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"28", " ", "\[ExponentialE]"}], ",", "34", ",", "39", ",", "70", 
     ",", "124"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"30", " ", "\[ExponentialE]"}], ",", "36", ",", "41", ",", "72", 
     ",", "126"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"32", " ", "\[ExponentialE]"}], ",", "38", ",", "43", ",", "74", 
     ",", "128"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"34", " ", "\[ExponentialE]"}], ",", "40", ",", "45", ",", "76", 
     ",", "130"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"36", " ", "\[ExponentialE]"}], ",", "42", ",", "47", ",", "78", 
     ",", "132"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"38", " ", "\[ExponentialE]"}], ",", "44", ",", "49", ",", "80", 
     ",", "134"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"40", " ", "\[ExponentialE]"}], ",", "46", ",", "51", ",", "82", 
     ",", "136"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"42", " ", "\[ExponentialE]"}], ",", "48", ",", "53", ",", "84", 
     ",", "138"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"44", " ", "\[ExponentialE]"}], ",", "50", ",", "55", ",", "86", 
     ",", "140"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"46", " ", "\[ExponentialE]"}], ",", "52", ",", "57", ",", "88", 
     ",", "142"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"48", " ", "\[ExponentialE]"}], ",", "54", ",", "59", ",", "90", 
     ",", "144"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"50", " ", "\[ExponentialE]"}], ",", "56", ",", "61", ",", "92", 
     ",", "146"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"52", " ", "\[ExponentialE]"}], ",", "58", ",", "63", ",", "94", 
     ",", "148"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"54", " ", "\[ExponentialE]"}], ",", "60", ",", "65", ",", "96", 
     ",", "150"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"56", " ", "\[ExponentialE]"}], ",", "62", ",", "67", ",", "98", 
     ",", "152"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"58", " ", "\[ExponentialE]"}], ",", "64", ",", "69", ",", "100",
      ",", "154"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"60", " ", "\[ExponentialE]"}], ",", "66", ",", "71", ",", "102",
      ",", "156"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"62", " ", "\[ExponentialE]"}], ",", "68", ",", "73", ",", "104",
      ",", "158"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"64", " ", "\[ExponentialE]"}], ",", "70", ",", "75", ",", "106",
      ",", "160"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"66", " ", "\[ExponentialE]"}], ",", "72", ",", "77", ",", "108",
      ",", "162"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.792016044628251*^9, {3.792016084073499*^9, 3.792016102495739*^9}, 
   3.792016148821925*^9, {3.792016311293736*^9, 3.7920163167445507`*^9}},
 CellLabel->"Out[88]=",ExpressionUUID->"cca5dc33-86fb-4b05-bee6-996a13dd4af9"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"e1", "=", 
  RowBox[{"Total", "[", 
   RowBox[{"e", "[", 
    RowBox[{"[", 
     RowBox[{"All", ",", "1"}], "]"}], "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7917709202497187`*^9, 3.7917709992195024`*^9}, 
   3.791771055861828*^9, {3.7920159161354227`*^9, 3.792015951383912*^9}, {
   3.792016337735056*^9, 3.7920163996385994`*^9}},
 CellLabel->"In[90]:=",ExpressionUUID->"3ffbcd53-122f-4d73-81b3-d59d09d480d2"],

Cell[BoxData[
 RowBox[{
  RowBox[{"1122", " ", "\[ExponentialE]"}], "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.7920164248616843`*^9, 
  3.792016424879098*^9}},ExpressionUUID->"1528a716-dfa8-466f-b744-\
957a8869da5a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"e2", "=", 
  RowBox[{"Total", "[", 
   RowBox[{"e", "[", 
    RowBox[{"[", 
     RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.792016066663624*^9, 3.7920160667102585`*^9}, {
   3.79201643077909*^9, 3.79201644863085*^9}, 3.7920165545753245`*^9},
 CellLabel->"In[98]:=",ExpressionUUID->"703aa83a-3301-41a5-b996-ee5f800c80f5"],

Cell[BoxData["1320"], "Output",
 CellChangeTimes->{3.7920165569129896`*^9},
 CellLabel->"Out[98]=",ExpressionUUID->"d0d1fb4d-bda8-47c2-b33b-eadeb85d482b"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"e3", "=", 
   RowBox[{"Total", "[", 
    RowBox[{"e", "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "3"}], "]"}], "]"}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.7920164567286053`*^9, 3.7920164745340877`*^9}, 
   3.792016551814404*^9, 3.792016591692547*^9},
 CellLabel->
  "In[101]:=",ExpressionUUID->"ab139862-0ba4-447f-90a5-f9d5dca91d16"],

Cell[BoxData["1485"], "Output",
 CellChangeTimes->{3.7920165951333637`*^9},
 CellLabel->
  "Out[101]=",ExpressionUUID->"48330423-de5c-45db-bd60-d5c6efbea4e0"]
}, Open  ]],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.792016581318714*^9, 
  3.792016585085334*^9}},ExpressionUUID->"eaf328bb-3ee8-4827-b301-\
dbbe44b332a4"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.792016598804593*^9, 
  3.792016599978456*^9}},ExpressionUUID->"bc054df2-e48c-4399-8355-\
ee204090210a"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.792016481154645*^9, 
  3.792016481154645*^9}},ExpressionUUID->"16caf22a-9ad8-4a4b-a2c0-\
0148dd058616"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7920166042902803`*^9, 
  3.792016604321371*^9}},ExpressionUUID->"c65c9f92-81d5-48a6-8843-\
5ae19f9d285d"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"e4", "=", 
  RowBox[{"Total", "[", 
   RowBox[{"e", "[", 
    RowBox[{"[", 
     RowBox[{"All", ",", "4"}], "]"}], "]"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"e5", "=", 
  RowBox[{"Total", "[", 
   RowBox[{"e", "[", 
    RowBox[{"[", 
     RowBox[{"All", ",", "5"}], "]"}], "]"}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.791769389565179*^9, 3.791769448142829*^9}, 
   3.7917694836136804`*^9, {3.7920164897262626`*^9, 3.792016527744608*^9}},
 CellLabel->"In[96]:=",ExpressionUUID->"330c0a92-24b2-4206-aa89-152457bd5d77"],

Cell[BoxData["2508"], "Output",
 CellChangeTimes->{{3.792016519557116*^9, 3.7920165301510043`*^9}},
 CellLabel->"Out[96]=",ExpressionUUID->"d1d3e6cd-b863-406c-83bd-14f257907f51"],

Cell[BoxData["4290"], "Output",
 CellChangeTimes->{{3.792016519557116*^9, 3.7920165301510043`*^9}},
 CellLabel->"Out[97]=",ExpressionUUID->"c9445127-fc2f-4b0a-b1bc-8c9d933b4f55"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p", "=", 
  RowBox[{"Total", "[", 
   RowBox[{"pi", "[", 
    RowBox[{"[", 
     RowBox[{"All", ",", "1"}], "]"}], "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7917694704885263`*^9, 3.7917694775021257`*^9}, {
  3.7920166252880497`*^9, 3.792016642503038*^9}},
 CellLabel->
  "In[102]:=",ExpressionUUID->"5f2f0445-b2cc-4ee8-9997-4c24c734c13f"],

Cell[BoxData[
 RowBox[{"1156", " ", "\[Pi]"}]], "Output",
 CellChangeTimes->{3.7920166435216675`*^9},
 CellLabel->
  "Out[102]=",ExpressionUUID->"d87611f9-33b0-48b4-9790-5f7a0e786ce5"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p2", "=", 
  RowBox[{"Total", "[", 
   RowBox[{"pi", "[", 
    RowBox[{"[", 
     RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.791769228794469*^9, 3.791769239196785*^9}, {
  3.792016648404957*^9, 3.7920166659008217`*^9}},
 CellLabel->
  "In[103]:=",ExpressionUUID->"21a319b1-bea4-4eb3-a9cb-32edf5ddffa6"],

Cell[BoxData["1360"], "Output",
 CellChangeTimes->{3.7920166683769703`*^9},
 CellLabel->
  "Out[103]=",ExpressionUUID->"1ef7e76d-d8f3-4697-a981-57f5dff675e4"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p3", "=", 
  RowBox[{"Total", "[", 
   RowBox[{"pi", "[", 
    RowBox[{"[", 
     RowBox[{"All", ",", "3"}], "]"}], "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.791765341713627*^9, 3.7917653417489243`*^9}, {
  3.7920166730594854`*^9, 3.7920166822557745`*^9}},
 CellLabel->
  "In[104]:=",ExpressionUUID->"7f9d2631-e7fb-48f5-8278-0a1524c327fa"],

Cell[BoxData["1530"], "Output",
 CellChangeTimes->{3.7920166833528605`*^9},
 CellLabel->
  "Out[104]=",ExpressionUUID->"d9421c5d-fdc3-4892-b3a9-c35d75b60971"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"p4", "=", 
   RowBox[{"Total", "[", 
    RowBox[{"pi", "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "4"}], "]"}], "]"}], "]"}]}], 
  "\[IndentingNewLine]"}]], "Input",
 CellChangeTimes->{{3.7917642413498316`*^9, 3.791764241456517*^9}, {
  3.7917644221631947`*^9, 3.791764425798647*^9}, {3.79201668701849*^9, 
  3.7920167032598486`*^9}},
 CellLabel->
  "In[105]:=",ExpressionUUID->"5d3deb3c-6417-4ebb-a2bd-f5405068a368"],

Cell[BoxData["2584"], "Output",
 CellChangeTimes->{3.792016704278028*^9},
 CellLabel->
  "Out[105]=",ExpressionUUID->"bc0af33a-0847-4c3f-b2a8-1ed3db505279"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p5", "=", 
  RowBox[{"Total", "[", 
   RowBox[{"pi", "[", 
    RowBox[{"[", 
     RowBox[{"All", ",", "5"}], "]"}], "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7920167082726417`*^9, 3.7920167201389036`*^9}},
 CellLabel->
  "In[106]:=",ExpressionUUID->"4306559a-9f67-4b38-96f5-945b1f93c7f9"],

Cell[BoxData["4420"], "Output",
 CellChangeTimes->{3.792016720995175*^9},
 CellLabel->
  "Out[106]=",ExpressionUUID->"3cc0ee6f-a298-43d8-b93b-9eb18bc438ef"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"total", "=", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"e1", "+", "p"}], ",", 
     RowBox[{"e2", "+", "p2"}], ",", 
     RowBox[{"e3", "+", "p3"}], ",", 
     RowBox[{"e4", "+", "p4"}], ",", 
     RowBox[{"e5", "+", "p5"}]}], "}"}], "//", "MatrixForm"}]}]], "Input",
 CellChangeTimes->{{3.7920167318790483`*^9, 3.7920168380926576`*^9}},
 CellLabel->
  "In[108]:=",ExpressionUUID->"fcee02c8-26c1-4d44-aa18-bcdfd09152b3"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{"1122", " ", "\[ExponentialE]"}], "+", 
        RowBox[{"1156", " ", "\[Pi]"}]}]},
      {"2680"},
      {"3015"},
      {"5092"},
      {"8710"}
     },
     GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.792016788865032*^9, 3.792016839612152*^9},
 CellLabel->
  "Out[108]//MatrixForm=",ExpressionUUID->"5edbb7cd-6121-497d-90a6-\
ba93776e9fab"]
}, Open  ]]
},
WindowSize->{1366, 685},
WindowMargins->{{-8, Automatic}, {Automatic, 0}},
FrontEndVersion->"12.0 para Microsoft Windows (64-bit) (April 8, 2019)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[558, 20, 177, 6, 56, "Text",ExpressionUUID->"f8f8f804-b0a0-467a-ba28-b5dc6f93a238"],
Cell[CellGroupData[{
Cell[760, 30, 1487, 47, 179, "Input",ExpressionUUID->"a528b342-985b-40cb-b378-db1a9e617db8"],
Cell[2250, 79, 242, 4, 32, "Output",ExpressionUUID->"2de95226-65c3-4c8e-881c-27ff545d534d"],
Cell[2495, 85, 243, 4, 32, "Output",ExpressionUUID->"cd72bb9c-5b21-44c4-a5aa-4a08f2b2c67d"],
Cell[2741, 91, 295, 7, 32, "Output",ExpressionUUID->"f9b1f671-1eca-4a99-be35-fb06192e4556"],
Cell[3039, 100, 289, 6, 32, "Output",ExpressionUUID->"89f74715-d701-49bc-9300-001af6cf40f5"],
Cell[3331, 108, 486, 14, 49, "Output",ExpressionUUID->"f1f86022-2732-4970-b7b2-494cff6dad85"],
Cell[3820, 124, 382, 10, 50, "Output",ExpressionUUID->"69b44c08-2cdc-4414-ac38-d2ccd63bc02b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4239, 139, 427, 12, 67, "Input",ExpressionUUID->"07af8b24-fb78-414b-8bc2-91e50fe4c5e3"],
Cell[4669, 153, 358, 10, 50, "Output",ExpressionUUID->"e505ab3c-18c0-43b2-a074-dd70c8a37907"]
}, Open  ]],
Cell[CellGroupData[{
Cell[5064, 168, 284, 5, 45, "Input",ExpressionUUID->"3b0a2369-13f5-4f48-957c-f331df21811e"],
Cell[5351, 175, 692, 23, 96, "Output",ExpressionUUID->"41f13cc4-31e5-481f-b569-59867769cc91"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6080, 203, 834, 24, 120, "Input",ExpressionUUID->"25f0926b-b598-416f-8886-22d6def6aaed"],
Cell[6917, 229, 244, 4, 32, "Output",ExpressionUUID->"30a15b28-ed50-4576-b3c5-ba461073c18f"],
Cell[7164, 235, 715, 23, 96, "Output",ExpressionUUID->"eb8f1895-9fae-4869-84f7-0f767eb4325a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7916, 263, 792, 23, 120, "Input",ExpressionUUID->"f8c80fc0-7455-43cc-9ae2-6971fed5f826"],
Cell[8711, 288, 239, 4, 32, "Output",ExpressionUUID->"5a3e25b0-1ec2-49e6-8543-c1832490ff50"],
Cell[8953, 294, 712, 23, 96, "Output",ExpressionUUID->"d445b4e4-d097-4582-acf4-a5f608708a4f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9702, 322, 1045, 28, 139, "Input",ExpressionUUID->"94539bd3-3eea-4424-8db9-c864fd595a60"],
Cell[10750, 352, 269, 5, 32, "Output",ExpressionUUID->"2f2d8aa4-45d8-4636-ba4e-8c81ff041eca"],
Cell[11022, 359, 1112, 35, 96, "Output",ExpressionUUID->"7eb8a8e3-7f44-47f7-b797-a72bde9b2277"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12171, 399, 1207, 35, 120, "Input",ExpressionUUID->"43690537-d5dd-4caf-9029-54b4c8173c6f"],
Cell[13381, 436, 613, 16, 32, "Output",ExpressionUUID->"bec7672d-3baf-4a03-864b-6a25cbe03057"],
Cell[13997, 454, 1300, 43, 112, "Output",ExpressionUUID->"db16944d-ca03-4fda-9ea8-b23dc1c46814"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15334, 502, 1375, 44, 138, "Input",ExpressionUUID->"db0ae277-6ae5-44aa-872a-2d648552bde9"],
Cell[16712, 548, 706, 23, 49, "Output",ExpressionUUID->"3b368ae3-ec2f-42aa-b10f-487cc6ca0c6a"],
Cell[17421, 573, 1282, 42, 125, "Output",ExpressionUUID->"0b443fb9-67e2-4cb0-883b-f57a0a1bf3a6"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18740, 620, 1485, 46, 173, "Input",ExpressionUUID->"01726034-a537-45d1-977f-507fb61308db"],
Cell[20228, 668, 736, 23, 50, "Output",ExpressionUUID->"f9c9e1e0-23f7-4e06-91c0-da5afd717917"],
Cell[20967, 693, 1344, 44, 131, "Output",ExpressionUUID->"a20578bc-3374-4ece-b217-cf8f7b7c54c0"]
}, Open  ]],
Cell[CellGroupData[{
Cell[22348, 742, 1524, 47, 159, "Input",ExpressionUUID->"08869cc8-eb20-4bff-8967-c41a6e6114a9"],
Cell[23875, 791, 790, 25, 54, "Output",ExpressionUUID->"88648a11-b8bf-44a0-9a83-e412b304e8d7"],
Cell[24668, 818, 1675, 50, 135, "Output",ExpressionUUID->"d1a9c1a1-f258-41ac-9252-7ec7484b61e2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[26380, 873, 1787, 50, 118, "Input",ExpressionUUID->"e9c2fd18-0694-4fb1-8a9e-6b0be4e2cbae"],
Cell[28170, 925, 1071, 31, 50, "Output",ExpressionUUID->"fe6088e4-472e-47e6-9846-895d4b74367a"]
}, Open  ]],
Cell[29256, 959, 173, 2, 28, "Input",ExpressionUUID->"7cb06486-8e08-447e-a0c1-4a3eb6a1e64e"],
Cell[29432, 963, 175, 2, 28, "Input",ExpressionUUID->"6f6f7eff-cba2-4e1d-bf77-f87ddda86e8a"],
Cell[CellGroupData[{
Cell[29632, 969, 163, 3, 45, "Input",ExpressionUUID->"24d7e30d-0b27-40a2-b7c7-8d6d23b04d98"],
Cell[29798, 974, 178, 2, 32, "Output",ExpressionUUID->"5ebca8b1-c46d-442c-96c6-69b780bf8051"]
}, Open  ]],
Cell[CellGroupData[{
Cell[30013, 981, 202, 3, 45, "Input",ExpressionUUID->"726fd8b2-4084-47d7-83f7-24ad607bce3e"],
Cell[30218, 986, 183, 4, 35, "Output",ExpressionUUID->"17c54480-dc5e-4479-93b3-4764abae55ea"]
}, Open  ]],
Cell[CellGroupData[{
Cell[30438, 995, 347, 7, 69, "Input",ExpressionUUID->"1a0829db-8954-4fdd-ab59-e9a8f20dc7ac"],
Cell[30788, 1004, 185, 4, 35, "Output",ExpressionUUID->"0e62c451-0622-4d6c-9c0c-662b8c0481fb"],
Cell[30976, 1010, 199, 4, 35, "Output",ExpressionUUID->"f6f67c28-f070-4509-9cbc-84097f400b2b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[31212, 1019, 173, 2, 28, "Input",ExpressionUUID->"333a22c5-f89b-4aaf-9048-8cfdeef3122a"],
Cell[31388, 1023, 280, 8, 35, "Output",ExpressionUUID->"d8d8ff5c-b90b-4edb-ab4c-e18f9a28a9cb"]
}, Open  ]],
Cell[31683, 1034, 173, 2, 28, "Input",ExpressionUUID->"00aa2820-63ba-49b3-8152-558fa23214c6"],
Cell[31859, 1038, 226, 3, 28, "Input",ExpressionUUID->"53e5224f-e39f-41b9-b5d1-a67bb36cdccd"],
Cell[32088, 1043, 171, 2, 28, "Input",ExpressionUUID->"70daede2-2444-4a24-8306-18b1fa5f5a39"],
Cell[CellGroupData[{
Cell[32284, 1049, 303, 7, 45, "Input",ExpressionUUID->"6aa2d465-3d08-4be2-aa3f-a6dcafc1d5a6"],
Cell[32590, 1058, 939, 29, 58, "Output",ExpressionUUID->"eaa89a6f-8e17-4790-bc50-ba1d52701206"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33566, 1092, 358, 8, 45, "Input",ExpressionUUID->"469a260f-1770-42d5-884a-ebd822533980"],
Cell[33927, 1102, 543, 16, 32, "Output",ExpressionUUID->"0be841e3-c77b-40aa-8ab2-bc057d09dd65"],
Cell[34473, 1120, 517, 15, 32, "Output",ExpressionUUID->"c14fac97-d5d5-470c-9d04-fee64da228a5"],
Cell[34993, 1137, 152, 3, 28, InheritFromParent,ExpressionUUID->"6b8c2c86-a5be-4d40-9c57-7adb79052291"]
}, Open  ]],
Cell[35160, 1143, 224, 3, 28, "Input",ExpressionUUID->"c1ac1e61-6f74-4d39-a68e-706248a07e46"],
Cell[35387, 1148, 170, 2, 28, "Input",ExpressionUUID->"3ca91742-290a-44ea-9acb-49f282eb99ad"],
Cell[35560, 1152, 169, 2, 28, "Input",ExpressionUUID->"169bec30-1454-4821-a60c-f38f59b5eec3"],
Cell[CellGroupData[{
Cell[35754, 1158, 183, 4, 45, "Input",ExpressionUUID->"50ab24c9-03e3-4c42-999d-92ac26bfef3c"],
Cell[35940, 1164, 575, 17, 42, "Output",ExpressionUUID->"a0e5af33-8485-487c-ac60-2cf47219fe4f"]
}, Open  ]],
Cell[36530, 1184, 173, 2, 28, "Input",ExpressionUUID->"6d6c355b-bd85-49e9-b44e-9f7ee7ad5447"],
Cell[CellGroupData[{
Cell[36728, 1190, 251, 5, 45, "Input",ExpressionUUID->"59a42bc6-2053-448e-afd5-57a597f24e3f"],
Cell[36982, 1197, 646, 19, 36, "Output",ExpressionUUID->"3055c9f9-617a-4f42-bdd9-07eda1f4365a"]
}, Open  ]],
Cell[37643, 1219, 147, 2, 28, "Input",ExpressionUUID->"551fb05b-f271-4c7f-953c-7108aed4eb9f"],
Cell[CellGroupData[{
Cell[37815, 1225, 605, 16, 45, "Input",ExpressionUUID->"ee2ea1ba-2c11-4224-86da-69548e6ba521"],
Cell[38423, 1243, 592, 18, 51, "Output",ExpressionUUID->"afbaf4b8-e76d-40b3-beb3-87673fa4d259"]
}, Open  ]],
Cell[39030, 1264, 171, 2, 28, "Input",ExpressionUUID->"adca149a-f5ec-4419-a337-8f7dce334a7b"],
Cell[CellGroupData[{
Cell[39226, 1270, 896, 25, 45, "Input",ExpressionUUID->"6ac7299b-1088-47da-b608-a8a78ae5a3c1"],
Cell[40125, 1297, 814, 26, 32, "Output",ExpressionUUID->"66ec042d-6917-43fb-b139-59882d6366d7"]
}, Open  ]],
Cell[40954, 1326, 171, 2, 28, "Input",ExpressionUUID->"80c38d86-c283-46ca-bbfc-5fbad5bf186b"],
Cell[CellGroupData[{
Cell[41150, 1332, 569, 13, 45, "Input",ExpressionUUID->"890e0736-5556-4187-b348-b1a264d6e715"],
Cell[41722, 1347, 452, 10, 32, "Output",ExpressionUUID->"deae58ff-2135-4668-bf7c-21c24322c15c"]
}, Open  ]],
Cell[42189, 1360, 223, 3, 28, "Input",ExpressionUUID->"5e76ea44-3b93-49bf-b72d-51d91dcfe07a"],
Cell[42415, 1365, 175, 2, 28, "Input",ExpressionUUID->"d2453e22-d266-479d-a1cf-b27169802407"],
Cell[42593, 1369, 396, 5, 28, "Input",ExpressionUUID->"71be3317-0fbf-4be1-83e8-76b96c4c327a"],
Cell[CellGroupData[{
Cell[43014, 1378, 464, 11, 66, "Input",ExpressionUUID->"797111ec-6411-4683-bb60-da445787df0a"],
Cell[43481, 1391, 2933, 86, 606, "Output",ExpressionUUID->"97dbf07a-68a2-4263-b3ff-82a9b4924ea6"]
}, Open  ]],
Cell[46429, 1480, 201, 3, 28, "Input",ExpressionUUID->"8d7af697-1119-4b66-bd89-86384ab7d34c"],
Cell[46633, 1485, 175, 2, 28, "Input",ExpressionUUID->"dea3dc10-fa64-4a47-94c7-031eb81977cb"],
Cell[46811, 1489, 277, 4, 28, "Input",ExpressionUUID->"b51beef6-5823-4143-9745-726f6a374a10"],
Cell[47091, 1495, 375, 5, 28, "Input",ExpressionUUID->"f5d0383b-51a2-44fe-b325-5b2b59dfb11f"],
Cell[47469, 1502, 175, 2, 28, "Input",ExpressionUUID->"990d1136-26a5-4583-a9a8-3efb5fb07a0a"],
Cell[CellGroupData[{
Cell[47669, 1508, 576, 13, 45, "Input",ExpressionUUID->"5b11e88e-d36b-44cc-b376-042d544997d4"],
Cell[48248, 1523, 481, 11, 32, "Output",ExpressionUUID->"2fd1bdd4-9310-449f-a100-0639fb07695d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[48766, 1539, 371, 9, 45, "Input",ExpressionUUID->"51a4e1f8-52cb-4e11-88bd-62768020544c"],
Cell[49140, 1550, 3198, 84, 589, "Output",ExpressionUUID->"b1f40f02-2165-4429-90f5-8d528e62601d"]
}, Open  ]],
Cell[52353, 1637, 170, 2, 28, "Input",ExpressionUUID->"51bc748b-573b-4767-84c0-128f4fefa86d"],
Cell[CellGroupData[{
Cell[52548, 1643, 647, 17, 101, "Input",ExpressionUUID->"3fac850f-83de-44ea-8af2-0277073f36c1"],
Cell[53198, 1662, 4714, 140, 109, "Output",ExpressionUUID->"92a5881b-cd64-4839-9135-49e3da9fcda2"],
Cell[57915, 1804, 4949, 138, 109, "Output",ExpressionUUID->"cca5dc33-86fb-4b05-bee6-996a13dd4af9"]
}, Open  ]],
Cell[62879, 1945, 439, 9, 45, "Input",ExpressionUUID->"3ffbcd53-122f-4d73-81b3-d59d09d480d2"],
Cell[63321, 1956, 230, 5, 48, InheritFromParent,ExpressionUUID->"1528a716-dfa8-466f-b744-957a8869da5a"],
Cell[CellGroupData[{
Cell[63576, 1965, 383, 8, 45, InheritFromParent,ExpressionUUID->"703aa83a-3301-41a5-b996-ee5f800c80f5"],
Cell[63962, 1975, 154, 2, 32, "Output",ExpressionUUID->"d0d1fb4d-bda8-47c2-b33b-eadeb85d482b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[64153, 1982, 405, 10, 64, InheritFromParent,ExpressionUUID->"ab139862-0ba4-447f-90a5-f9d5dca91d16"],
Cell[64561, 1994, 158, 3, 32, "Output",ExpressionUUID->"48330423-de5c-45db-bd60-d5c6efbea4e0"]
}, Open  ]],
Cell[64734, 2000, 152, 3, 28, InheritFromParent,ExpressionUUID->"eaf328bb-3ee8-4827-b301-dbbe44b332a4"],
Cell[64889, 2005, 152, 3, 28, InheritFromParent,ExpressionUUID->"bc054df2-e48c-4399-8355-ee204090210a"],
Cell[65044, 2010, 152, 3, 28, InheritFromParent,ExpressionUUID->"16caf22a-9ad8-4a4b-a2c0-0148dd058616"],
Cell[65199, 2015, 154, 3, 28, InheritFromParent,ExpressionUUID->"c65c9f92-81d5-48a6-8843-5ae19f9d285d"],
Cell[CellGroupData[{
Cell[65378, 2022, 552, 13, 82, "Input",ExpressionUUID->"330c0a92-24b2-4206-aa89-152457bd5d77"],
Cell[65933, 2037, 178, 2, 32, "Output",ExpressionUUID->"d1d3e6cd-b863-406c-83bd-14f257907f51"],
Cell[66114, 2041, 178, 2, 32, "Output",ExpressionUUID->"c9445127-fc2f-4b0a-b1bc-8c9d933b4f55"]
}, Open  ]],
Cell[CellGroupData[{
Cell[66329, 2048, 368, 9, 45, "Input",ExpressionUUID->"5f2f0445-b2cc-4ee8-9997-4c24c734c13f"],
Cell[66700, 2059, 184, 4, 32, "Output",ExpressionUUID->"d87611f9-33b0-48b4-9790-5f7a0e786ce5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[66921, 2068, 365, 9, 45, "Input",ExpressionUUID->"21a319b1-bea4-4eb3-a9cb-32edf5ddffa6"],
Cell[67289, 2079, 158, 3, 32, "Output",ExpressionUUID->"1ef7e76d-d8f3-4697-a981-57f5dff675e4"]
}, Open  ]],
Cell[CellGroupData[{
Cell[67484, 2087, 369, 9, 45, "Input",ExpressionUUID->"7f9d2631-e7fb-48f5-8278-0a1524c327fa"],
Cell[67856, 2098, 158, 3, 32, "Output",ExpressionUUID->"d9421c5d-fdc3-4892-b3a9-c35d75b60971"]
}, Open  ]],
Cell[CellGroupData[{
Cell[68051, 2106, 460, 12, 66, "Input",ExpressionUUID->"5d3deb3c-6417-4ebb-a2bd-f5405068a368"],
Cell[68514, 2120, 156, 3, 32, "Output",ExpressionUUID->"bc0af33a-0847-4c3f-b2a8-1ed3db505279"]
}, Open  ]],
Cell[CellGroupData[{
Cell[68707, 2128, 318, 8, 45, "Input",ExpressionUUID->"4306559a-9f67-4b38-96f5-945b1f93c7f9"],
Cell[69028, 2138, 156, 3, 32, "Output",ExpressionUUID->"3cc0ee6f-a298-43d8-b93b-9eb18bc438ef"]
}, Open  ]],
Cell[CellGroupData[{
Cell[69221, 2146, 457, 12, 45, "Input",ExpressionUUID->"fcee02c8-26c1-4d44-aa18-bcdfd09152b3"],
Cell[69681, 2160, 844, 27, 170, "Output",ExpressionUUID->"5edbb7cd-6121-497d-90a6-ba93776e9fab"]
}, Open  ]]
}
]
*)

