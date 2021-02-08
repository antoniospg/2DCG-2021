(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    298323,       8124]
NotebookOptionsPosition[    287794,       7770]
NotebookOutlinePosition[    288242,       7790]
CellTagsIndexPosition[    288199,       7787]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["This is so we can export a demo.", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"SetOptions", "[", 
   RowBox[{"Manipulate", ",", " ", 
    RowBox[{"{", 
     RowBox[{"SaveDefinitions", "\[Rule]", "True"}], "}"}]}], "]"}], 
  ";"}]], "Input"],

Cell["\<\
This creates a vector with each element of Bernstein basis in homogeneous \
parameters. To do algebra, it is useful to define all monomials to have the \
same degree.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"bb", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"t_", ",", " ", "s_"}], "}"}], ",", " ", "n_"}], "]"}], " ", ":=",
   " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"u", ",", "v"}], "}"}], ",", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Binomial", "[", 
         RowBox[{"n", ",", "k"}], "]"}], 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"v", "-", "u"}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{"n", "-", "k"}], ")"}]}], 
        RowBox[{"u", "^", "k"}]}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"k", ",", " ", "0", ",", " ", "n"}], "}"}]}], "]"}], " ", "/.",
      " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"u", "\[Rule]", "t"}], ",", " ", 
       RowBox[{"v", "\[Rule]", "s"}]}], "}"}]}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["For example,", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"bb", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"t", ",", " ", "s"}], "}"}], ",", " ", "2"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"s", "-", "t"}], ")"}], "2"], ",", 
   RowBox[{"2", " ", 
    RowBox[{"(", 
     RowBox[{"s", "-", "t"}], ")"}], " ", "t"}], ",", 
   SuperscriptBox["t", "2"]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"bb", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"t", ",", " ", "s"}], "}"}], ",", " ", "3"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"s", "-", "t"}], ")"}], "3"], ",", 
   RowBox[{"3", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"s", "-", "t"}], ")"}], "2"], " ", "t"}], ",", 
   RowBox[{"3", " ", 
    RowBox[{"(", 
     RowBox[{"s", "-", "t"}], ")"}], " ", 
    SuperscriptBox["t", "2"]}], ",", 
   SuperscriptBox["t", "3"]}], "}"}]], "Output"]
}, Open  ]],

Cell["\<\
To get the traditional non-homogeneous parametrization, simply set the \
homogeneous coordinate to 1\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"bb", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"t", ",", " ", "1"}], "}"}], ",", " ", "2"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "-", "t"}], ")"}], "2"], ",", 
   RowBox[{"2", " ", 
    RowBox[{"(", 
     RowBox[{"1", "-", "t"}], ")"}], " ", "t"}], ",", 
   SuperscriptBox["t", "2"]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"bb", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"t", ",", " ", "1"}], "}"}], ",", " ", "3"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "-", "t"}], ")"}], "3"], ",", 
   RowBox[{"3", " ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"1", "-", "t"}], ")"}], "2"], " ", "t"}], ",", 
   RowBox[{"3", " ", 
    RowBox[{"(", 
     RowBox[{"1", "-", "t"}], ")"}], " ", 
    SuperscriptBox["t", "2"]}], ",", 
   SuperscriptBox["t", "3"]}], "}"}]], "Output"]
}, Open  ]],

Cell["\<\
This creates a vector with each element of the homogeneous Power basis\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"pb", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"t_", ",", " ", "s_"}], "}"}], ",", " ", "n_"}], "]"}], " ", ":=",
   " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"u", ",", "v"}], "}"}], ",", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"v", "^", 
         RowBox[{"(", 
          RowBox[{"n", "-", "k"}], ")"}]}], " ", 
        RowBox[{"u", "^", "k"}]}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"k", ",", " ", "0", ",", " ", "n"}], "}"}]}], "]"}], " ", "/.",
      " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"u", "\[Rule]", "t"}], ",", " ", 
       RowBox[{"v", "\[Rule]", "s"}]}], "}"}]}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"pb", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"t", ",", "s"}], "}"}], ",", " ", "2"}], "]"}], " "}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SuperscriptBox["s", "2"], ",", 
   RowBox[{"s", " ", "t"}], ",", 
   SuperscriptBox["t", "2"]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"pb", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"t", ",", "s"}], "}"}], ",", " ", "3"}], "]"}], " "}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SuperscriptBox["s", "3"], ",", 
   RowBox[{
    SuperscriptBox["s", "2"], " ", "t"}], ",", 
   RowBox[{"s", " ", 
    SuperscriptBox["t", "2"]}], ",", 
   SuperscriptBox["t", "3"]}], "}"}]], "Output"]
}, Open  ]],

Cell[TextData[{
 "We ",
 StyleBox["could",
  FontSlant->"Italic"],
 " use bb[{t,1},2] and bb[{t,1},3] etc directly, but ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " would expand things algebraically. Not only would this take longer, but it \
would produce indeterminate results at t=0 and t=1... "
}], "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"bb1", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"Evaluate", "[", 
   RowBox[{"bb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "1"}], "}"}], ",", " ", "1"}], "]"}], "]"}], 
  " "}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"pb1", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"Evaluate", "[", 
   RowBox[{"pb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "1"}], "}"}], ",", " ", "1"}], "]"}], "]"}], 
  " "}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"bb2", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"Evaluate", "[", 
   RowBox[{"bb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "1"}], "}"}], ",", " ", "2"}], "]"}], "]"}], 
  " "}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"pb2", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"Evaluate", "[", 
   RowBox[{"pb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "1"}], "}"}], ",", " ", "2"}], "]"}], "]"}], 
  " "}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"bb3", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"Evaluate", "[", 
   RowBox[{"bb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "1"}], "}"}], ",", " ", "3"}], "]"}], "]"}], 
  " "}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"pb3", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"Evaluate", "[", 
   RowBox[{"pb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "1"}], "}"}], ",", " ", "3"}], "]"}], "]"}], 
  " "}]], "Input",
 InitializationCell->True],

Cell["\<\
We can plot the Bernstein polynomials (the Bezier blending functions) in the \
interval [0, 1]\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"Evaluate", "[", 
      RowBox[{"bb", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"t", ",", "1"}], "}"}], ",", "n"}], "]"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "0", ",", " ", "1"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
     RowBox[{"PlotLegends", "\[Rule]", "\"\<Expressions\>\""}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", ",", "2"}], "}"}], ",", " ", 
     RowBox[{"Range", "[", "10", "]"}]}], "}"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`n$$], 2}, {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}}}, 
    Typeset`size$$ = {670., {178., 182.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`n$1582$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$1582$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[
        Evaluate[
         $CellContext`bb[{$CellContext`t, 
           1}, $CellContext`n$$]], {$CellContext`t, 0, 1}, 
        PlotRange -> {{0, 1}, {0, 1}}, PlotStyle -> Thick, PlotLegends -> 
        "Expressions", ImageSize -> Large], 
      "Specifications" :> {{{$CellContext`n$$, 2}, {1, 2, 3, 4, 5, 6, 7, 8, 9,
          10}}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{715., {222., 228.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
This gives the matrix that converts from the Power basis to the Bernstein \
basis\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"p2b", "[", "n_", "]"}], " ", ":=", 
  RowBox[{"Transpose", "[", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"s", ",", "t"}], "}"}], ",", " ", 
     RowBox[{"Map", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Coefficient", "[", 
         RowBox[{"#", ",", " ", 
          RowBox[{"pb", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"t", ",", "s"}], "}"}], ",", "n"}], "]"}]}], "]"}], 
        "&"}], ",", " ", 
       RowBox[{"bb", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"t", ",", "s"}], "}"}], ",", "n"}], "]"}]}], "]"}]}], "]"}],
    "]"}]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"p2b", "[", "1", "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0"},
     {
      RowBox[{"-", "1"}], "1"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"p2b", "[", "2", "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", "0"},
     {
      RowBox[{"-", "2"}], "2", "0"},
     {"1", 
      RowBox[{"-", "2"}], "1"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"p2b", "[", "3", "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", "0", "0"},
     {
      RowBox[{"-", "3"}], "3", "0", "0"},
     {"3", 
      RowBox[{"-", "6"}], "3", "0"},
     {
      RowBox[{"-", "1"}], "3", 
      RowBox[{"-", "3"}], "1"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell["Check that this works", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"pb", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"t", ",", "s"}], "}"}], ",", " ", "n"}], "]"}], ".", 
      RowBox[{"p2b", "[", "n", "]"}]}], " ", "-", " ", 
     RowBox[{"bb", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", "s"}], "}"}], ",", "n"}], "]"}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"n", ",", " ", "2", ",", " ", "6"}], "}"}]}], "]"}], " ", "//", 
  " ", "Simplify"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}],
     "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell["Obviously, this performs the inverse operation", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"b2p", "[", "n_", "]"}], " ", ":=", " ", 
  RowBox[{"Inverse", "[", 
   RowBox[{"p2b", "[", "n", "]"}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["This gives a matrix with control points", "Text"],

Cell[BoxData[
 StyleBox[
  RowBox[{
   RowBox[{"epoints", "[", "n_", "]"}], " ", ":=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"Map", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Symbol", "[", 
         RowBox[{"#", " ", "<>", 
          RowBox[{"ToString", "[", "k", "]"}]}], "]"}], "&"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"\"\<x\>\"", ",", " ", "\"\<y\>\""}], "}"}]}], "]"}], ",", 
     " ", 
     RowBox[{"{", 
      RowBox[{"k", ",", " ", "0", ",", " ", "n"}], "}"}]}], "]"}]}],
  InitializationCell->True]], "Input",
 InitializationCell->True],

Cell["For example, for the quadratic and cubic we would have ", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"epoints", "[", "2", "]"}], " ", "//", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"x0", "y0"},
     {"x1", "y1"},
     {"x2", "y2"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"epoints", "[", "3", "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"x0", "y0"},
     {"x1", "y1"},
     {"x2", "y2"},
     {"x3", "y3"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell["So the quadratic curve would be", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"bb2", "[", "t", "]"}], ".", 
  RowBox[{"epoints", "[", "2", "]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "t"}], ")"}], "2"], " ", "x0"}], "+", 
    RowBox[{"2", " ", 
     RowBox[{"(", 
      RowBox[{"1", "-", "t"}], ")"}], " ", "t", " ", "x1"}], "+", 
    RowBox[{
     SuperscriptBox["t", "2"], " ", "x2"}]}], ",", 
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "t"}], ")"}], "2"], " ", "y0"}], "+", 
    RowBox[{"2", " ", 
     RowBox[{"(", 
      RowBox[{"1", "-", "t"}], ")"}], " ", "t", " ", "y1"}], "+", 
    RowBox[{
     SuperscriptBox["t", "2"], " ", "y2"}]}]}], "}"}]], "Output"]
}, Open  ]],

Cell["And the cubic,", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"bb3", "[", "t", "]"}], ".", 
  RowBox[{"epoints", "[", "3", "]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "t"}], ")"}], "3"], " ", "x0"}], "+", 
    RowBox[{"3", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "t"}], ")"}], "2"], " ", "t", " ", "x1"}], "+", 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{"1", "-", "t"}], ")"}], " ", 
     SuperscriptBox["t", "2"], " ", "x2"}], "+", 
    RowBox[{
     SuperscriptBox["t", "3"], " ", "x3"}]}], ",", 
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "t"}], ")"}], "3"], " ", "y0"}], "+", 
    RowBox[{"3", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "t"}], ")"}], "2"], " ", "t", " ", "y1"}], "+", 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{"1", "-", "t"}], ")"}], " ", 
     SuperscriptBox["t", "2"], " ", "y2"}], "+", 
    RowBox[{
     SuperscriptBox["t", "3"], " ", "y3"}]}]}], "}"}]], "Output"]
}, Open  ]],

Cell["\<\
This is a function that applies one iteration of the De Casteljau algorithm. \
It takes n control points, and returns the n-1 control points at the next \
level.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"blossomstep", "[", 
   RowBox[{"m_", ",", " ", "t_"}], "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"m", "[", 
     RowBox[{"[", 
      RowBox[{"1", ";;", 
       RowBox[{"-", "2"}]}], "]"}], "]"}], " ", 
    RowBox[{"(", 
     RowBox[{"1", "-", "t"}], ")"}]}], " ", "+", " ", 
   RowBox[{
    RowBox[{"m", "[", 
     RowBox[{"[", 
      RowBox[{"2", ";;", 
       RowBox[{"-", "1"}]}], "]"}], "]"}], " ", "t"}]}]}]], "Input",
 InitializationCell->True],

Cell["\<\
This applies the De Casteljau algorithm until it ends in a single point, \
evaluating the curve completely at parameter t.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"blossomevaluate", "[", 
   RowBox[{"m_", ",", " ", "t_"}], "]"}], " ", ":=", " ", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Length", "[", "m", "]"}], "\[Equal]", "1"}], ",", " ", 
    RowBox[{"m", "[", 
     RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
    RowBox[{"blossomevaluate", "[", 
     RowBox[{
      RowBox[{"blossomstep", "[", 
       RowBox[{"m", ",", "t"}], "]"}], ",", "t"}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True],

Cell["\<\
And now we can plot the De Casteljau algorithm for the quadratic.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "5"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"6", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"mt", "=", 
           RowBox[{"blossomstep", "[", 
            RowBox[{"m", ",", "t"}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"PointSize", "[", "Large", "]"}], ",", "Black", ",", 
              " ", 
              RowBox[{"Point", "[", "m", "]"}], ",", "\[IndentingNewLine]", 
              "Blue", ",", 
              RowBox[{"Point", "[", "mt", "]"}], ",", "\[IndentingNewLine]", 
              "Black", ",", 
              RowBox[{"Line", "[", "m", "]"}], ",", "\[IndentingNewLine]", 
              "Blue", ",", " ", 
              RowBox[{"Line", "[", "mt", "]"}], ",", " ", 
              "\[IndentingNewLine]", "Red", ",", 
              RowBox[{"Point", "[", 
               RowBox[{
                RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], "]"}]}], "}"}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}], 
           ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"t", ",", "Large"}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", 
                RowBox[{"-", "1"}]}], "}"}]}], "]"}], "]"}]}], "]"}]}], 
        "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", " ", "0.5"}], "}"}], ",", "0", ",", "1"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
    6, -3}}, $CellContext`t$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, 5}, {6, -3}}}, Automatic}, {{
       Hold[$CellContext`t$$], 0.5}, 0, 1}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`t$1755$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
         6, -3}}, $CellContext`t$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$1755$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`mt$ = $CellContext`blossomstep[$CellContext`m$, \
$CellContext`t$$]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb2[$CellContext`t$$], $CellContext`m$], \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red],
            ImageSize -> Large, Axes -> False], 
          Graphics[{
            PointSize[Large], Black, 
            Point[$CellContext`m$], Blue, 
            Point[$CellContext`mt$], Black, 
            Line[$CellContext`m$], Blue, 
            Line[$CellContext`mt$], Red, 
            Point[
             Dot[
              $CellContext`bb2[$CellContext`t$$], $CellContext`m$]]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], 
          Graphics[
           Text[
            Style[$CellContext`t$$, Large], {0, -1}]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, 5}, {6, -3}}}, 
         Automatic, ControlType -> Locator}, {{$CellContext`t$$, 0.5}, 0, 1}},
       "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`blossomstep[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := Part[$CellContext`m, 
           Span[1, -2]] (1 - $CellContext`t) + Part[$CellContext`m, 
           Span[2, -1]] $CellContext`t, $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["Same thing for the cubic.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "7"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"7", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"mt", "=", 
           RowBox[{"blossomstep", "[", 
            RowBox[{"m", ",", "t"}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"mtt", " ", "=", " ", 
             RowBox[{"blossomstep", "[", 
              RowBox[{"mt", ",", "t"}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Show", "[", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"ParametricPlot", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
               RowBox[{"{", 
                RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
               RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
               RowBox[{"PlotStyle", "\[Rule]", 
                RowBox[{"Directive", "[", 
                 RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
               RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
               RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Graphics", "[", 
              RowBox[{"{", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"PointSize", "[", "Large", "]"}], ",", "Black", ",", 
                " ", 
                RowBox[{"Point", "[", "m", "]"}], ",", "\[IndentingNewLine]", 
                "Blue", ",", 
                RowBox[{"Point", "[", "mt", "]"}], ",", "\[IndentingNewLine]", 
                RowBox[{"Darker", "[", "Green", "]"}], ",", 
                RowBox[{"Point", "[", "mtt", "]"}], ",", 
                "\[IndentingNewLine]", "Black", ",", 
                RowBox[{"Line", "[", "m", "]"}], ",", "\[IndentingNewLine]", 
                "Blue", ",", " ", 
                RowBox[{"Line", "[", "mt", "]"}], ",", "\[IndentingNewLine]", 
                
                RowBox[{"Darker", "[", "Green", "]"}], ",", " ", 
                RowBox[{"Line", "[", "mtt", "]"}], ",", " ", 
                "\[IndentingNewLine]", "Red", ",", 
                RowBox[{"Point", "[", 
                 RowBox[{
                  RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], "]"}]}], "}"}], 
              "]"}], ",", "\[IndentingNewLine]", 
             RowBox[{"Graphics", "[", 
              RowBox[{"Table", "[", 
               RowBox[{
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                  ",", 
                  RowBox[{
                   RowBox[{"pt", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "+", 
                   RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"i", ",", "1", ",", 
                  RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}],
              ",", "\[IndentingNewLine]", 
             RowBox[{"Graphics", "[", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{"t", ",", "Large"}], "]"}], ",", 
                RowBox[{"{", 
                 RowBox[{"0", ",", 
                  RowBox[{"-", "1"}]}], "}"}]}], "]"}], "]"}]}], "]"}]}], 
          "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", " ", "0.5"}], "}"}], ",", "0", ",", "1"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
    7, -3}}, $CellContext`t$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-7, -3}, {-3, 5}, {3, 5}, {7, -3}}}, 
      Automatic}, {{
       Hold[$CellContext`t$$], 0.5}, 0, 1}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`t$1818$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
         7, -3}}, $CellContext`t$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$1818$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`mt$ = $CellContext`blossomstep[$CellContext`m$, \
$CellContext`t$$]}, 
         Module[{$CellContext`mtt$ = \
$CellContext`blossomstep[$CellContext`mt$, $CellContext`t$$]}, 
          Show[
           ParametricPlot[
            Dot[
             $CellContext`bb3[$CellContext`t$$], $CellContext`m$], \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red],
             ImageSize -> Large, Axes -> False], 
           Graphics[{
             PointSize[Large], Black, 
             Point[$CellContext`m$], Blue, 
             Point[$CellContext`mt$], 
             Darker[Green], 
             Point[$CellContext`mtt$], Black, 
             Line[$CellContext`m$], Blue, 
             Line[$CellContext`mt$], 
             Darker[Green], 
             Line[$CellContext`mtt$], Red, 
             Point[
              Dot[
               $CellContext`bb3[$CellContext`t$$], $CellContext`m$]]}], 
           Graphics[
            Table[
             Text[
              Style[
               Subscript[$CellContext`p, $CellContext`i - 1], Large], 
              Part[$CellContext`pt$$, $CellContext`i] + {0, 
               1}], {$CellContext`i, 1, 
              Length[$CellContext`pt$$]}]], 
           Graphics[
            Text[
             Style[$CellContext`t$$, Large], {0, -1}]]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-7, -3}, {-3, 5}, {3, 5}, {
          7, -3}}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`t$$, 0.5}, 0, 1}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`blossomstep[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := Part[$CellContext`m, 
           Span[1, -2]] (1 - $CellContext`t) + Part[$CellContext`m, 
           Span[2, -1]] $CellContext`t, $CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
This is a function that computes a higher degree B\[EAcute]zier that exactly \
matches a given B\[EAcute]zier.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"elevate", "[", "m_", "]"}], " ", ":=", " ", 
  RowBox[{"Append", "[", 
   RowBox[{
    RowBox[{"Prepend", "[", 
     RowBox[{
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"i", "-", "1"}], ")"}], "/", 
           RowBox[{"Length", "[", "m", "]"}]}], " ", 
          RowBox[{"m", "[", 
           RowBox[{"[", 
            RowBox[{"i", "-", "1"}], "]"}], "]"}]}], " ", "+", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"1", "-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"i", "-", "1"}], ")"}], "/", 
             RowBox[{"Length", "[", "m", "]"}]}]}], ")"}], " ", 
          RowBox[{"m", "[", 
           RowBox[{"[", "i", "]"}], "]"}]}]}], ",", 
        RowBox[{"{", 
         RowBox[{"i", ",", " ", "2", ",", 
          RowBox[{"Length", "[", "m", "]"}]}], "}"}]}], "]"}], ",", " ", 
      RowBox[{"First", "[", "m", "]"}]}], "]"}], ",", " ", 
    RowBox[{"Last", "[", "m", "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "5"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"6", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"me", " ", "=", " ", 
           RowBox[{"elevate", "[", "m", "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{
                RowBox[{"AbsoluteThickness", "[", "5", "]"}], ",", "Red"}], 
               "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "me"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{
                RowBox[{"AbsoluteThickness", "[", "2", "]"}], ",", "Blue"}], 
               "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"AbsolutePointSize", "[", "10", "]"}], ",", "Red", ",", 
              " ", 
              RowBox[{"Point", "[", "m", "]"}], ",", 
              RowBox[{"Point", "[", 
               RowBox[{
                RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"AbsolutePointSize", "[", "4", "]"}], ",", "Blue", ",", 
              " ", 
              RowBox[{"Point", "[", "me", "]"}], ",", " ", 
              RowBox[{"Point", "[", 
               RowBox[{
                RowBox[{"bb3", "[", "t", "]"}], ".", "me"}], "]"}]}], 
             "\[IndentingNewLine]", "}"}], "]"}], ",", "\[IndentingNewLine]", 
           
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"m", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "m", "]"}]}], "}"}]}], "]"}], "]"}], 
           ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"q", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"me", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "-", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "me", "]"}]}], "}"}]}], "]"}], "]"}], 
           ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{"t", ",", "Large"}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", 
                RowBox[{"-", "1"}]}], "}"}]}], "]"}], "]"}]}], "]"}]}], 
        "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", " ", "0.5"}], "}"}], ",", "0", ",", "1"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
    6, -3}}, $CellContext`t$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, 5}, {6, -3}}}, Automatic}, {{
       Hold[$CellContext`t$$], 0.5}, 0, 1}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`t$1876$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
         6, -3}}, $CellContext`t$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$1876$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`me$ = $CellContext`elevate[$CellContext`m$]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb2[$CellContext`t$$], $CellContext`m$], \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[
             AbsoluteThickness[5], Red], ImageSize -> Large, Axes -> False], 
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t$$], $CellContext`me$], \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[
             AbsoluteThickness[2], Blue], ImageSize -> Large, Axes -> False], 
          
          Graphics[{
            AbsolutePointSize[10], Red, 
            Point[$CellContext`m$], 
            Point[
             Dot[
              $CellContext`bb2[$CellContext`t$$], $CellContext`m$]], 
            AbsolutePointSize[4], Blue, 
            Point[$CellContext`me$], 
            Point[
             Dot[
              $CellContext`bb3[$CellContext`t$$], $CellContext`me$]]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`m$, $CellContext`i] + {0, 1}], {$CellContext`i,
              1, 
             Length[$CellContext`m$]}]], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`q, $CellContext`i - 1], Large], 
             Part[$CellContext`me$, $CellContext`i] - {0, 
             1}], {$CellContext`i, 1, 
             Length[$CellContext`me$]}]], 
          Graphics[
           Text[
            Style[$CellContext`t$$, Large], {0, -1}]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, 5}, {6, -3}}}, 
         Automatic, ControlType -> Locator}, {{$CellContext`t$$, 0.5}, 0, 1}},
       "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`elevate[
         Pattern[$CellContext`m, 
          Blank[]]] := Append[
         Prepend[
          
          Table[(($CellContext`i - 1)/Length[$CellContext`m]) 
            Part[$CellContext`m, $CellContext`i - 1] + (
             1 - ($CellContext`i - 1)/Length[$CellContext`m]) 
            Part[$CellContext`m, $CellContext`i], {$CellContext`i, 2, 
            Length[$CellContext`m]}], 
          First[$CellContext`m]], 
         Last[$CellContext`m]], $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, \
$CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell[TextData[{
 "And here is a function that computes the product between two B\[EAcute]zier \
segments.\nThe key relationship is that the product of two Bernstein \
polynomials b[m,i] * b[n,j] is given by b[m+n,i+j] * ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", GridBox[{
      {"m"},
      {"i"}
     }], ")"}], TraditionalForm]]],
 " ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"(", GridBox[{
       {"n"},
       {"j"}
      }], ")"}], "/", 
    RowBox[{"(", GridBox[{
       {
        RowBox[{"m", "+", "n"}]},
       {
        RowBox[{"i", "+", "j"}]}
      }], ")"}]}], TraditionalForm]]]
}], "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"product", "[", 
   RowBox[{"p_", ",", "q_"}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"m", "=", 
       RowBox[{
        RowBox[{"Length", "[", "p", "]"}], "-", "1"}]}], ",", " ", 
      RowBox[{"n", "=", 
       RowBox[{
        RowBox[{"Length", "[", "q", "]"}], "-", "1"}]}]}], "}"}], ",", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Binomial", "[", 
         RowBox[{
          RowBox[{"m", "+", "n"}], ",", "k"}], "]"}], "^", 
        RowBox[{"(", 
         RowBox[{"-", "1"}], ")"}]}], 
       RowBox[{"Sum", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Binomial", "[", 
           RowBox[{"m", ",", "i"}], "]"}], 
          RowBox[{"Binomial", "[", 
           RowBox[{"n", ",", 
            RowBox[{"k", "-", "i"}]}], "]"}], " ", 
          RowBox[{"p", "[", 
           RowBox[{"[", 
            RowBox[{"i", "+", "1"}], "]"}], "]"}], " ", 
          RowBox[{"q", "[", 
           RowBox[{"[", 
            RowBox[{"k", "-", "i", "+", "1"}], "]"}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", 
           RowBox[{"Max", "[", 
            RowBox[{"0", ",", 
             RowBox[{"k", "-", "n"}]}], "]"}], ",", 
           RowBox[{"Min", "[", 
            RowBox[{"m", ",", "k"}], "]"}]}], "}"}]}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"k", ",", "0", ",", 
        RowBox[{"m", "+", "n"}]}], "}"}]}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
This is a function that computes the control-points of the derivative of a \
degree n B\[EAcute]zier.. Recall it is also another B\[EAcute]zier curve, of \
degree n-1.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"derivative", "[", "m_", "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"m", "[", 
      RowBox[{"[", 
       RowBox[{"2", ";;"}], "]"}], "]"}], "-", 
     RowBox[{"m", "[", 
      RowBox[{"[", 
       RowBox[{";;", 
        RowBox[{"-", "2"}]}], "]"}], "]"}]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"Length", "[", "m", "]"}], "-", "1"}], ")"}]}]}]], "Input",
 InitializationCell->True],

Cell["Check that this works", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"derivative", "[", 
   RowBox[{"epoints", "[", "2", "]"}], "]"}], " ", "//", " ", 
  "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "x0"}], "+", "x1"}], ")"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "y0"}], "+", "y1"}], ")"}]}]},
     {
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "x1"}], "+", "x2"}], ")"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "y1"}], "+", "y2"}], ")"}]}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell["Yup. Also for the cubic.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"derivative", "[", 
   RowBox[{"epoints", "[", "3", "]"}], "]"}], " ", "//", " ", 
  "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{"3", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "x0"}], "+", "x1"}], ")"}]}], 
      RowBox[{"3", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "y0"}], "+", "y1"}], ")"}]}]},
     {
      RowBox[{"3", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "x1"}], "+", "x2"}], ")"}]}], 
      RowBox[{"3", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "y1"}], "+", "y2"}], ")"}]}]},
     {
      RowBox[{"3", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "x2"}], "+", "x3"}], ")"}]}], 
      RowBox[{"3", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "y2"}], "+", "y3"}], ")"}]}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell["\<\
Now we can draw the tangent vector to the curve at each point. We will draw \
it at 1/3 of the the magnitude so it looks prettier. Notice how the magnitude \
changes along the curve.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "5"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"6", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"dm", "=", 
           RowBox[{"derivative", "[", "m", "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Line", "[", "m", "]"}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}], 
           ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"PointSize", "[", "Large", "]"}], ",", "Red", ",", 
              RowBox[{"Point", "[", 
               RowBox[{
                RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
              "\[IndentingNewLine]", "Blue", ",", "Thick", ",", 
              RowBox[{"Arrowheads", "[", "Medium", "]"}], ",", 
              RowBox[{"Arrow", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", " ", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], "+", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"bb1", "[", "t", "]"}], ".", "dm"}], "/", 
                   "2"}]}]}], "}"}], "]"}]}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{"t", ",", "Large"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"-", "1"}]}], "}"}]}], "]"}], "}"}], "]"}]}], 
          "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", " ", "0.5"}], "}"}], ",", "0", ",", "1"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
    6, -3}}, $CellContext`t$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, 5}, {6, -3}}}, Automatic}, {{
       Hold[$CellContext`t$$], 0.5}, 0, 1}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`t$1961$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
         6, -3}}, $CellContext`t$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$1961$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`dm$ = $CellContext`derivative[$CellContext`m$]}, 
         
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb2[$CellContext`t$$], $CellContext`m$], \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red],
            ImageSize -> Large, Axes -> False], 
          Graphics[{
            Line[$CellContext`m$]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], 
          Graphics[{
            PointSize[Large], Red, 
            Point[
             Dot[
              $CellContext`bb2[$CellContext`t$$], $CellContext`m$]], Blue, 
            Thick, 
            Arrowheads[Medium], 
            Arrow[{
              Dot[
               $CellContext`bb2[$CellContext`t$$], $CellContext`m$], Dot[
                $CellContext`bb2[$CellContext`t$$], $CellContext`m$] + Dot[
                 $CellContext`bb1[$CellContext`t$$], $CellContext`dm$]/2}]}], 
          
          Graphics[{
            Text[
             Style[$CellContext`t$$, Large], {0, -1}]}]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, 5}, {6, -3}}}, 
         Automatic, ControlType -> Locator}, {{$CellContext`t$$, 0.5}, 0, 1}},
       "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`derivative[
         Pattern[$CellContext`m, 
          Blank[]]] := (Part[$CellContext`m, 
           Span[2, All]] - Part[$CellContext`m, 
          Span[1, -2]]) (Length[$CellContext`m] - 1), $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`bb1[
         Pattern[$CellContext`t, 
          Blank[]]] := {1 - $CellContext`t, $CellContext`t}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["Also for the cubic.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "7"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"7", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"dm", "=", 
           RowBox[{"derivative", "[", "m", "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Line", "[", "m", "]"}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}], 
           ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"PointSize", "[", "Large", "]"}], ",", "Red", ",", 
              RowBox[{"Point", "[", 
               RowBox[{
                RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
              "\[IndentingNewLine]", "Blue", ",", "Thick", ",", 
              RowBox[{"Arrowheads", "[", "Medium", "]"}], ",", 
              RowBox[{"Arrow", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", " ", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], "+", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"bb2", "[", "t", "]"}], ".", "dm"}], "/", 
                   "3"}]}]}], "}"}], "]"}]}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{"t", ",", "Large"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"-", "1"}]}], "}"}]}], "]"}], "}"}], "]"}]}], 
          "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", " ", "0.5"}], "}"}], ",", "0", ",", "1"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
    7, -3}}, $CellContext`t$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-7, -3}, {-3, 5}, {3, 5}, {7, -3}}}, 
      Automatic}, {{
       Hold[$CellContext`t$$], 0.5}, 0, 1}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`t$2017$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
         7, -3}}, $CellContext`t$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$2017$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`dm$ = $CellContext`derivative[$CellContext`m$]}, 
         
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t$$], $CellContext`m$], \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red],
            ImageSize -> Large, Axes -> False], 
          Graphics[{
            Line[$CellContext`m$]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], 
          Graphics[{
            PointSize[Large], Red, 
            Point[
             Dot[
              $CellContext`bb3[$CellContext`t$$], $CellContext`m$]], Blue, 
            Thick, 
            Arrowheads[Medium], 
            Arrow[{
              Dot[
               $CellContext`bb3[$CellContext`t$$], $CellContext`m$], Dot[
                $CellContext`bb3[$CellContext`t$$], $CellContext`m$] + Dot[
                 $CellContext`bb2[$CellContext`t$$], $CellContext`dm$]/3}]}], 
          
          Graphics[{
            Text[
             Style[$CellContext`t$$, Large], {0, -1}]}]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-7, -3}, {-3, 5}, {3, 5}, {
          7, -3}}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`t$$, 0.5}, 0, 1}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`derivative[
         Pattern[$CellContext`m, 
          Blank[]]] := (Part[$CellContext`m, 
           Span[2, All]] - Part[$CellContext`m, 
          Span[1, -2]]) (Length[$CellContext`m] - 1), $CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
Now we want to find the control-points corresponding to a piece of the curve. \
I.e., we had \[Gamma](t), t in [0,1], and now we want to have a new curve \
\[Alpha](u), such that when u is in [0,1], t is in [p,q], We have \[Alpha](u) \
= \[Gamma]( (1-u) p + u q ) = \[Gamma](p + u (q - p)) = \[Gamma](a u + b). \
This is an affine reparametrization. When we apply this to our Power basis of \
degree n, each basis element changes to another element of degree at most n. \
\
\>", "Text"],

Cell["For example, applying it to quadratic basis", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"pb2", "[", "t", "]"}], " ", "//", " ", "Expand"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "t", ",", 
   SuperscriptBox["t", "2"]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"pb2", "[", 
   RowBox[{
    RowBox[{"a", " ", "t"}], " ", "+", " ", "b"}], "]"}], " ", "//", " ", 
  "Expand"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   RowBox[{"b", "+", 
    RowBox[{"a", " ", "t"}]}], ",", 
   RowBox[{
    SuperscriptBox["b", "2"], "+", 
    RowBox[{"2", " ", "a", " ", "b", " ", "t"}], "+", 
    RowBox[{
     SuperscriptBox["a", "2"], " ", 
     SuperscriptBox["t", "2"]}]}]}], "}"}]], "Output"]
}, Open  ]],

Cell["Or the cubic", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"pb3", "[", "t", "]"}], " ", "//", " ", "Expand"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", "t", ",", 
   SuperscriptBox["t", "2"], ",", 
   SuperscriptBox["t", "3"]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"pb3", "[", 
   RowBox[{
    RowBox[{"a", " ", "t"}], " ", "+", " ", "b"}], "]"}], " ", "//", " ", 
  "Expand"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   RowBox[{"b", "+", 
    RowBox[{"a", " ", "t"}]}], ",", 
   RowBox[{
    SuperscriptBox["b", "2"], "+", 
    RowBox[{"2", " ", "a", " ", "b", " ", "t"}], "+", 
    RowBox[{
     SuperscriptBox["a", "2"], " ", 
     SuperscriptBox["t", "2"]}]}], ",", 
   RowBox[{
    SuperscriptBox["b", "3"], "+", 
    RowBox[{"3", " ", "a", " ", 
     SuperscriptBox["b", "2"], " ", "t"}], "+", 
    RowBox[{"3", " ", 
     SuperscriptBox["a", "2"], " ", "b", " ", 
     SuperscriptBox["t", "2"]}], "+", 
    RowBox[{
     SuperscriptBox["a", "3"], " ", 
     SuperscriptBox["t", "3"]}]}]}], "}"}]], "Output"]
}, Open  ]],

Cell["\<\
The interesting thing is that each of these new polynomials can be written in \
the Power basis, and there is a matrix that does this. Here is the matrix for \
the quadratic.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"pb2", "[", "t", "]"}], ".", 
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"1", "b", 
        SuperscriptBox["b", "2"]},
       {"0", "a", 
        RowBox[{"2", " ", "a", " ", "b"}]},
       {"0", "0", 
        SuperscriptBox["a", "2"]}
      },
      GridBoxAlignment->{
       "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
        "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.7]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}], " ", 
   "-", " ", 
   RowBox[{"pb2", "[", 
    RowBox[{
     RowBox[{"a", " ", "t"}], " ", "+", " ", "b"}], "]"}]}], " ", "//", " ", 
  "Simplify"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", "0"}], "}"}]], "Output"]
}, Open  ]],

Cell["\<\
The idea also works for the cubic (though with a different matrix)\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{" ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"pb3", "[", "t", "]"}], ".", 
     RowBox[{"(", "\[NoBreak]", GridBox[{
        {"1", "b", 
         SuperscriptBox["b", "2"], 
         SuperscriptBox["b", "3"]},
        {"0", "a", 
         RowBox[{"2", " ", "a", " ", "b"}], 
         RowBox[{"3", " ", "a", " ", 
          SuperscriptBox["b", "2"]}]},
        {"0", "0", 
         SuperscriptBox["a", "2"], 
         RowBox[{"3", " ", 
          SuperscriptBox["a", "2"], " ", "b"}]},
        {"0", "0", "0", 
         SuperscriptBox["a", "3"]}
       },
       GridBoxAlignment->{
        "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
         "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
       GridBoxSpacings->{"Columns" -> {
           Offset[0.27999999999999997`], {
            Offset[0.7]}, 
           Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
           Offset[0.2], {
            Offset[0.4]}, 
           Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}], " ", 
    "-", " ", 
    RowBox[{"pb3", "[", 
     RowBox[{
      RowBox[{"a", " ", "t"}], " ", "+", " ", "b"}], "]"}]}], " ", "//", " ", 
   "Simplify"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}]], "Output"]
}, Open  ]],

Cell["\<\
Here is a function that computes this matrix in the general case\
\>", "Text"],

Cell[BoxData[
 StyleBox[
  RowBox[{
   RowBox[{"affinereparametrization", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a_", ",", " ", "b_"}], "}"}], ",", " ", "n_"}], "]"}], " ", ":=", 
   RowBox[{"Transpose", "[", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"t", ",", "s"}], "}"}], ",", "  ", 
      RowBox[{"Map", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Coefficient", "[", " ", 
          RowBox[{"#", ",", " ", 
           RowBox[{"pb", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"t", ",", "s"}], "}"}], ",", "n"}], "]"}]}], "]"}], 
         "&"}], ",", " ", 
        RowBox[{"pb", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"a", " ", "t"}], " ", "+", " ", 
             RowBox[{"b", " ", "s"}]}], ",", "s"}], "}"}], ",", "n"}], 
         "]"}]}], "]"}]}], "]"}], "]"}]}],
  InitializationCell->True]], "Input",
 InitializationCell->True],

Cell["Check that this works", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"a", ",", " ", "b", ",", " ", "s", ",", " ", "t"}], "}"}], ",", 
    " ", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"pb", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"s", ",", "1"}], "}"}], ",", " ", "n"}], "]"}], ".", 
        RowBox[{"affinereparametrization", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"a", ",", " ", "b"}], "}"}], ",", " ", "n"}], "]"}]}], " ",
        "-", " ", 
       RowBox[{"pb", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"a", " ", "s"}], " ", "+", " ", "b"}], ",", " ", "1"}], 
          "}"}], ",", "n"}], "]"}]}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"n", ",", " ", "2", ",", " ", "6"}], "}"}]}], "]"}]}], "]"}], 
  " ", "//", " ", "Simplify"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}],
     "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell["\<\
So here is what our reparametrization looks like, with a = (q - p) and b = p. \
We had the following expressions for the curve, using Bernstein and Power \
basis as the polynomials:\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"bb2", "[", "t", "]"}], ".", 
    RowBox[{"epoints", "[", "2", "]"}]}], " ", "==", 
   RowBox[{
    RowBox[{"pb2", "[", "t", "]"}], ".", " ", 
    RowBox[{"p2b", "[", "2", "]"}], ".", 
    RowBox[{"epoints", "[", "2", "]"}]}]}], " ", "//", " ", 
  "Simplify"}]], "Input"],

Cell[BoxData["True"], "Output"]
}, Open  ]],

Cell["\<\
We then applied a reparametrization. On the left side, we reparameterize the \
Bernstein basis directly. On the right, we use the reparametrization matrix \
for the Power basis:\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"bb2", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"q", "-", "p"}], ")"}], " ", "t"}], " ", "+", "p"}], "]"}], 
    ".", 
    RowBox[{"epoints", "[", "2", "]"}]}], " ", "==", " ", 
   RowBox[{
    RowBox[{"pb2", "[", "t", "]"}], ".", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"affinereparametrization", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"q", "-", "p"}], ",", "p"}], "}"}], ",", "2"}], "]"}], ".", 
      
      RowBox[{"p2b", "[", "2", "]"}], ".", 
      RowBox[{"epoints", "[", "2", "]"}]}], ")"}]}]}], " ", "//", " ", 
  "Simplify"}]], "Input"],

Cell[BoxData["True"], "Output"]
}, Open  ]],

Cell["\<\
The expression in parentheses on the right is the control point matrix for \
the power basis. We want the control points for use with the Bernstein basis. \
So we write\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"bb2", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"q", "-", "p"}], ")"}], " ", "t"}], " ", "+", "p"}], "]"}], 
    ".", 
    RowBox[{"epoints", "[", "2", "]"}]}], " ", "\[Equal]", " ", 
   RowBox[{
    RowBox[{"bb2", "[", "t", "]"}], ".", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"b2p", "[", "2", "]"}], ".", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"affinereparametrization", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"q", "-", "p"}], ",", "p"}], "}"}], ",", "2"}], "]"}], 
        ".", 
        RowBox[{"p2b", "[", "2", "]"}], ".", 
        RowBox[{"epoints", "[", "2", "]"}]}], ")"}]}], ")"}]}]}], "//", " ", 
  "Simplify"}]], "Input"],

Cell[BoxData["True"], "Output"]
}, Open  ]],

Cell["And the control point matrix must therefore be", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"b2p", "[", "2", "]"}], ".", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"affinereparametrization", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"q", "-", "p"}], ",", "p"}], "}"}], ",", "2"}], "]"}], ".", 
       RowBox[{"p2b", "[", "2", "]"}], ".", 
       RowBox[{"epoints", "[", "2", "]"}]}], ")"}]}], ")"}], " ", "//", " ", 
   "Simplify"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "p"}], ")"}], "2"], " ", "x0"}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "p"}], ")"}], " ", "x1"}], "+", 
          RowBox[{"p", " ", "x2"}]}], ")"}]}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "p"}], ")"}], "2"], " ", "y0"}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "p"}], ")"}], " ", "y1"}], "+", 
          RowBox[{"p", " ", "y2"}]}], ")"}]}]}]},
     {
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "p"}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "q"}], ")"}], " ", "x0"}], "+", 
       RowBox[{"q", " ", "x1"}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"x1", "-", 
          RowBox[{"2", " ", "q", " ", "x1"}], "+", 
          RowBox[{"q", " ", "x2"}]}], ")"}]}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "p"}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "q"}], ")"}], " ", "y0"}], "+", 
       RowBox[{"q", " ", "y1"}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"y1", "-", 
          RowBox[{"2", " ", "q", " ", "y1"}], "+", 
          RowBox[{"q", " ", "y2"}]}], ")"}]}]}]},
     {
      RowBox[{
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "q"}], ")"}], "2"], " ", "x0"}], "+", 
       RowBox[{"q", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "q"}], ")"}], " ", "x1"}], "+", 
          RowBox[{"q", " ", "x2"}]}], ")"}]}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "q"}], ")"}], "2"], " ", "y0"}], "+", 
       RowBox[{"q", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "q"}], ")"}], " ", "y1"}], "+", 
          RowBox[{"q", " ", "y2"}]}], ")"}]}]}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell["In the cubic case this looks even nastier.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"b2p", "[", "3", "]"}], ".", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"affinereparametrization", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"q", "-", "p"}], ",", "p"}], "}"}], ",", "3"}], "]"}], ".", 
       RowBox[{"p2b", "[", "3", "]"}], ".", 
       RowBox[{"epoints", "[", "3", "]"}]}], ")"}]}], ")"}], "//", " ", 
   "Simplify"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "p"}], ")"}], "3"]}], " ", "x0"}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"3", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "p"}], ")"}], "2"], " ", "x1"}], "+", 
          RowBox[{"p", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"3", " ", "x2"}], "-", 
             RowBox[{"3", " ", "p", " ", "x2"}], "+", 
             RowBox[{"p", " ", "x3"}]}], ")"}]}]}], ")"}]}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "p"}], ")"}], "3"]}], " ", "y0"}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"3", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "p"}], ")"}], "2"], " ", "y1"}], "+", 
          RowBox[{"p", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"3", " ", "y2"}], "-", 
             RowBox[{"3", " ", "p", " ", "y2"}], "+", 
             RowBox[{"p", " ", "y3"}]}], ")"}]}]}], ")"}]}]}]},
     {
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "p"}], ")"}], "2"]}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "q"}], ")"}], " ", "x0"}], "+", 
       RowBox[{"q", " ", "x1"}], "+", 
       RowBox[{"2", " ", "p", " ", 
        RowBox[{"(", 
         RowBox[{"x1", "-", 
          RowBox[{"2", " ", "q", " ", "x1"}], "+", 
          RowBox[{"q", " ", "x2"}]}], ")"}]}], "+", 
       RowBox[{
        SuperscriptBox["p", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", "x1"}], "+", 
          RowBox[{"3", " ", "q", " ", "x1"}], "+", "x2", "-", 
          RowBox[{"3", " ", "q", " ", "x2"}], "+", 
          RowBox[{"q", " ", "x3"}]}], ")"}]}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "p"}], ")"}], "2"]}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "q"}], ")"}], " ", "y0"}], "+", 
       RowBox[{"q", " ", "y1"}], "+", 
       RowBox[{"2", " ", "p", " ", 
        RowBox[{"(", 
         RowBox[{"y1", "-", 
          RowBox[{"2", " ", "q", " ", "y1"}], "+", 
          RowBox[{"q", " ", "y2"}]}], ")"}]}], "+", 
       RowBox[{
        SuperscriptBox["p", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", "y1"}], "+", 
          RowBox[{"3", " ", "q", " ", "y1"}], "+", "y2", "-", 
          RowBox[{"3", " ", "q", " ", "y2"}], "+", 
          RowBox[{"q", " ", "y3"}]}], ")"}]}]}]},
     {
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "p"}], ")"}]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "q"}], ")"}], "2"], " ", "x0"}], "+", 
       RowBox[{"q", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "q"}], ")"}], " ", "x1"}], "+", 
          RowBox[{"q", " ", "x2"}]}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"4", " ", "q"}], "+", 
             RowBox[{"3", " ", 
              SuperscriptBox["q", "2"]}]}], ")"}], " ", "x1"}], "+", 
          RowBox[{"q", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"2", " ", "x2"}], "-", 
             RowBox[{"3", " ", "q", " ", "x2"}], "+", 
             RowBox[{"q", " ", "x3"}]}], ")"}]}]}], ")"}]}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "p"}], ")"}]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "q"}], ")"}], "2"], " ", "y0"}], "+", 
       RowBox[{"q", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "q"}], ")"}], " ", "y1"}], "+", 
          RowBox[{"q", " ", "y2"}]}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"4", " ", "q"}], "+", 
             RowBox[{"3", " ", 
              SuperscriptBox["q", "2"]}]}], ")"}], " ", "y1"}], "+", 
          RowBox[{"q", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"2", " ", "y2"}], "-", 
             RowBox[{"3", " ", "q", " ", "y2"}], "+", 
             RowBox[{"q", " ", "y3"}]}], ")"}]}]}], ")"}]}]}]},
     {
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "q"}], ")"}], "3"]}], " ", "x0"}], "+", 
       RowBox[{"q", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"3", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "q"}], ")"}], "2"], " ", "x1"}], "+", 
          RowBox[{"q", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"3", " ", "x2"}], "-", 
             RowBox[{"3", " ", "q", " ", "x2"}], "+", 
             RowBox[{"q", " ", "x3"}]}], ")"}]}]}], ")"}]}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "q"}], ")"}], "3"]}], " ", "y0"}], "+", 
       RowBox[{"q", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"3", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "q"}], ")"}], "2"], " ", "y1"}], "+", 
          RowBox[{"q", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"3", " ", "y2"}], "-", 
             RowBox[{"3", " ", "q", " ", "y2"}], "+", 
             RowBox[{"q", " ", "y3"}]}], ")"}]}]}], ")"}]}]}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[TextData[{
 "But we wouldn\[CloseCurlyQuote]t really look at the algebraic result of \
these matrix products. Each matrix contains numbers and the operation is \
simply a few matrix products. Good thing we have computers. (There are more \
elegant methods to compute this by hand. See ",
 StyleBox["multiaffine",
  FontSlant->"Italic"],
 " ",
 StyleBox["forms",
  FontSlant->"Italic"],
 ".) There are even faster ways obtain the result by computer."
}], "Text"],

Cell["\<\
How we can find the control points that result from cutting a piece of a B\
\[EAcute]zier curve.\
\>", "Text"],

Cell[BoxData[
 StyleBox[
  RowBox[{
   RowBox[{"brutecut", "[", 
    RowBox[{"m_", ",", 
     RowBox[{"{", " ", 
      RowBox[{"p_", ",", " ", "q_"}], "}"}]}], "]"}], " ", ":=", " ", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"n", "=", 
       RowBox[{
        RowBox[{"Length", "[", "m", "]"}], "-", "1"}]}], "}"}], ",", " ", 
     RowBox[{
      RowBox[{"b2p", "[", "n", "]"}], ".", 
      RowBox[{"affinereparametrization", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"q", "-", "p"}], ",", "p"}], "}"}], ",", "n"}], "]"}], ".", 
      
      RowBox[{"p2b", "[", "n", "]"}], ".", "m"}]}], "]"}]}],
  InitializationCell->True]], "Input",
 InitializationCell->True],

Cell["And we can run a cool demo for this.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "5"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"6", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"n", "=", 
           RowBox[{"brutecut", "[", 
            RowBox[{"m", ",", 
             RowBox[{"{", 
              RowBox[{"p", ",", "q"}], "}"}]}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", "Dashed"}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "n"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Line", "[", "m", "]"}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"PointSize", "[", "Large", "]"}], ",", " ", 
              RowBox[{"Point", "[", "n", "]"}], ",", "Red", ",", 
              RowBox[{"Point", "[", 
               RowBox[{
                RowBox[{"bb2", "[", "t", "]"}], ".", "n"}], "]"}]}], "}"}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{"t", ",", "Large"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"-", "1"}]}], "}"}]}], "]"}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Symbol", "[", "\"\<p\>\"", "]"}], ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}]}],
           "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", "0.5"}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p", ",", 
         RowBox[{"1", "/", "4"}]}], "}"}], ",", 
       RowBox[{"-", "2"}], ",", "3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"q", ",", 
         RowBox[{"3", "/", "4"}]}], "}"}], ",", 
       RowBox[{"-", "2"}], ",", "3"}], "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = Rational[
    1, 4], $CellContext`pt$$ = {{-6, -3}, {0, 5}, {6, -3}}, $CellContext`q$$ =
     Rational[3, 4], $CellContext`t$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, 5}, {6, -3}}}, Automatic}, {{
       Hold[$CellContext`t$$], 0.5}, 0, 1}, {{
       Hold[$CellContext`p$$], 
       Rational[1, 4]}, -2, 3}, {{
       Hold[$CellContext`q$$], 
       Rational[3, 4]}, -2, 3}}, Typeset`size$$ = {576., {286., 290.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`t$2075$$ = 0, $CellContext`p$2076$$ = 
    0, $CellContext`q$2077$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p$$ = 
        Rational[1, 4], $CellContext`pt$$ = {{-6, -3}, {0, 5}, {
         6, -3}}, $CellContext`q$$ = Rational[3, 4], $CellContext`t$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$2075$$, 0], 
        Hold[$CellContext`p$$, $CellContext`p$2076$$, 0], 
        Hold[$CellContext`q$$, $CellContext`q$2077$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`n$ = $CellContext`brutecut[$CellContext`m$, \
{$CellContext`p$$, $CellContext`q$$}]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb2[$CellContext`t$$], $CellContext`m$], \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> Dashed, ImageSize -> 
           Large, Axes -> False], 
          ParametricPlot[
           Dot[
            $CellContext`bb2[$CellContext`t$$], $CellContext`n$], \
{$CellContext`t$$, 0, 1}, PlotStyle -> Directive[Thick, Red], ImageSize -> 
           Large], 
          Graphics[{
            Line[$CellContext`m$]}], 
          Graphics[{
            PointSize[Large], 
            Point[$CellContext`n$], Red, 
            Point[
             Dot[
              $CellContext`bb2[$CellContext`t$$], $CellContext`n$]]}], 
          Graphics[{
            Text[
             Style[$CellContext`t$$, Large], {0, -1}]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[
               Symbol["p"], $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, 5}, {6, -3}}}, 
         Automatic, ControlType -> Locator}, {{$CellContext`t$$, 0.5}, 0, 
         1}, {{$CellContext`p$$, 
          Rational[1, 4]}, -2, 3}, {{$CellContext`q$$, 
          Rational[3, 4]}, -2, 3}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {362., 368.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`brutecut[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := Module[{$CellContext`n = Length[$CellContext`m] - 1}, 
         Dot[
          $CellContext`b2p[$CellContext`n], 
          $CellContext`affinereparametrization[{$CellContext`q - \
$CellContext`p, $CellContext`p}, $CellContext`n], 
          $CellContext`p2b[$CellContext`n], $CellContext`m]], $CellContext`b2p[
         Pattern[$CellContext`n, 
          Blank[]]] := Inverse[
         $CellContext`p2b[$CellContext`n]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`affinereparametrization[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`t, $CellContext`s}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`pb[{$CellContext`a $CellContext`t + $CellContext`b \
$CellContext`s, $CellContext`s}, $CellContext`n]]]], $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["And for the cubic.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "7"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"7", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"n", "=", 
           RowBox[{"brutecut", "[", 
            RowBox[{"m", ",", 
             RowBox[{"{", 
              RowBox[{"p", ",", "q"}], "}"}]}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", "Dashed"}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "n"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Line", "[", "m", "]"}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"PointSize", "[", "Large", "]"}], ",", " ", 
              RowBox[{"Point", "[", "n", "]"}], ",", "Red", ",", 
              RowBox[{"Point", "[", 
               RowBox[{
                RowBox[{"bb3", "[", "t", "]"}], ".", "n"}], "]"}]}], "}"}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Text", "[", 
              RowBox[{
               RowBox[{"Style", "[", 
                RowBox[{"t", ",", "Large"}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"-", "1"}]}], "}"}]}], "]"}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{
                    RowBox[{"Symbol", "[", "\"\<p\>\"", "]"}], ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}]}],
           "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", "0.5"}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p", ",", 
         RowBox[{"1", "/", "4"}]}], "}"}], ",", 
       RowBox[{"-", "2"}], ",", "3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"q", ",", 
         RowBox[{"3", "/", "4"}]}], "}"}], ",", 
       RowBox[{"-", "2"}], ",", "3"}], "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = Rational[
    1, 4], $CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
    7, -3}}, $CellContext`q$$ = Rational[3, 4], $CellContext`t$$ = 0.5, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-7, -3}, {-3, 5}, {3, 5}, {7, -3}}}, 
      Automatic}, {{
       Hold[$CellContext`t$$], 0.5}, 0, 1}, {{
       Hold[$CellContext`p$$], 
       Rational[1, 4]}, -2, 3}, {{
       Hold[$CellContext`q$$], 
       Rational[3, 4]}, -2, 3}}, Typeset`size$$ = {576., {286., 290.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`t$2183$$ = 0, $CellContext`p$2184$$ = 
    0, $CellContext`q$2185$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p$$ = 
        Rational[1, 4], $CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
         7, -3}}, $CellContext`q$$ = Rational[3, 4], $CellContext`t$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$2183$$, 0], 
        Hold[$CellContext`p$$, $CellContext`p$2184$$, 0], 
        Hold[$CellContext`q$$, $CellContext`q$2185$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`n$ = $CellContext`brutecut[$CellContext`m$, \
{$CellContext`p$$, $CellContext`q$$}]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t$$], $CellContext`m$], \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> Dashed, ImageSize -> 
           Large, Axes -> False], 
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t$$], $CellContext`n$], \
{$CellContext`t$$, 0, 1}, PlotStyle -> Directive[Thick, Red], ImageSize -> 
           Large], 
          Graphics[{
            Line[$CellContext`m$]}], 
          Graphics[{
            PointSize[Large], 
            Point[$CellContext`n$], Red, 
            Point[
             Dot[
              $CellContext`bb3[$CellContext`t$$], $CellContext`n$]]}], 
          Graphics[{
            Text[
             Style[$CellContext`t$$, Large], {0, -1}]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[
               Symbol["p"], $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-7, -3}, {-3, 5}, {3, 5}, {
          7, -3}}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`t$$, 0.5}, 0, 1}, {{$CellContext`p$$, 
          Rational[1, 4]}, -2, 3}, {{$CellContext`q$$, 
          Rational[3, 4]}, -2, 3}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {362., 368.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`brutecut[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := Module[{$CellContext`n = Length[$CellContext`m] - 1}, 
         Dot[
          $CellContext`b2p[$CellContext`n], 
          $CellContext`affinereparametrization[{$CellContext`q - \
$CellContext`p, $CellContext`p}, $CellContext`n], 
          $CellContext`p2b[$CellContext`n], $CellContext`m]], $CellContext`b2p[
         Pattern[$CellContext`n, 
          Blank[]]] := Inverse[
         $CellContext`p2b[$CellContext`n]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`affinereparametrization[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`t, $CellContext`s}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`pb[{$CellContext`a $CellContext`t + $CellContext`b \
$CellContext`s, $CellContext`s}, $CellContext`n]]]], $CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
Monotonization of parabolas is very easy to do. Simply differentiate the \
coordinate functions with respect to the parameter and equate to zero.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"1", "/", "2"}], " ", 
    RowBox[{
     RowBox[{"D", "[", 
      RowBox[{
       RowBox[{"pb2", "[", "t", "]"}], ",", " ", "t"}], "]"}], " ", ".", " ", 
     
     RowBox[{"p2b", "[", "2", "]"}], ".", 
     RowBox[{"epoints", "[", "2", "]"}]}]}], " ", "//", "Simplify"}], "//", 
  " ", 
  RowBox[{
   RowBox[{"Collect", "[", 
    RowBox[{"#", ",", "t"}], "]"}], "&"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"-", "x0"}], "+", "x1", "+", 
    RowBox[{"t", " ", 
     RowBox[{"(", 
      RowBox[{"x0", "-", 
       RowBox[{"2", " ", "x1"}], "+", "x2"}], ")"}]}]}], ",", 
   RowBox[{
    RowBox[{"-", "y0"}], "+", "y1", "+", 
    RowBox[{"t", " ", 
     RowBox[{"(", 
      RowBox[{"y0", "-", 
       RowBox[{"2", " ", "y1"}], "+", "y2"}], ")"}]}]}]}], "}"}]], "Output"]
}, Open  ]],

Cell["\<\
The roots of these polynomials give the parameter values corresponding to the \
extremes in each axis. These are linear equations in one variable: trivial to \
solve.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"extremexpoly", "[", 
   RowBox[{
    RowBox[{"m", ":", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x0_", ",", " ", "y0_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x2_", ",", " ", "y2_"}], "}"}]}], "}"}]}], ",", " ", "t_"}], 
   "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"-", "x0"}], "+", "x1", "+", 
   RowBox[{"t", " ", 
    RowBox[{"(", 
     RowBox[{"x0", "-", 
      RowBox[{"2", " ", "x1"}], "+", "x2"}], ")"}]}]}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"extremeypoly", "[", 
   RowBox[{
    RowBox[{"m", ":", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x0_", ",", " ", "y0_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x2_", ",", " ", "y2_"}], "}"}]}], "}"}]}], ",", " ", "t_"}], 
   "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"-", "y0"}], "+", "y1", "+", 
   RowBox[{"t", " ", 
    RowBox[{"(", 
     RowBox[{"y0", "-", 
      RowBox[{"2", " ", "y1"}], "+", "y2"}], ")"}]}]}]}]], "Input",
 InitializationCell->True],

Cell["\<\
Here we group the parameter values for all extremes within [0, 1] and sort \
them (including the endpoints themselves)\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"extremes", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", " ", "y0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", " ", "y2_"}], "}"}]}], "}"}]}], "]"}], " ", ":=", 
  " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "t", "}"}], ",", 
    RowBox[{"Prepend", "[", 
     RowBox[{
      RowBox[{"Append", "[", 
       RowBox[{
        RowBox[{"DeleteDuplicates", "[", 
         RowBox[{"Select", "[", 
          RowBox[{
           RowBox[{"Sort", "[", 
            RowBox[{"Join", "[", 
             RowBox[{
              RowBox[{"Map", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", 
                RowBox[{"Solve", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"extremexpoly", "[", 
                    RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", 
                   "0"}], ",", " ", "t", ",", " ", "Reals"}], "]"}]}], "]"}], 
              ",", " ", 
              RowBox[{"Map", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", 
                RowBox[{"Solve", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"extremeypoly", "[", 
                    RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", 
                   "0"}], ",", " ", "t", ",", " ", "Reals"}], "]"}]}], 
               "]"}]}], "]"}], "]"}], ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"#", " ", ">", " ", "0"}], " ", "&&", " ", 
             RowBox[{"#", " ", "<", " ", "1"}]}], "&"}]}], "]"}], "]"}], ",", 
        "1"}], "]"}], ",", "0"}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
Now we plot the extreme points along with the curve. Notice there can be up \
to 2 of them.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "5"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"6", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"Directive", "[", 
             RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
           RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
           RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{"Line", "[", "m", "]"}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"Subscript", "[", 
                 RowBox[{"p", ",", 
                  RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
              ",", 
              RowBox[{
               RowBox[{"pt", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "+", 
               RowBox[{"{", 
                RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"PointSize", "[", "Large", "]"}], ",", "Blue", ",", 
            RowBox[{"Point", "[", 
             RowBox[{"Map", "[", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"bb2", "[", "#", "]"}], ".", "m"}], "&"}], ",", 
               RowBox[{"extremes", "[", "m", "]"}]}], "]"}], "]"}]}], "}"}], 
          "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}]}], "]"}]}],
   "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, -3}, {0, 5}, {6, -3}}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, 5}, {6, -3}}}, Automatic}}, 
    Typeset`size$$ = {576., {286., 290.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, -3}, {0, 5}, {6, -3}}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Show[
         ParametricPlot[
          Dot[
           $CellContext`bb2[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red], 
          ImageSize -> Large, Axes -> False], 
         Graphics[{
           Line[$CellContext`m$]}], 
         Graphics[
          Table[
           Text[
            Style[
             Subscript[$CellContext`p, $CellContext`i - 1], Large], 
            Part[$CellContext`pt$$, $CellContext`i] + {0, 
             1}], {$CellContext`i, 1, 
            Length[$CellContext`pt$$]}]], 
         Graphics[{
           PointSize[Large], Blue, 
           Point[
            Map[Dot[
              $CellContext`bb2[#], $CellContext`m$]& , 
             $CellContext`extremes[$CellContext`m$]]]}]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, 5}, {6, -3}}}, 
         Automatic, ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {318., 324.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`extremes[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}]] := Module[{$CellContext`t}, 
         Prepend[
          Append[
           DeleteDuplicates[
            Select[
             Sort[
              Join[
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremexpoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]], 
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremeypoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]]], And[# > 0, # < 1]& ]], 1], 
          0]], $CellContext`extremexpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          
          Blank[]]] := -$CellContext`x0 + $CellContext`x1 + $CellContext`t \
($CellContext`x0 - 
          2 $CellContext`x1 + $CellContext`x2), $CellContext`extremeypoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          
          Blank[]]] := -$CellContext`y0 + $CellContext`y1 + $CellContext`t \
($CellContext`y0 - 2 $CellContext`y1 + $CellContext`y2)}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["For the cubics, we follow the same strategy. ", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{"pb3", "[", "t", "]"}], ",", " ", "t"}], "]"}], ".", 
   RowBox[{"p2b", "[", "3", "]"}], ".", 
   RowBox[{"epoints", "[", "3", "]"}]}], " ", "//", 
  RowBox[{
   RowBox[{"Collect", "[", 
    RowBox[{"#", ",", "t"}], "]"}], "&"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"-", "3"}], " ", "x0"}], "+", 
    RowBox[{"3", " ", "x1"}], "+", 
    RowBox[{"t", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"6", " ", "x0"}], "-", 
       RowBox[{"12", " ", "x1"}], "+", 
       RowBox[{"6", " ", "x2"}]}], ")"}]}], "+", 
    RowBox[{
     SuperscriptBox["t", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "3"}], " ", "x0"}], "+", 
       RowBox[{"9", " ", "x1"}], "-", 
       RowBox[{"9", " ", "x2"}], "+", 
       RowBox[{"3", " ", "x3"}]}], ")"}]}]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "3"}], " ", "y0"}], "+", 
    RowBox[{"3", " ", "y1"}], "+", 
    RowBox[{"t", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"6", " ", "y0"}], "-", 
       RowBox[{"12", " ", "y1"}], "+", 
       RowBox[{"6", " ", "y2"}]}], ")"}]}], "+", 
    RowBox[{
     SuperscriptBox["t", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "3"}], " ", "y0"}], "+", 
       RowBox[{"9", " ", "y1"}], "-", 
       RowBox[{"9", " ", "y2"}], "+", 
       RowBox[{"3", " ", "y3"}]}], ")"}]}]}]}], "}"}]], "Output"]
}, Open  ]],

Cell["Here are the polynomials. Note they are now quadratic.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"epoints", "[", "3", "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"x0", ",", "y0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x1", ",", "y1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x2", ",", "y2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x3", ",", "y3"}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"extremexpoly", "[", 
    RowBox[{
     RowBox[{"m", ":", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"x0_", ",", "y0_"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x2_", ",", "y2_"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x3_", ",", "y3_"}], "}"}]}], "}"}]}], ",", " ", "t_"}], 
    "]"}], " ", ":=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "3"}], " ", "x0"}], "+", 
    RowBox[{"3", " ", "x1"}], "+", 
    RowBox[{"2", " ", "t", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"3", " ", "x0"}], "-", 
       RowBox[{"6", " ", "x1"}], "+", 
       RowBox[{"3", " ", "x2"}]}], ")"}]}], "+", 
    RowBox[{"3", " ", 
     SuperscriptBox["t", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "x0"}], "+", 
       RowBox[{"3", " ", "x1"}], "-", 
       RowBox[{"3", " ", "x2"}], "+", "x3"}], ")"}]}]}]}], ";"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"extremeypoly", "[", 
    RowBox[{
     RowBox[{"m", ":", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"x0_", ",", "y0_"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x2_", ",", "y2_"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"x3_", ",", "y3_"}], "}"}]}], "}"}]}], ",", " ", "t_"}], 
    "]"}], " ", ":=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "3"}], " ", "y0"}], "+", 
    RowBox[{"3", " ", "y1"}], "+", 
    RowBox[{"2", " ", "t", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"3", " ", "y0"}], "-", 
       RowBox[{"6", " ", "y1"}], "+", 
       RowBox[{"3", " ", "y2"}]}], ")"}]}], "+", 
    RowBox[{"3", " ", 
     SuperscriptBox["t", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "y0"}], "+", 
       RowBox[{"3", " ", "y1"}], "-", 
       RowBox[{"3", " ", "y2"}], "+", "y3"}], ")"}]}]}]}], ";"}]], "Input",
 InitializationCell->True],

Cell["\<\
Here is the function that collects all roots in [0, 1] an sorts them (adding \
the endpoints).\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"extremes", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", "y0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x3_", ",", "y3_"}], "}"}]}], "}"}]}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "t", "}"}], ",", 
    RowBox[{"Prepend", "[", 
     RowBox[{
      RowBox[{"Append", "[", 
       RowBox[{
        RowBox[{"Sort", "[", 
         RowBox[{
          RowBox[{"DeleteDuplicates", "[", 
           RowBox[{"Select", "[", 
            RowBox[{
             RowBox[{"Join", "[", 
              RowBox[{
               RowBox[{"Map", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", 
                 RowBox[{"Solve", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"extremexpoly", "[", 
                    RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", 
                    "0"}], ",", " ", "t", ",", " ", "Reals"}], "]"}]}], "]"}],
                ",", " ", 
               RowBox[{"Map", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", 
                 RowBox[{"Solve", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"extremeypoly", "[", 
                    RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", 
                    "0"}], ",", " ", "t", ",", " ", "Reals"}], "]"}]}], 
                "]"}]}], "]"}], ",", " ", 
             RowBox[{
              RowBox[{
               RowBox[{"#", " ", ">", " ", "0"}], " ", "&&", " ", 
               RowBox[{"#", " ", "<", " ", "1"}]}], "&"}]}], "]"}], "]"}], 
          ",", 
          RowBox[{
           RowBox[{"#1", "<", "#2"}], "&"}]}], "]"}], ",", "1"}], "]"}], ",", 
      "0"}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
Here is what it looks like. Note that there can be 4 extremes. Can you find a \
curve that contains 4?\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", "  ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "7"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"7", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"Directive", "[", 
             RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
           RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
           RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{"Line", "[", "m", "]"}], "}"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"Subscript", "[", 
                 RowBox[{"p", ",", 
                  RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
              ",", 
              RowBox[{
               RowBox[{"pt", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "+", 
               RowBox[{"{", 
                RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"PointSize", "[", "Large", "]"}], ",", "Blue", ",", 
            RowBox[{"Point", "[", 
             RowBox[{"Map", "[", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"bb3", "[", "#", "]"}], ".", "m"}], "&"}], ",", 
               RowBox[{"extremes", "[", "m", "]"}]}], "]"}], "]"}]}], "}"}], 
          "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}]}], "]"}]}],
   "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {7, -3}},
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-7, -3}, {-3, 5}, {3, 5}, {7, -3}}}, 
      Automatic}}, Typeset`size$$ = {576., {286., 290.}}, Typeset`update$$ = 
    0, Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
         7, -3}}}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Show[
         ParametricPlot[
          Dot[
           $CellContext`bb3[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red], 
          ImageSize -> Large, Axes -> False], 
         Graphics[{
           Line[$CellContext`m$]}], 
         Graphics[
          Table[
           Text[
            Style[
             Subscript[$CellContext`p, $CellContext`i - 1], Large], 
            Part[$CellContext`pt$$, $CellContext`i] + {0, 
             1}], {$CellContext`i, 1, 
            Length[$CellContext`pt$$]}]], 
         Graphics[{
           PointSize[Large], Blue, 
           Point[
            Map[Dot[
              $CellContext`bb3[#], $CellContext`m$]& , 
             $CellContext`extremes[$CellContext`m$]]]}]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-7, -3}, {-3, 5}, {3, 5}, {
          7, -3}}}, Automatic, ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {318., 324.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`extremes[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}]] := Module[{$CellContext`t}, 
         Prepend[
          Append[
           DeleteDuplicates[
            Select[
             Sort[
              Join[
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremexpoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]], 
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremeypoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]]], And[# > 0, # < 1]& ]], 1], 
          0]], $CellContext`extremes[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]]}}]] := Module[{$CellContext`t}, 
         Prepend[
          Append[
           Sort[
            DeleteDuplicates[
             Select[
              Join[
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremexpoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]], 
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremeypoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]], 
              And[# > 0, # < 1]& ]], # < #2& ], 1], 
          0]], $CellContext`extremexpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          
          Blank[]]] := -$CellContext`x0 + $CellContext`x1 + $CellContext`t \
($CellContext`x0 - 
          2 $CellContext`x1 + $CellContext`x2), $CellContext`extremexpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          Blank[]]] := (-3) $CellContext`x0 + 3 $CellContext`x1 + 
        2 $CellContext`t (3 $CellContext`x0 - 6 $CellContext`x1 + 
          3 $CellContext`x2) + 
        3 $CellContext`t^2 (-$CellContext`x0 + 3 $CellContext`x1 - 
          3 $CellContext`x2 + $CellContext`x3), $CellContext`extremeypoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          
          Blank[]]] := -$CellContext`y0 + $CellContext`y1 + $CellContext`t \
($CellContext`y0 - 
          2 $CellContext`y1 + $CellContext`y2), $CellContext`extremeypoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          Blank[]]] := (-3) $CellContext`y0 + 3 $CellContext`y1 + 
        2 $CellContext`t (3 $CellContext`y0 - 6 $CellContext`y1 + 
          3 $CellContext`y2) + 
        3 $CellContext`t^2 (-$CellContext`y0 + 3 $CellContext`y1 - 
          3 $CellContext`y2 + $CellContext`y3)}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
Here is a function that, given a monotonic B\[EAcute]zier, draws the \
control-polygon and the bounding-box.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"drawmonotonic", "[", "m_", "]"}], " ", ":=", " ", 
  "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"p", "=", 
       RowBox[{"m", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
      RowBox[{"q", " ", "=", " ", 
       RowBox[{"m", "[", 
        RowBox[{"[", 
         RowBox[{"-", "1"}], "]"}], "]"}]}]}], "}"}], ",", 
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"EdgeForm", "[", 
       RowBox[{"{", 
        RowBox[{"Black", ",", " ", 
         RowBox[{"Dashing", "[", 
          RowBox[{"{", "}"}], "]"}]}], "}"}], "]"}], ",", 
      RowBox[{"FaceForm", "[", "]"}], ",", 
      RowBox[{"Rectangle", "[", 
       RowBox[{"p", ",", " ", "q"}], "]"}], ",", "\[IndentingNewLine]", 
      "Dashed", ",", "Blue", ",", 
      RowBox[{"Line", "[", "m", "]"}], ",", " ", "\[IndentingNewLine]", 
      RowBox[{"Darker", "[", "Green", "]"}], ",", 
      RowBox[{"PointSize", "[", "Large", "]"}], ",", 
      RowBox[{"Point", "[", "m", "]"}]}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
Now we can split a B\[EAcute]zier into its monotonic parts and draw each of \
them.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "5"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"6", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"s", "=", 
           RowBox[{"extremes", "[", "m", "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", " ", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}], 
           ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Flatten", "[", 
             RowBox[{
              RowBox[{"Map", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"drawmonotonic", "[", 
                  RowBox[{"brutecut", "[", 
                   RowBox[{"m", ",", "#"}], "]"}], "]"}], "&"}], ",", 
                RowBox[{"Partition", "[", 
                 RowBox[{"s", ",", "2", ",", "1"}], "]"}]}], "]"}], ",", 
              "1"}], "]"}], "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"PointSize", "[", "Large", "]"}], ",", "Blue", ",", 
              RowBox[{"Point", "[", 
               RowBox[{"Map", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"bb2", "[", "#", "]"}], ".", "m"}], "&"}], ",", 
                 "s"}], "]"}], "]"}], ",", "\[IndentingNewLine]", "Gray", ",", 
              RowBox[{"Line", "[", "pt", "]"}]}], "}"}], "]"}]}], "]"}]}], 
        "]"}]}], "]"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}]}], "]"}]}],
   "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, -3}, {0, 5}, {6, -3}}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, 5}, {6, -3}}}, Automatic}}, 
    Typeset`size$$ = {576., {286., 290.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, -3}, {0, 5}, {6, -3}}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`s$ = $CellContext`extremes[$CellContext`m$]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb2[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red], 
           ImageSize -> Large, Axes -> False], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], 
          Graphics[
           Flatten[
            Map[$CellContext`drawmonotonic[
              $CellContext`brutecut[$CellContext`m$, #]]& , 
             Partition[$CellContext`s$, 2, 1]], 1]], 
          Graphics[{
            PointSize[Large], Blue, 
            Point[
             Map[Dot[
               $CellContext`bb2[#], $CellContext`m$]& , $CellContext`s$]], 
            Gray, 
            Line[$CellContext`pt$$]}]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, 5}, {6, -3}}}, 
         Automatic, ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {318., 324.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`extremes[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}]] := Module[{$CellContext`t}, 
         Prepend[
          Append[
           DeleteDuplicates[
            Select[
             Sort[
              Join[
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremexpoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]], 
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremeypoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]]], And[# > 0, # < 1]& ]], 1], 
          0]], $CellContext`extremes[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]]}}]] := Module[{$CellContext`t}, 
         Prepend[
          Append[
           Sort[
            DeleteDuplicates[
             Select[
              Join[
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremexpoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]], 
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremeypoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]], 
              And[# > 0, # < 1]& ]], # < #2& ], 1], 
          0]], $CellContext`extremexpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          
          Blank[]]] := -$CellContext`x0 + $CellContext`x1 + $CellContext`t \
($CellContext`x0 - 
          2 $CellContext`x1 + $CellContext`x2), $CellContext`extremexpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          Blank[]]] := (-3) $CellContext`x0 + 3 $CellContext`x1 + 
        2 $CellContext`t (3 $CellContext`x0 - 6 $CellContext`x1 + 
          3 $CellContext`x2) + 
        3 $CellContext`t^2 (-$CellContext`x0 + 3 $CellContext`x1 - 
          3 $CellContext`x2 + $CellContext`x3), $CellContext`extremeypoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          
          Blank[]]] := -$CellContext`y0 + $CellContext`y1 + $CellContext`t \
($CellContext`y0 - 
          2 $CellContext`y1 + $CellContext`y2), $CellContext`extremeypoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          Blank[]]] := (-3) $CellContext`y0 + 3 $CellContext`y1 + 
        2 $CellContext`t (3 $CellContext`y0 - 6 $CellContext`y1 + 
          3 $CellContext`y2) + 
        3 $CellContext`t^2 (-$CellContext`y0 + 3 $CellContext`y1 - 
          3 $CellContext`y2 + $CellContext`y3), $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`drawmonotonic[
         Pattern[$CellContext`m, 
          Blank[]]] := 
       Module[{$CellContext`p = Part[$CellContext`m, 1], $CellContext`q = 
          Part[$CellContext`m, -1]}, {
          EdgeForm[{Black, 
            Dashing[{}]}], 
          FaceForm[], 
          Rectangle[$CellContext`p, $CellContext`q], Dashed, Blue, 
          Line[$CellContext`m], 
          Darker[Green], 
          PointSize[Large], 
          Point[$CellContext`m]}], $CellContext`brutecut[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := Module[{$CellContext`n = Length[$CellContext`m] - 1}, 
         Dot[
          $CellContext`b2p[$CellContext`n], 
          $CellContext`affinereparametrization[{$CellContext`q - \
$CellContext`p, $CellContext`p}, $CellContext`n], 
          $CellContext`p2b[$CellContext`n], $CellContext`m]], $CellContext`b2p[
         Pattern[$CellContext`n, 
          Blank[]]] := Inverse[
         $CellContext`p2b[$CellContext`n]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`affinereparametrization[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`t, $CellContext`s}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`pb[{$CellContext`a $CellContext`t + $CellContext`b \
$CellContext`s, $CellContext`s}, $CellContext`n]]]]}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["We can do the same with the cubic", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "7"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"s", "=", 
           RowBox[{"extremes", "[", "m", "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", " ", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}], 
           ",", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Flatten", "[", 
             RowBox[{
              RowBox[{"Map", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"drawmonotonic", "[", 
                  RowBox[{"brutecut", "[", 
                   RowBox[{"m", ",", "#"}], "]"}], "]"}], "&"}], ",", 
                RowBox[{"Partition", "[", 
                 RowBox[{"s", ",", "2", ",", "1"}], "]"}]}], "]"}], ",", 
              "1"}], "]"}], "]"}], ",", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"PointSize", "[", "Large", "]"}], ",", "Blue", ",", 
              RowBox[{"Point", "[", 
               RowBox[{"Map", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"bb3", "[", "#", "]"}], ".", "m"}], "&"}], ",", 
                 "s"}], "]"}], "]"}], ",", "Gray", ",", 
              RowBox[{"Line", "[", "pt", "]"}]}], "}"}], "]"}]}], "]"}]}], 
        "]"}]}], "]"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}]}], " ", 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {0, -3}},
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-7, -3}, {-3, 5}, {3, 5}, {0, -3}}}, 
      Automatic}}, Typeset`size$$ = {576., {286., 290.}}, Typeset`update$$ = 
    0, Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
         0, -3}}}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`s$ = $CellContext`extremes[$CellContext`m$]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red], 
           ImageSize -> Large, Axes -> False], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], 
          Graphics[
           Flatten[
            Map[$CellContext`drawmonotonic[
              $CellContext`brutecut[$CellContext`m$, #]]& , 
             Partition[$CellContext`s$, 2, 1]], 1]], 
          Graphics[{
            PointSize[Large], Blue, 
            Point[
             Map[Dot[
               $CellContext`bb3[#], $CellContext`m$]& , $CellContext`s$]], 
            Gray, 
            Line[$CellContext`pt$$]}]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-7, -3}, {-3, 5}, {3, 5}, {
          0, -3}}}, Automatic, ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {318., 324.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`extremes[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}]] := Module[{$CellContext`t}, 
         Prepend[
          Append[
           DeleteDuplicates[
            Select[
             Sort[
              Join[
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremexpoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]], 
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremeypoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]]], And[# > 0, # < 1]& ]], 1], 
          0]], $CellContext`extremes[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]]}}]] := Module[{$CellContext`t}, 
         Prepend[
          Append[
           Sort[
            DeleteDuplicates[
             Select[
              Join[
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremexpoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]], 
               Map[ReplaceAll[$CellContext`t, #]& , 
                
                Solve[$CellContext`extremeypoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]], 
              And[# > 0, # < 1]& ]], # < #2& ], 1], 
          0]], $CellContext`extremexpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          
          Blank[]]] := -$CellContext`x0 + $CellContext`x1 + $CellContext`t \
($CellContext`x0 - 
          2 $CellContext`x1 + $CellContext`x2), $CellContext`extremexpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          Blank[]]] := (-3) $CellContext`x0 + 3 $CellContext`x1 + 
        2 $CellContext`t (3 $CellContext`x0 - 6 $CellContext`x1 + 
          3 $CellContext`x2) + 
        3 $CellContext`t^2 (-$CellContext`x0 + 3 $CellContext`x1 - 
          3 $CellContext`x2 + $CellContext`x3), $CellContext`extremeypoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          
          Blank[]]] := -$CellContext`y0 + $CellContext`y1 + $CellContext`t \
($CellContext`y0 - 
          2 $CellContext`y1 + $CellContext`y2), $CellContext`extremeypoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          Blank[]]] := (-3) $CellContext`y0 + 3 $CellContext`y1 + 
        2 $CellContext`t (3 $CellContext`y0 - 6 $CellContext`y1 + 
          3 $CellContext`y2) + 
        3 $CellContext`t^2 (-$CellContext`y0 + 3 $CellContext`y1 - 
          3 $CellContext`y2 + $CellContext`y3), $CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`drawmonotonic[
         Pattern[$CellContext`m, 
          Blank[]]] := 
       Module[{$CellContext`p = Part[$CellContext`m, 1], $CellContext`q = 
          Part[$CellContext`m, -1]}, {
          EdgeForm[{Black, 
            Dashing[{}]}], 
          FaceForm[], 
          Rectangle[$CellContext`p, $CellContext`q], Dashed, Blue, 
          Line[$CellContext`m], 
          Darker[Green], 
          PointSize[Large], 
          Point[$CellContext`m]}], $CellContext`brutecut[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := Module[{$CellContext`n = Length[$CellContext`m] - 1}, 
         Dot[
          $CellContext`b2p[$CellContext`n], 
          $CellContext`affinereparametrization[{$CellContext`q - \
$CellContext`p, $CellContext`p}, $CellContext`n], 
          $CellContext`p2b[$CellContext`n], $CellContext`m]], $CellContext`b2p[
         Pattern[$CellContext`n, 
          Blank[]]] := Inverse[
         $CellContext`p2b[$CellContext`n]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`affinereparametrization[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`t, $CellContext`s}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`pb[{$CellContext`a $CellContext`t + $CellContext`b \
$CellContext`s, $CellContext`s}, $CellContext`n]]]]}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
Let\[CloseCurlyQuote]s now turn to flattening, so we can work on strokes \
later on. Ideally, we would start from monotonic pieces with no inflections \
or double-points. Later during the course we will teach you how to do this \
(we will need for other purposes). We might as well assume it\
\[CloseCurlyQuote]s done within flattening because it allows us to use a much \
simpler heuristic. We will test distance from control polygon \
central-vertices to the baseline, and the angles of the first and last \
control polygon segments with the baseline.\
\>", "Text"],

Cell["\<\
Here is a function that, given the cosine of the largest angle acceptable and \
the largest absolute deviation from the baseline, decides if the segment \
should be subdivided.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"subdivQ", "[", 
   RowBox[{
    RowBox[{"m_", " ", "/;", " ", 
     RowBox[{"m", " ", "\[Element]", 
      RowBox[{"Matrices", "[", 
       RowBox[{"{", 
        RowBox[{"3", ",", "2"}], "}"}], "]"}]}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"ctol_", ",", " ", "ptol_"}], "}"}]}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"p0", " ", "=", " ", 
       RowBox[{"m", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ",", 
      RowBox[{"p1", "=", 
       RowBox[{"m", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
      RowBox[{"p2", " ", "=", " ", 
       RowBox[{"m", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"p10", " ", "=", " ", 
         RowBox[{"p1", "-", "p0"}]}], ",", " ", 
        RowBox[{"p21", "=", 
         RowBox[{"p2", "-", "p1"}]}], ",", " ", 
        RowBox[{"p20", " ", "=", " ", 
         RowBox[{"p2", "-", "p0"}]}]}], "}"}], ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"Dot", "[", 
          RowBox[{"p10", ",", " ", "p20"}], "]"}], "^", "2"}], " ", "<", " ", 
        
        RowBox[{
         RowBox[{"ctol", "^", "2"}], " ", 
         RowBox[{"Dot", "[", 
          RowBox[{"p10", ",", "p10"}], "]"}], " ", 
         RowBox[{"Dot", "[", 
          RowBox[{"p20", ",", "p20"}], "]"}]}]}], " ", "||", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Dot", "[", 
          RowBox[{"p21", ",", " ", "p20"}], "]"}], "^", "2"}], " ", "<", " ", 
        
        RowBox[{
         RowBox[{"ctol", "^", "2"}], " ", 
         RowBox[{"Dot", "[", 
          RowBox[{"p21", ",", "p21"}], "]"}], " ", 
         RowBox[{"Dot", "[", 
          RowBox[{"p20", ",", "p20"}], "]"}]}]}], " ", "||", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Dot", "[", 
          RowBox[{
           RowBox[{"Cross", "[", "p20", "]"}], ",", "p10"}], "]"}], "^", 
         "2"}], " ", ">", " ", 
        RowBox[{
         RowBox[{"ptol", "^", "2"}], " ", 
         RowBox[{"Dot", "[", 
          RowBox[{"p20", ",", "p20"}], "]"}]}]}]}]}], "]"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
Here is the function that recursively subdivides the segment until it passes \
the precision criteria. It returns a list of line segments.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"subdiv", "[", 
   RowBox[{
    RowBox[{"m_", " ", "/;", " ", 
     RowBox[{"m", " ", "\[Element]", 
      RowBox[{"Matrices", "[", 
       RowBox[{"{", 
        RowBox[{"3", ",", "2"}], "}"}], "]"}]}]}], ",", " ", 
    RowBox[{"tol", ":", 
     RowBox[{"{", 
      RowBox[{"ctol_", ",", "ptol_"}], "}"}]}]}], "]"}], " ", ":=", " ", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{"subdivQ", "[", 
     RowBox[{"m", ",", "tol"}], "]"}], ",", " ", 
    RowBox[{
     RowBox[{"subdiv", "[", 
      RowBox[{
       RowBox[{"brutecut", "[", 
        RowBox[{"m", ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"1", "/", "2"}]}], "}"}]}], "]"}], " ", ",", "tol"}], 
      "]"}], " ", "~", " ", "Join", " ", "~", " ", 
     RowBox[{"subdiv", "[", 
      RowBox[{
       RowBox[{"brutecut", "[", 
        RowBox[{"m", ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"1", "/", "2"}], ",", "1"}], "}"}]}], "]"}], " ", ",", 
       "tol"}], "]"}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"m", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", 
       RowBox[{"m", "[", 
        RowBox[{"[", 
         RowBox[{"-", "1"}], "]"}], "]"}]}], "}"}], "}"}]}], "]"}]}]], "Input",\

 InitializationCell->True],

Cell["Now we can show the result of subdividing a quadratic", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"viewport", " ", "=", " ", "512"}], ",", " ", 
     RowBox[{"window", " ", "=", " ", "20"}], ",", " ", 
     RowBox[{"pts", " ", "=", " ", 
      RowBox[{"{", " ", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "4"}], ",", " ", 
          RowBox[{"-", "3"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", "5"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"4", ",", " ", 
          RowBox[{"-", "3"}]}], "}"}]}], "}"}]}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"px", "=", 
        RowBox[{"window", " ", "/", " ", "viewport"}]}], ",", " ", 
       RowBox[{"deg", " ", "=", " ", 
        RowBox[{"Pi", "/", "180"}]}]}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"m", " ", "=", " ", "pt"}], ",", " ", 
           RowBox[{"tol", " ", "=", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Cos", "[", 
               RowBox[{"atol", " ", "deg"}], "]"}], ",", " ", 
              RowBox[{"ptol", " ", "px"}]}], "}"}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"time", " ", "=", " ", 
             RowBox[{"Timing", "[", 
              RowBox[{"subdiv", "[", 
               RowBox[{"m", ",", "tol"}], "]"}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Module", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"flat", " ", "=", 
               RowBox[{"time", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", " ", 
             "\[IndentingNewLine]", 
             RowBox[{"Show", "[", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Graphics", "[", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{"v", ",", 
                   RowBox[{
                    RowBox[{"Map", "[", 
                    RowBox[{"Line", ",", " ", "flat"}], "]"}], " ", "~", " ", 
                    "Join", " ", "~", 
                    RowBox[{"{", "Red", "}"}], " ", "~", " ", "Join", " ", 
                    "~", " ", 
                    RowBox[{"Map", "[", 
                    RowBox[{"Point", ",", "flat"}], "]"}]}], ",", " ", 
                   RowBox[{"Map", "[", 
                    RowBox[{"Line", ",", " ", "flat"}], "]"}]}], "]"}], ",", 
                 RowBox[{"PlotRange", "\[Rule]", 
                  RowBox[{"window", "/", "2"}]}], " ", ",", 
                 RowBox[{"ImageSize", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{"viewport", ",", "viewport"}], "}"}]}]}], "]"}], 
               ",", 
               RowBox[{"Graphics", "[", 
                RowBox[{"Table", "[", 
                 RowBox[{
                  RowBox[{"Text", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                    ",", 
                    RowBox[{
                    RowBox[{"pt", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "+", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"i", ",", "1", ",", 
                    RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], 
                "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Length", "[", "flat", "]"}], "]"}], " ", "<>", 
                    " ", "\"\< (\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", 
                    RowBox[{"time", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "<>", " ", 
                    "\"\<s)\>\""}], ",", "Large"}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", 
                    RowBox[{"-", "5"}]}], "}"}]}], "]"}], "]"}]}], "]"}]}], 
            "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"pt", ",", "pts"}], "}"}], ",", " ", "Locator"}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "ptol", ",", " ", "3", ",", " ", "\"\<Pixel tolerance\>\""}], "}"}],
          ",", "0.1", ",", " ", "15"}], "}"}], ",", " ", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"atol", ",", "10", ",", "  ", "\"\<Angular tolerance\>\""}],
           "}"}], ",", "1", ",", "15"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"v", ",", " ", "True", ",", " ", "\"\<Show vertices\>\""}], 
          "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"True", ",", " ", "False"}], "}"}]}], "}"}]}], "]"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`atol$$ = 
    10, $CellContext`pt$$ = {{-4, -3}, {0, 5}, {4, -3}}, $CellContext`ptol$$ =
     3, $CellContext`v$$ = True, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-4, -3}, {0, 5}, {4, -3}}}, Automatic}, {{
       Hold[$CellContext`ptol$$], 3, "Pixel tolerance"}, 0.1, 15}, {{
       Hold[$CellContext`atol$$], 10, "Angular tolerance"}, 1, 15}, {{
       Hold[$CellContext`v$$], True, "Show vertices"}, {True, False}}}, 
    Typeset`size$$ = {512., {254., 258.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`ptol$2609$$ = 0, $CellContext`atol$2610$$ = 
    0, $CellContext`v$2611$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`atol$$ = 
        10, $CellContext`pt$$ = {{-4, -3}, {0, 5}, {
         4, -3}}, $CellContext`ptol$$ = 3, $CellContext`v$$ = True}, 
      "ControllerVariables" :> {
        Hold[$CellContext`ptol$$, $CellContext`ptol$2609$$, 0], 
        Hold[$CellContext`atol$$, $CellContext`atol$2610$$, 0], 
        Hold[$CellContext`v$$, $CellContext`v$2611$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$, $CellContext`tol$ = {
           
           Cos[$CellContext`atol$$ (Rational[1, 180] 
             Pi)], $CellContext`ptol$$ Rational[5, 128]}}, 
        Module[{$CellContext`time$ = Timing[
            $CellContext`subdiv[$CellContext`m$, $CellContext`tol$]]}, 
         Module[{$CellContext`flat$ = Part[$CellContext`time$, 2]}, 
          Show[
           Graphics[
            If[$CellContext`v$$, 
             Join[
              Join[
               Map[Line, $CellContext`flat$], {Red}], 
              Map[Point, $CellContext`flat$]], 
             Map[Line, $CellContext`flat$]], PlotRange -> 20/2, 
            ImageSize -> {512, 512}], 
           Graphics[
            Table[
             Text[
              Style[
               Subscript[$CellContext`p, $CellContext`i - 1], Large], 
              Part[$CellContext`pt$$, $CellContext`i] + {0, 
               1}], {$CellContext`i, 1, 
              Length[$CellContext`pt$$]}]], 
           Graphics[
            Text[
             Style[
              StringJoin[
               ToString[
                Length[$CellContext`flat$]], " (", 
               ToString[
                Part[$CellContext`time$, 1]], "s)"], Large], {0, -5}]]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-4, -3}, {0, 5}, {4, -3}}}, 
         Automatic, ControlType -> 
         Locator}, {{$CellContext`ptol$$, 3, "Pixel tolerance"}, 0.1, 
         15}, {{$CellContext`atol$$, 10, "Angular tolerance"}, 1, 
         15}, {{$CellContext`v$$, True, "Show vertices"}, {True, False}}}, 
      "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{563., {327., 333.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      Attributes[$CellContext`m$] = {Temporary}, 
       Attributes[$CellContext`tol$] = {Temporary}, 
       Attributes[$CellContext`time$] = {Temporary}, $CellContext`subdiv[
         Condition[
          Pattern[$CellContext`m, 
           Blank[]], 
          Element[$CellContext`m, 
           Matrices[{3, 2}]]], 
         Pattern[$CellContext`tol, {
           Pattern[$CellContext`ctol, 
            Blank[]], 
           Pattern[$CellContext`ptol, 
            Blank[]]}]] := If[
         $CellContext`subdivQ[$CellContext`m, $CellContext`tol], 
         Join[
          $CellContext`subdiv[
           $CellContext`brutecut[$CellContext`m, {0, 1/2}], $CellContext`tol], 
          $CellContext`subdiv[
           $CellContext`brutecut[$CellContext`m, {
            1/2, 1}], $CellContext`tol]], {{
           Part[$CellContext`m, 1], 
           Part[$CellContext`m, -1]}}], $CellContext`subdivQ[
         Condition[
          Pattern[$CellContext`m, 
           Blank[]], 
          Element[$CellContext`m, 
           Matrices[{3, 2}]]], {
          Pattern[$CellContext`ctol, 
           Blank[]], 
          Pattern[$CellContext`ptol, 
           Blank[]]}] := 
       Module[{$CellContext`p0 = Part[$CellContext`m, 1], $CellContext`p1 = 
          Part[$CellContext`m, 2], $CellContext`p2 = Part[$CellContext`m, 3]}, 
         Module[{$CellContext`p10 = $CellContext`p1 - $CellContext`p0, \
$CellContext`p21 = $CellContext`p2 - $CellContext`p1, $CellContext`p20 = \
$CellContext`p2 - $CellContext`p0}, 
          Or[
          Dot[$CellContext`p10, $CellContext`p20]^2 < $CellContext`ctol^2 
            Dot[$CellContext`p10, $CellContext`p10] 
            Dot[$CellContext`p20, $CellContext`p20], 
           Dot[$CellContext`p21, $CellContext`p20]^2 < $CellContext`ctol^2 
            Dot[$CellContext`p21, $CellContext`p21] 
            Dot[$CellContext`p20, $CellContext`p20], Dot[
              
              Cross[$CellContext`p20], $CellContext`p10]^2 > \
$CellContext`ptol^2 
            Dot[$CellContext`p20, $CellContext`p20]]]], $CellContext`brutecut[
        
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := Module[{$CellContext`n = Length[$CellContext`m] - 1}, 
         Dot[
          $CellContext`b2p[$CellContext`n], 
          $CellContext`affinereparametrization[{$CellContext`q - \
$CellContext`p, $CellContext`p}, $CellContext`n], 
          $CellContext`p2b[$CellContext`n], $CellContext`m]], $CellContext`b2p[
         Pattern[$CellContext`n, 
          Blank[]]] := Inverse[
         $CellContext`p2b[$CellContext`n]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`affinereparametrization[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`t, $CellContext`s}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`pb[{$CellContext`a $CellContext`t + $CellContext`b \
$CellContext`s, $CellContext`s}, $CellContext`n]]]], 
       Attributes[$CellContext`flat$] = {Temporary}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["The heuristic is similar for the cubic", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"subdivQ", "[", 
   RowBox[{
    RowBox[{"m_", " ", "/;", " ", 
     RowBox[{"m", " ", "\[Element]", 
      RowBox[{"Matrices", "[", 
       RowBox[{"{", 
        RowBox[{"4", ",", "2"}], "}"}], "]"}]}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"ctol_", ",", " ", "ptol_"}], "}"}]}], "]"}], " ", ":=", " ", 
  "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"p0", " ", "=", " ", 
       RowBox[{"m", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ",", 
      RowBox[{"p1", "=", 
       RowBox[{"m", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
      RowBox[{"p2", " ", "=", " ", 
       RowBox[{"m", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], ",", " ", 
      RowBox[{"p3", " ", "=", " ", 
       RowBox[{"m", "[", 
        RowBox[{"[", "4", "]"}], "]"}]}]}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"p30", " ", "=", " ", 
         RowBox[{"p3", "-", "p0"}]}], ",", " ", 
        RowBox[{"p10", " ", "=", " ", 
         RowBox[{"p1", "-", "p0"}]}], ",", " ", 
        RowBox[{"p32", "=", 
         RowBox[{"p3", "-", "p2"}]}]}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"Dot", "[", 
          RowBox[{"p10", ",", " ", "p30"}], "]"}], "^", "2"}], " ", "<", " ", 
        
        RowBox[{
         RowBox[{"ctol", "^", "2"}], " ", 
         RowBox[{"Dot", "[", 
          RowBox[{"p10", ",", "p10"}], "]"}], " ", 
         RowBox[{"Dot", "[", 
          RowBox[{"p30", ",", "p30"}], "]"}]}]}], " ", "||", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Dot", "[", 
          RowBox[{"p32", ",", " ", "p30"}], "]"}], "^", "2"}], " ", "<", " ", 
        
        RowBox[{
         RowBox[{"ctol", "^", "2"}], " ", 
         RowBox[{"Dot", "[", 
          RowBox[{"p32", ",", "p32"}], "]"}], " ", 
         RowBox[{"Dot", "[", 
          RowBox[{"p30", ",", "p30"}], "]"}]}]}], " ", "||", " ", 
       RowBox[{
        RowBox[{"Max", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Dot", "[", 
            RowBox[{
             RowBox[{"Cross", "[", "p30", "]"}], ",", "p10"}], "]"}], "^", 
           "2"}], ",", " ", 
          RowBox[{
           RowBox[{"Dot", "[", 
            RowBox[{
             RowBox[{"Cross", "[", "p30", "]"}], ",", "p32"}], "]"}], "^", 
           "2"}]}], "]"}], " ", ">", "  ", 
        RowBox[{
         RowBox[{"ptol", "^", "2"}], " ", 
         RowBox[{"Dot", "[", 
          RowBox[{"p30", ",", "p30"}], "]"}]}]}]}]}], "]"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
We didn't actually need to repeat the subdivision function (it is identical \
to the quadratic one), but here it is.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"subdiv", "[", 
   RowBox[{
    RowBox[{"m_", " ", "/;", " ", 
     RowBox[{"m", " ", "\[Element]", 
      RowBox[{"Matrices", "[", 
       RowBox[{"{", 
        RowBox[{"4", ",", "2"}], "}"}], "]"}]}]}], ",", " ", 
    RowBox[{"tol", ":", 
     RowBox[{"{", 
      RowBox[{"ctol_", ",", "ptol_"}], "}"}]}]}], "]"}], " ", ":=", " ", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{"subdivQ", "[", 
     RowBox[{"m", ",", "tol"}], "]"}], ",", " ", 
    RowBox[{
     RowBox[{"subdiv", "[", 
      RowBox[{
       RowBox[{"brutecut", "[", 
        RowBox[{"m", ",", 
         RowBox[{"{", 
          RowBox[{"0", ",", 
           RowBox[{"1", "/", "2"}]}], "}"}]}], "]"}], " ", ",", "tol"}], 
      "]"}], " ", "~", " ", "Join", " ", "~", " ", 
     RowBox[{"subdiv", "[", 
      RowBox[{
       RowBox[{"brutecut", "[", 
        RowBox[{"m", ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"1", "/", "2"}], ",", "1"}], "}"}]}], "]"}], ",", "tol"}], 
      "]"}]}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"m", "[", 
        RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
       RowBox[{"m", "[", 
        RowBox[{"[", 
         RowBox[{"-", "1"}], "]"}], "]"}]}], "}"}], "}"}]}], "]"}]}]], "Input",\

 InitializationCell->True],

Cell["Now we can show the demo for the cubic.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"viewport", " ", "=", " ", "512"}], ",", " ", 
     RowBox[{"window", " ", "=", " ", "20"}], ",", " ", 
     RowBox[{"pts", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "7"}], ",", " ", 
          RowBox[{"-", "3"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "3"}], ",", " ", "5"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"3", ",", " ", "5"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"7", ",", " ", 
          RowBox[{"-", "3"}]}], "}"}]}], "}"}]}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"With", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"px", "=", 
        RowBox[{"window", " ", "/", " ", "viewport"}]}], ",", " ", 
       RowBox[{"deg", " ", "=", " ", 
        RowBox[{"Pi", "/", "180"}]}]}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"m", " ", "=", " ", "pt"}], ",", 
           RowBox[{"tol", " ", "=", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Cos", "[", 
               RowBox[{"atol", " ", "deg"}], "]"}], ",", " ", 
              RowBox[{"ptol", " ", "px"}]}], "}"}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"time", " ", "=", " ", 
             RowBox[{"Timing", "[", 
              RowBox[{"subdiv", "[", 
               RowBox[{"m", ",", "tol"}], "]"}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Module", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"flat", " ", "=", 
               RowBox[{"time", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", " ", 
             "\[IndentingNewLine]", 
             RowBox[{"Show", "[", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Graphics", "[", 
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{"v", ",", 
                   RowBox[{
                    RowBox[{"Map", "[", 
                    RowBox[{"Line", ",", " ", "flat"}], "]"}], " ", "~", " ", 
                    "Join", " ", "~", 
                    RowBox[{"{", "Red", "}"}], " ", "~", " ", "Join", " ", 
                    "~", " ", 
                    RowBox[{"Map", "[", 
                    RowBox[{"Point", ",", "flat"}], "]"}]}], ",", " ", 
                   RowBox[{"Map", "[", 
                    RowBox[{"Line", ",", " ", "flat"}], "]"}]}], "]"}], ",", 
                 RowBox[{"PlotRange", "\[Rule]", 
                  RowBox[{"window", "/", "2"}]}], " ", ",", 
                 RowBox[{"ImageSize", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{"viewport", ",", "viewport"}], "}"}]}]}], "]"}], 
               ",", "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", 
                RowBox[{"Table", "[", 
                 RowBox[{
                  RowBox[{"Text", "[", 
                   RowBox[{
                    RowBox[{"Style", "[", 
                    RowBox[{
                    RowBox[{"Subscript", "[", 
                    RowBox[{
                    RowBox[{"Symbol", "[", "\"\<p\>\"", "]"}], ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                    ",", 
                    RowBox[{
                    RowBox[{"pt", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "+", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"i", ",", "1", ",", 
                    RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], 
                "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", 
                RowBox[{"Text", "[", 
                 RowBox[{
                  RowBox[{"Style", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"ToString", "[", 
                    RowBox[{"Length", "[", "flat", "]"}], "]"}], " ", "<>", 
                    " ", "\"\< (\>\"", " ", "<>", " ", 
                    RowBox[{"ToString", "[", 
                    RowBox[{"time", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "<>", " ", 
                    "\"\<s)\>\""}], ",", "Large"}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", 
                    RowBox[{"-", "5"}]}], "}"}]}], "]"}], "]"}]}], "]"}]}], 
            "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"pt", ",", "pts"}], "}"}], ",", " ", "Locator"}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "ptol", ",", " ", "3", ",", " ", "\"\<Pixel tolerance\>\""}], "}"}],
          ",", "0.1", ",", " ", "15"}], "}"}], ",", " ", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"atol", ",", "10", ",", "  ", "\"\<Angular tolerance\>\""}],
           "}"}], ",", "1", ",", "15"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"v", ",", " ", "True", ",", " ", "\"\<Show vertices\>\""}], 
          "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"True", ",", " ", "False"}], "}"}]}], "}"}]}], "]"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`atol$$ = 
    10, $CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
    7, -3}}, $CellContext`ptol$$ = 3, $CellContext`v$$ = True, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-7, -3}, {-3, 5}, {3, 5}, {7, -3}}}, 
      Automatic}, {{
       Hold[$CellContext`ptol$$], 3, "Pixel tolerance"}, 0.1, 15}, {{
       Hold[$CellContext`atol$$], 10, "Angular tolerance"}, 1, 15}, {{
       Hold[$CellContext`v$$], True, "Show vertices"}, {True, False}}}, 
    Typeset`size$$ = {512., {254., 258.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`ptol$3048$$ = 0, $CellContext`atol$3049$$ = 
    0, $CellContext`v$3050$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`atol$$ = 
        10, $CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
         7, -3}}, $CellContext`ptol$$ = 3, $CellContext`v$$ = True}, 
      "ControllerVariables" :> {
        Hold[$CellContext`ptol$$, $CellContext`ptol$3048$$, 0], 
        Hold[$CellContext`atol$$, $CellContext`atol$3049$$, 0], 
        Hold[$CellContext`v$$, $CellContext`v$3050$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$, $CellContext`tol$ = {
           
           Cos[$CellContext`atol$$ (Rational[1, 180] 
             Pi)], $CellContext`ptol$$ Rational[5, 128]}}, 
        Module[{$CellContext`time$ = Timing[
            $CellContext`subdiv[$CellContext`m$, $CellContext`tol$]]}, 
         Module[{$CellContext`flat$ = Part[$CellContext`time$, 2]}, 
          Show[
           Graphics[
            If[$CellContext`v$$, 
             Join[
              Join[
               Map[Line, $CellContext`flat$], {Red}], 
              Map[Point, $CellContext`flat$]], 
             Map[Line, $CellContext`flat$]], PlotRange -> 20/2, 
            ImageSize -> {512, 512}], 
           Graphics[
            Table[
             Text[
              Style[
               Subscript[
                Symbol["p"], $CellContext`i - 1], Large], 
              Part[$CellContext`pt$$, $CellContext`i] + {0, 
               1}], {$CellContext`i, 1, 
              Length[$CellContext`pt$$]}]], 
           Graphics[
            Text[
             Style[
              StringJoin[
               ToString[
                Length[$CellContext`flat$]], " (", 
               ToString[
                Part[$CellContext`time$, 1]], "s)"], Large], {0, -5}]]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-7, -3}, {-3, 5}, {3, 5}, {
          7, -3}}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`ptol$$, 3, "Pixel tolerance"}, 0.1, 
         15}, {{$CellContext`atol$$, 10, "Angular tolerance"}, 1, 
         15}, {{$CellContext`v$$, True, "Show vertices"}, {True, False}}}, 
      "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{563., {327., 333.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      Attributes[$CellContext`m$] = {Temporary}, 
       Attributes[$CellContext`tol$] = {Temporary}, 
       Attributes[$CellContext`time$] = {Temporary}, $CellContext`subdiv[
         Condition[
          Pattern[$CellContext`m, 
           Blank[]], 
          Element[$CellContext`m, 
           Matrices[{3, 2}]]], 
         Pattern[$CellContext`tol, {
           Pattern[$CellContext`ctol, 
            Blank[]], 
           Pattern[$CellContext`ptol, 
            Blank[]]}]] := If[
         $CellContext`subdivQ[$CellContext`m, $CellContext`tol], 
         Join[
          $CellContext`subdiv[
           $CellContext`brutecut[$CellContext`m, {0, 1/2}], $CellContext`tol], 
          $CellContext`subdiv[
           $CellContext`brutecut[$CellContext`m, {
            1/2, 1}], $CellContext`tol]], {{
           Part[$CellContext`m, 1], 
           Part[$CellContext`m, -1]}}], $CellContext`subdiv[
         Condition[
          Pattern[$CellContext`m, 
           Blank[]], 
          Element[$CellContext`m, 
           Matrices[{4, 2}]]], 
         Pattern[$CellContext`tol, {
           Pattern[$CellContext`ctol, 
            Blank[]], 
           Pattern[$CellContext`ptol, 
            Blank[]]}]] := If[
         $CellContext`subdivQ[$CellContext`m, $CellContext`tol], 
         Join[
          $CellContext`subdiv[
           $CellContext`brutecut[$CellContext`m, {0, 1/2}], $CellContext`tol], 
          $CellContext`subdiv[
           $CellContext`brutecut[$CellContext`m, {
            1/2, 1}], $CellContext`tol]], {{
           Part[$CellContext`m, 1], 
           Part[$CellContext`m, -1]}}], $CellContext`subdivQ[
         Condition[
          Pattern[$CellContext`m, 
           Blank[]], 
          Element[$CellContext`m, 
           Matrices[{3, 2}]]], {
          Pattern[$CellContext`ctol, 
           Blank[]], 
          Pattern[$CellContext`ptol, 
           Blank[]]}] := 
       Module[{$CellContext`p0 = Part[$CellContext`m, 1], $CellContext`p1 = 
          Part[$CellContext`m, 2], $CellContext`p2 = Part[$CellContext`m, 3]}, 
         Module[{$CellContext`p10 = $CellContext`p1 - $CellContext`p0, \
$CellContext`p21 = $CellContext`p2 - $CellContext`p1, $CellContext`p20 = \
$CellContext`p2 - $CellContext`p0}, 
          Or[
          Dot[$CellContext`p10, $CellContext`p20]^2 < $CellContext`ctol^2 
            Dot[$CellContext`p10, $CellContext`p10] 
            Dot[$CellContext`p20, $CellContext`p20], 
           Dot[$CellContext`p21, $CellContext`p20]^2 < $CellContext`ctol^2 
            Dot[$CellContext`p21, $CellContext`p21] 
            Dot[$CellContext`p20, $CellContext`p20], Dot[
              
              Cross[$CellContext`p20], $CellContext`p10]^2 > \
$CellContext`ptol^2 
            Dot[$CellContext`p20, $CellContext`p20]]]], $CellContext`subdivQ[
         Condition[
          Pattern[$CellContext`m, 
           Blank[]], 
          Element[$CellContext`m, 
           Matrices[{4, 2}]]], {
          Pattern[$CellContext`ctol, 
           Blank[]], 
          Pattern[$CellContext`ptol, 
           Blank[]]}] := 
       Module[{$CellContext`p0 = Part[$CellContext`m, 1], $CellContext`p1 = 
          Part[$CellContext`m, 2], $CellContext`p2 = 
          Part[$CellContext`m, 3], $CellContext`p3 = Part[$CellContext`m, 4]}, 
         Module[{$CellContext`p30 = $CellContext`p3 - $CellContext`p0, \
$CellContext`p10 = $CellContext`p1 - $CellContext`p0, $CellContext`p32 = \
$CellContext`p3 - $CellContext`p2}, 
          Or[
          Dot[$CellContext`p10, $CellContext`p30]^2 < $CellContext`ctol^2 
            Dot[$CellContext`p10, $CellContext`p10] 
            Dot[$CellContext`p30, $CellContext`p30], 
           Dot[$CellContext`p32, $CellContext`p30]^2 < $CellContext`ctol^2 
            Dot[$CellContext`p32, $CellContext`p32] 
            Dot[$CellContext`p30, $CellContext`p30], Max[Dot[
               Cross[$CellContext`p30], $CellContext`p10]^2, Dot[
               
               Cross[$CellContext`p30], $CellContext`p32]^2] > \
$CellContext`ptol^2 
            Dot[$CellContext`p30, $CellContext`p30]]]], $CellContext`brutecut[
        
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := Module[{$CellContext`n = Length[$CellContext`m] - 1}, 
         Dot[
          $CellContext`b2p[$CellContext`n], 
          $CellContext`affinereparametrization[{$CellContext`q - \
$CellContext`p, $CellContext`p}, $CellContext`n], 
          $CellContext`p2b[$CellContext`n], $CellContext`m]], $CellContext`b2p[
         Pattern[$CellContext`n, 
          Blank[]]] := Inverse[
         $CellContext`p2b[$CellContext`n]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`affinereparametrization[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`t, $CellContext`s}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`pb[{$CellContext`a $CellContext`t + $CellContext`b \
$CellContext`s, $CellContext`s}, $CellContext`n]]]], 
       Attributes[$CellContext`flat$] = {Temporary}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
How about computing intersections with axis aligned rays? (For other rays, we \
can simply rotate the curve and the ray until the ray is horizontal, for \
example). Normally, this would require us to solve an equation of degree n \
for a B\[EAcute]zier of degree n. This is difficult. 

If the curve segment is monotonic, there can be at most a single intersection \
with an axis-aligned ray. We can use a bisection search to isolate the root. \
This is not a particularly good method, because we don\[CloseCurlyQuote]t \
need to bisect the curve, only the interval (There are, however, other \
applications where you must bisect the curve. Which?) 
It is only guaranteed to find the intersection if the curve segment is \
monotonic. What other method would you use? (Newton? A combination of the \
two?)\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"sillyintersect", "[", 
   RowBox[{"m_", ",", " ", "x_", ",", 
    RowBox[{"{", 
     RowBox[{"t0_", ",", " ", "t1_"}], "}"}], ",", " ", 
    RowBox[{"eps_:", "0.01"}]}], "]"}], " ", ":=", " ", "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"xm", " ", "=", " ", 
       RowBox[{"blossomevaluate", "[", 
        RowBox[{"m", ",", "0.5"}], "]"}]}], ",", " ", 
      RowBox[{"tm", " ", "=", " ", 
       RowBox[{"0.5", "*", 
        RowBox[{"(", 
         RowBox[{"t0", "+", "t1"}], ")"}]}]}]}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"a", " ", "=", " ", 
        RowBox[{"Abs", "[", 
         RowBox[{"x", "-", "xm"}], "]"}]}], "}"}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"If", " ", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Min", "[", "m", "]"}], " ", ">", " ", "x"}], ",", " ", "0", 
        ",", " ", "\[IndentingNewLine]", 
        RowBox[{"If", "[", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"Max", "[", "m", "]"}], " ", "<", " ", "x"}], ",", " ", 
          "1", ",", " ", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"a", " ", "<", " ", "eps"}], " ", ",", "tm", ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"Xor", "[", 
               RowBox[{
                RowBox[{"xm", " ", ">", " ", "x"}], ",", " ", 
                RowBox[{
                 RowBox[{"m", "[", 
                  RowBox[{"[", 
                   RowBox[{"-", "1"}], "]"}], "]"}], " ", ">", " ", 
                 RowBox[{"m", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}]}], "]"}], ",", " ", 
              "\[IndentingNewLine]", 
              RowBox[{"sillyintersect", "[", 
               RowBox[{
                RowBox[{"brutecut", "[", 
                 RowBox[{"m", ",", 
                  RowBox[{"{", 
                   RowBox[{"0.5", ",", "1"}], "}"}]}], "]"}], ",", "x", ",", 
                RowBox[{"{", 
                 RowBox[{"tm", ",", "t1"}], "}"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"sillyintersect", "[", 
               RowBox[{
                RowBox[{"brutecut", "[", 
                 RowBox[{"m", ",", 
                  RowBox[{"{", 
                   RowBox[{"0", ",", "0.5"}], "}"}]}], "]"}], ",", "x", ",", 
                RowBox[{"{", 
                 RowBox[{"t0", ",", "tm"}], "}"}]}], "]"}]}], "]"}]}], 
           "]"}]}], "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["Here is the animation for the quadratic case.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"6", ",", " ", "3"}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"ti", " ", "=", " ", 
           RowBox[{"sillyintersect", "[", 
            RowBox[{
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{";;", ",", "2"}], "]"}], "]"}], ",", "y", ",", " ", 
             RowBox[{"{", 
              RowBox[{"0", ",", "1"}], "}"}]}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "10"}], ",", "y"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"10", ",", "y"}], "}"}]}], "}"}], "]"}], ",", 
              "Blue", ",", 
              RowBox[{"PointSize", "[", "Large", "]"}], ",", 
              RowBox[{"Point", "[", 
               RowBox[{"blossomevaluate", "[", 
                RowBox[{"m", ",", "ti"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}]}],
           "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"y", ",", " ", "0"}], "}"}], ",", 
       RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, -3}, {0, -3}, {6, 
    3}}, $CellContext`y$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, -3}, {6, 3}}}, Automatic}, {{
       Hold[$CellContext`y$$], 0}, -10, 10}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`y$3470$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, -3}, {0, -3}, {6, 
         3}}, $CellContext`y$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`y$$, $CellContext`y$3470$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`ti$ = $CellContext`sillyintersect[
            Part[$CellContext`m$, 
             Span[1, All], 2], $CellContext`y$$, {0, 1}]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb2[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red], 
           ImageSize -> Large, Axes -> False], 
          Graphics[{
            Line[{{-10, $CellContext`y$$}, {10, $CellContext`y$$}}], Blue, 
            PointSize[Large], 
            Point[
             $CellContext`blossomevaluate[$CellContext`m$, \
$CellContext`ti$]]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, -3}, {6, 3}}}, 
         Automatic, ControlType -> Locator}, {{$CellContext`y$$, 0}, -10, 
         10}}, "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`sillyintersect[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`x, 
          Blank[]], {
          Pattern[$CellContext`t0, 
           Blank[]], 
          Pattern[$CellContext`t1, 
           Blank[]]}, 
         Optional[
          Pattern[$CellContext`eps, 
           Blank[]], 0.01]] := 
       Module[{$CellContext`xm = $CellContext`blossomevaluate[$CellContext`m, 
            0.5], $CellContext`tm = 0.5 ($CellContext`t0 + $CellContext`t1)}, 
         
         Module[{$CellContext`a = Abs[$CellContext`x - $CellContext`xm]}, 
          If[Min[$CellContext`m] > $CellContext`x, 0, 
           If[Max[$CellContext`m] < $CellContext`x, 1, 
            If[$CellContext`a < $CellContext`eps, $CellContext`tm, 
             If[
              
              Xor[$CellContext`xm > $CellContext`x, Part[$CellContext`m, -1] > 
               Part[$CellContext`m, 1]], 
              $CellContext`sillyintersect[
               $CellContext`brutecut[$CellContext`m, {
                0.5, 1}], $CellContext`x, {$CellContext`tm, $CellContext`t1}], 
              $CellContext`sillyintersect[
               $CellContext`brutecut[$CellContext`m, {
                0, 0.5}], $CellContext`x, {$CellContext`t0, \
$CellContext`tm}]]]]]]], $CellContext`blossomevaluate[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := If[Length[$CellContext`m] == 1, 
         Part[$CellContext`m, 1], 
         $CellContext`blossomevaluate[
          $CellContext`blossomstep[$CellContext`m, $CellContext`t], \
$CellContext`t]], $CellContext`blossomstep[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := Part[$CellContext`m, 
           Span[1, -2]] (1 - $CellContext`t) + Part[$CellContext`m, 
           Span[2, -1]] $CellContext`t, $CellContext`brutecut[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := Module[{$CellContext`n = Length[$CellContext`m] - 1}, 
         Dot[
          $CellContext`b2p[$CellContext`n], 
          $CellContext`affinereparametrization[{$CellContext`q - \
$CellContext`p, $CellContext`p}, $CellContext`n], 
          $CellContext`p2b[$CellContext`n], $CellContext`m]], $CellContext`b2p[
         Pattern[$CellContext`n, 
          Blank[]]] := Inverse[
         $CellContext`p2b[$CellContext`n]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`affinereparametrization[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`t, $CellContext`s}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`pb[{$CellContext`a $CellContext`t + $CellContext`b \
$CellContext`s, $CellContext`s}, $CellContext`n]]]], $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["Works unmodified with the cubic.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "7"}], ",", " ", 
         RowBox[{"-", "7"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", " ", 
         RowBox[{"-", "1"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"7", ",", "7"}], "}"}]}], "}"}]}], "}"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"ti", " ", "=", " ", 
           RowBox[{"sillyintersect", "[", 
            RowBox[{
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{";;", ",", "2"}], "]"}], "]"}], ",", "y", ",", " ", 
             RowBox[{"{", 
              RowBox[{"0", ",", "1"}], "}"}]}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Line", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "10"}], ",", "y"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"10", ",", "y"}], "}"}]}], "}"}], "]"}], ",", 
              "Blue", ",", 
              RowBox[{"PointSize", "[", "Large", "]"}], ",", 
              RowBox[{"Point", "[", 
               RowBox[{"blossomevaluate", "[", 
                RowBox[{"m", ",", "ti"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}]}],
           "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"y", ",", " ", "0"}], "}"}], ",", 
       RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-7, -7}, {-3, 5}, {3, -1}, {7, 
    7}}, $CellContext`y$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-7, -7}, {-3, 5}, {3, -1}, {7, 7}}}, 
      Automatic}, {{
       Hold[$CellContext`y$$], 0}, -10, 10}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`y$3653$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-7, -7}, {-3, 5}, {3, -1}, {7, 
         7}}, $CellContext`y$$ = 0}, "ControllerVariables" :> {
        Hold[$CellContext`y$$, $CellContext`y$3653$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`ti$ = $CellContext`sillyintersect[
            Part[$CellContext`m$, 
             Span[1, All], 2], $CellContext`y$$, {0, 1}]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red], 
           ImageSize -> Large, Axes -> False], 
          Graphics[{
            Line[{{-10, $CellContext`y$$}, {10, $CellContext`y$$}}], Blue, 
            PointSize[Large], 
            Point[
             $CellContext`blossomevaluate[$CellContext`m$, \
$CellContext`ti$]]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-7, -7}, {-3, 5}, {3, -1}, {
          7, 7}}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`y$$, 0}, -10, 10}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`sillyintersect[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`x, 
          Blank[]], {
          Pattern[$CellContext`t0, 
           Blank[]], 
          Pattern[$CellContext`t1, 
           Blank[]]}, 
         Optional[
          Pattern[$CellContext`eps, 
           Blank[]], 0.01]] := 
       Module[{$CellContext`xm = $CellContext`blossomevaluate[$CellContext`m, 
            0.5], $CellContext`tm = 0.5 ($CellContext`t0 + $CellContext`t1)}, 
         
         Module[{$CellContext`a = Abs[$CellContext`x - $CellContext`xm]}, 
          If[Min[$CellContext`m] > $CellContext`x, 0, 
           If[Max[$CellContext`m] < $CellContext`x, 1, 
            If[$CellContext`a < $CellContext`eps, $CellContext`tm, 
             If[
              
              Xor[$CellContext`xm > $CellContext`x, Part[$CellContext`m, -1] > 
               Part[$CellContext`m, 1]], 
              $CellContext`sillyintersect[
               $CellContext`brutecut[$CellContext`m, {
                0.5, 1}], $CellContext`x, {$CellContext`tm, $CellContext`t1}], 
              $CellContext`sillyintersect[
               $CellContext`brutecut[$CellContext`m, {
                0, 0.5}], $CellContext`x, {$CellContext`t0, \
$CellContext`tm}]]]]]]], $CellContext`blossomevaluate[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := If[Length[$CellContext`m] == 1, 
         Part[$CellContext`m, 1], 
         $CellContext`blossomevaluate[
          $CellContext`blossomstep[$CellContext`m, $CellContext`t], \
$CellContext`t]], $CellContext`blossomstep[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := Part[$CellContext`m, 
           Span[1, -2]] (1 - $CellContext`t) + Part[$CellContext`m, 
           Span[2, -1]] $CellContext`t, $CellContext`brutecut[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := Module[{$CellContext`n = Length[$CellContext`m] - 1}, 
         Dot[
          $CellContext`b2p[$CellContext`n], 
          $CellContext`affinereparametrization[{$CellContext`q - \
$CellContext`p, $CellContext`p}, $CellContext`n], 
          $CellContext`p2b[$CellContext`n], $CellContext`m]], $CellContext`b2p[
         Pattern[$CellContext`n, 
          Blank[]]] := Inverse[
         $CellContext`p2b[$CellContext`n]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`affinereparametrization[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`t, $CellContext`s}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`pb[{$CellContext`a $CellContext`t + $CellContext`b \
$CellContext`s, $CellContext`s}, $CellContext`n]]]], $CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
Here is the function that computes the curvature at a given parameter t. \
Writing the general formula would be nasty. Instead, we know how to compute \
the curvature at u=0 for a B\[EAcute]zier curve \[Gamma](u). So we take the \
original curve, split it at t. Then we take the second piece, and evaluate \
the curvature at it\[CloseCurlyQuote]s u=0. Here is the resulting code. Note \
that if t=1, this will fail. We would have to write the formula to compute \
the curvature at the other endpoint. Not a big deal. Just a bit more code.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"curvature", "[", 
   RowBox[{"m_", ",", " ", "t_"}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"mt", " ", "=", " ", 
       RowBox[{"brutecut", "[", 
        RowBox[{"m", ",", " ", 
         RowBox[{"{", 
          RowBox[{"t", ",", " ", "1"}], "}"}]}], "]"}]}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"n", "=", 
       RowBox[{
        RowBox[{"Length", "[", "m", "]"}], "-", "1"}]}]}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"p0", " ", "=", " ", 
         RowBox[{"mt", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", "\[IndentingNewLine]", 
        RowBox[{"p1", " ", "=", " ", 
         RowBox[{"mt", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", "\[IndentingNewLine]", 
        RowBox[{"p2", "=", 
         RowBox[{"mt", "[", 
          RowBox[{"[", "3", "]"}], "]"}]}]}], "}"}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"p10", "=", 
           RowBox[{"p1", "-", "p0"}]}], ",", " ", "\[IndentingNewLine]", 
          RowBox[{"p21", "=", 
           RowBox[{"p2", "-", "p1"}]}]}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"n", "-", "1"}], ")"}], " ", 
           RowBox[{"Dot", "[", 
            RowBox[{
             RowBox[{"Cross", "[", "p10", "]"}], ",", "p21"}], "]"}]}], ",", 
          RowBox[{"n", " ", 
           RowBox[{"Power", "[", 
            RowBox[{
             RowBox[{"Dot", "[", 
              RowBox[{"p10", ",", "p10"}], "]"}], ",", 
             RowBox[{"3", "/", "2"}]}], "]"}]}]}], "}"}]}], "]"}]}], "]"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True],

Cell[TextData[{
 "With the curvature, we can compute the ",
 StyleBox["osculating circle",
  FontSlant->"Italic"],
 ". I.e., the circle that has a 2nd order contact point with the curve. Here \
is what it looks like for the quadratic:"
}], "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "5"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"6", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"\[Kappa]", " ", "=", " ", 
            RowBox[{"curvature", "[", 
             RowBox[{"m", ",", "t"}], "]"}]}], ",", " ", 
           "\[IndentingNewLine]", 
           RowBox[{"dmt", " ", "=", " ", 
            RowBox[{
             RowBox[{"bb1", "[", "t", "]"}], ".", 
             RowBox[{"derivative", "[", "m", "]"}]}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"Abs", "[", 
                RowBox[{"\[Kappa]", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "]"}], " ", "<", " ", 
               RowBox[{
                RowBox[{"Abs", "[", 
                 RowBox[{"\[Kappa]", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "100"}]}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Module", "[", 
               RowBox[{
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"r", " ", "=", " ", 
                   RowBox[{
                    RowBox[{"\[Kappa]", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "/", 
                    RowBox[{"\[Kappa]", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}]}], ",", " ", 
                  "\[IndentingNewLine]", 
                  RowBox[{"mt", " ", "=", " ", 
                   RowBox[{
                    RowBox[{"bb2", "[", "t", "]"}], ".", "m"}]}]}], "}"}], 
                ",", " ", "\[IndentingNewLine]", 
                RowBox[{"Module", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"c", " ", "=", " ", 
                    RowBox[{"mt", "+", " ", 
                    RowBox[{"r", " ", 
                    RowBox[{
                    RowBox[{"Cross", "[", "dmt", "]"}], "/", 
                    RowBox[{"Norm", "[", "dmt", "]"}]}]}]}]}], "}"}], ",", 
                  " ", "\[IndentingNewLine]", 
                  RowBox[{"{", 
                   RowBox[{"Thick", ",", " ", "Blue", ",", " ", 
                    RowBox[{"Circle", "[", 
                    RowBox[{"c", ",", 
                    RowBox[{"Abs", "[", "r", "]"}]}], "]"}], ",", " ", 
                    RowBox[{"PointSize", "[", "Large", "]"}], ",", 
                    RowBox[{"Point", "[", "c", "]"}], ",", " ", "Red", ",", 
                    " ", 
                    RowBox[{"Point", "[", "mt", "]"}]}], "}"}]}], "]"}]}], 
               "]"}], ",", 
              RowBox[{"{", "}"}]}], "]"}], "]"}], ",", "\[IndentingNewLine]", 
           
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}]}],
           "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", " ", "0.5"}], "}"}], ",", "0", ",", "0.99999"}], 
      "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
    6, -3}}, $CellContext`t$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, 5}, {6, -3}}}, Automatic}, {{
       Hold[$CellContext`t$$], 0.5}, 0, 0.99999}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`t$3858$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
         6, -3}}, $CellContext`t$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$3858$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`\[Kappa]$ = \
$CellContext`curvature[$CellContext`m$, $CellContext`t$$], $CellContext`dmt$ = 
          Dot[
            $CellContext`bb1[$CellContext`t$$], 
            $CellContext`derivative[$CellContext`m$]]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb2[$CellContext`t$$], $CellContext`m$], \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red],
            ImageSize -> Large, Axes -> False], 
          Graphics[
           If[Abs[
              Part[$CellContext`\[Kappa]$, 2]] < Abs[
               Part[$CellContext`\[Kappa]$, 1]] 100, 
            
            Module[{$CellContext`r$ = 
              Part[$CellContext`\[Kappa]$, 2]/
               Part[$CellContext`\[Kappa]$, 1], $CellContext`mt$ = Dot[
                $CellContext`bb2[$CellContext`t$$], $CellContext`m$]}, 
             Module[{$CellContext`c$ = $CellContext`mt$ + $CellContext`r$ (
                  Cross[$CellContext`dmt$]/Norm[$CellContext`dmt$])}, {
              Thick, Blue, 
               Circle[$CellContext`c$, 
                Abs[$CellContext`r$]], 
               PointSize[Large], 
               Point[$CellContext`c$], Red, 
               Point[$CellContext`mt$]}]], {}]], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, 5}, {6, -3}}}, 
         Automatic, ControlType -> Locator}, {{$CellContext`t$$, 0.5}, 0, 
         0.99999}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`curvature[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := 
       Module[{$CellContext`mt = $CellContext`brutecut[$CellContext`m, \
{$CellContext`t, 1}], $CellContext`n = Length[$CellContext`m] - 1}, 
         Module[{$CellContext`p0 = Part[$CellContext`mt, 1], $CellContext`p1 = 
           Part[$CellContext`mt, 2], $CellContext`p2 = 
           Part[$CellContext`mt, 3]}, 
          
          Module[{$CellContext`p10 = $CellContext`p1 - $CellContext`p0, \
$CellContext`p21 = $CellContext`p2 - $CellContext`p1}, {($CellContext`n - 1) 
            Dot[
              Cross[$CellContext`p10], $CellContext`p21], $CellContext`n 
            Dot[$CellContext`p10, $CellContext`p10]^(3/
              2)}]]], $CellContext`brutecut[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := Module[{$CellContext`n = Length[$CellContext`m] - 1}, 
         Dot[
          $CellContext`b2p[$CellContext`n], 
          $CellContext`affinereparametrization[{$CellContext`q - \
$CellContext`p, $CellContext`p}, $CellContext`n], 
          $CellContext`p2b[$CellContext`n], $CellContext`m]], $CellContext`b2p[
         Pattern[$CellContext`n, 
          Blank[]]] := Inverse[
         $CellContext`p2b[$CellContext`n]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`affinereparametrization[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`t, $CellContext`s}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`pb[{$CellContext`a $CellContext`t + $CellContext`b \
$CellContext`s, $CellContext`s}, $CellContext`n]]]], $CellContext`bb1[
         Pattern[$CellContext`t, 
          Blank[]]] := {
        1 - $CellContext`t, $CellContext`t}, $CellContext`derivative[
         Pattern[$CellContext`m, 
          Blank[]]] := (Part[$CellContext`m, 
           Span[2, All]] - Part[$CellContext`m, 
          Span[1, -2]]) (Length[$CellContext`m] - 1), $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["And for the cubic.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "7"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", " ", "5"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"7", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"\[Kappa]", " ", "=", " ", 
            RowBox[{"curvature", "[", 
             RowBox[{"m", ",", "t"}], "]"}]}], ",", " ", 
           "\[IndentingNewLine]", 
           RowBox[{"dmt", " ", "=", " ", 
            RowBox[{
             RowBox[{"bb2", "[", "t", "]"}], ".", 
             RowBox[{"derivative", "[", "m", "]"}]}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"Abs", "[", 
                RowBox[{"\[Kappa]", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "]"}], " ", "<", " ", 
               RowBox[{
                RowBox[{"Abs", "[", 
                 RowBox[{"\[Kappa]", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", "100"}]}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Module", "[", 
               RowBox[{
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"r", " ", "=", " ", 
                   RowBox[{
                    RowBox[{"\[Kappa]", "[", 
                    RowBox[{"[", "2", "]"}], "]"}], "/", 
                    RowBox[{"\[Kappa]", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}]}], ",", " ", 
                  "\[IndentingNewLine]", 
                  RowBox[{"mt", " ", "=", " ", 
                   RowBox[{
                    RowBox[{"bb3", "[", "t", "]"}], ".", "m"}]}]}], "}"}], 
                ",", " ", "\[IndentingNewLine]", 
                RowBox[{"Module", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"c", " ", "=", " ", 
                    RowBox[{"mt", "+", " ", 
                    RowBox[{"r", " ", 
                    RowBox[{
                    RowBox[{"Cross", "[", "dmt", "]"}], "/", 
                    RowBox[{"Norm", "[", "dmt", "]"}]}]}]}]}], "}"}], ",", 
                  " ", 
                  RowBox[{"{", 
                   RowBox[{"Thick", ",", " ", "Blue", ",", " ", 
                    RowBox[{"Circle", "[", 
                    RowBox[{"c", ",", 
                    RowBox[{"Abs", "[", "r", "]"}]}], "]"}], ",", " ", 
                    RowBox[{"PointSize", "[", "Large", "]"}], ",", 
                    RowBox[{"Point", "[", "c", "]"}], ",", " ", "Red", ",", 
                    " ", 
                    RowBox[{"Point", "[", "mt", "]"}]}], "}"}]}], "]"}]}], 
               "]"}], ",", 
              RowBox[{"{", "}"}]}], "]"}], "]"}], ",", "\[IndentingNewLine]", 
           
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", 
                    RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
                ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}]}],
           "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", " ", "0.5"}], "}"}], ",", "0", ",", "0.99999"}], 
      "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
    7, -3}}, $CellContext`t$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-7, -3}, {-3, 5}, {3, 5}, {7, -3}}}, 
      Automatic}, {{
       Hold[$CellContext`t$$], 0.5}, 0, 0.99999}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`t$3934$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
         7, -3}}, $CellContext`t$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$3934$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`\[Kappa]$ = \
$CellContext`curvature[$CellContext`m$, $CellContext`t$$], $CellContext`dmt$ = 
          Dot[
            $CellContext`bb2[$CellContext`t$$], 
            $CellContext`derivative[$CellContext`m$]]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t$$], $CellContext`m$], \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> Directive[Thick, Red],
            ImageSize -> Large, Axes -> False], 
          Graphics[
           If[Abs[
              Part[$CellContext`\[Kappa]$, 2]] < Abs[
               Part[$CellContext`\[Kappa]$, 1]] 100, 
            
            Module[{$CellContext`r$ = 
              Part[$CellContext`\[Kappa]$, 2]/
               Part[$CellContext`\[Kappa]$, 1], $CellContext`mt$ = Dot[
                $CellContext`bb3[$CellContext`t$$], $CellContext`m$]}, 
             
             Module[{$CellContext`c$ = $CellContext`mt$ + $CellContext`r$ (
                  Cross[$CellContext`dmt$]/Norm[$CellContext`dmt$])}, {
              Thick, Blue, 
               Circle[$CellContext`c$, 
                Abs[$CellContext`r$]], 
               PointSize[Large], 
               Point[$CellContext`c$], Red, 
               Point[$CellContext`mt$]}]], {}]], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-7, -3}, {-3, 5}, {3, 5}, {
          7, -3}}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`t$$, 0.5}, 0, 0.99999}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`curvature[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := 
       Module[{$CellContext`mt = $CellContext`brutecut[$CellContext`m, \
{$CellContext`t, 1}], $CellContext`n = Length[$CellContext`m] - 1}, 
         Module[{$CellContext`p0 = Part[$CellContext`mt, 1], $CellContext`p1 = 
           Part[$CellContext`mt, 2], $CellContext`p2 = 
           Part[$CellContext`mt, 3]}, 
          
          Module[{$CellContext`p10 = $CellContext`p1 - $CellContext`p0, \
$CellContext`p21 = $CellContext`p2 - $CellContext`p1}, {($CellContext`n - 1) 
            Dot[
              Cross[$CellContext`p10], $CellContext`p21], $CellContext`n 
            Dot[$CellContext`p10, $CellContext`p10]^(3/
              2)}]]], $CellContext`brutecut[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := Module[{$CellContext`n = Length[$CellContext`m] - 1}, 
         Dot[
          $CellContext`b2p[$CellContext`n], 
          $CellContext`affinereparametrization[{$CellContext`q - \
$CellContext`p, $CellContext`p}, $CellContext`n], 
          $CellContext`p2b[$CellContext`n], $CellContext`m]], $CellContext`b2p[
         Pattern[$CellContext`n, 
          Blank[]]] := Inverse[
         $CellContext`p2b[$CellContext`n]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`bb[{
          Pattern[$CellContext`t, 
           Blank[]], 
          Pattern[$CellContext`s, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`t, \
$CellContext`v -> $CellContext`s}]], $CellContext`affinereparametrization[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`t, $CellContext`s}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`t, $CellContext`s}, \
$CellContext`n]]& , 
           $CellContext`pb[{$CellContext`a $CellContext`t + $CellContext`b \
$CellContext`s, $CellContext`s}, $CellContext`n]]]], $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, \
$CellContext`derivative[
         Pattern[$CellContext`m, 
          Blank[]]] := (Part[$CellContext`m, 
           Span[2, All]] - Part[$CellContext`m, 
          Span[1, -2]]) (Length[$CellContext`m] - 1), $CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
Turns out that the evolute of the quadratic Bezier is a cubic Bezier\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"evolute", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", "y0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_"}], "}"}]}], "}"}]}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"n", " ", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"x0", "-", "x1"}], ")"}], "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"y0", "-", "y1"}], ")"}], "2"]}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{"x0", "-", "x1"}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{"x1", "-", "x2"}], ")"}]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"y0", "-", "y1"}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{"y1", "-", "y2"}], ")"}]}]}], ",", 
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"x1", "-", "x2"}], ")"}], "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"y1", "-", "y2"}], ")"}], "2"]}]}], "}"}]}], ",", " ", 
      RowBox[{"d", "=", 
       RowBox[{"derivative", "[", "m", "]"}]}], ",", 
      RowBox[{"e", "=", 
       RowBox[{"elevate", "[", "m", "]"}]}], ",", " ", 
      RowBox[{"det", "=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"x2", " ", 
          RowBox[{"(", 
           RowBox[{"y0", "-", "y1"}], ")"}]}], "+", 
         RowBox[{"x0", " ", 
          RowBox[{"(", 
           RowBox[{"y1", "-", "y2"}], ")"}]}], "+", 
         RowBox[{"x1", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "y0"}], "+", "y2"}], ")"}]}]}], ")"}]}]}], "}"}], 
    ",", 
    RowBox[{
     RowBox[{
      RowBox[{"product", "[", 
       RowBox[{
        RowBox[{"Map", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{"#", ",", "#"}], "}"}], "&"}], ",", "n"}], "]"}], ",", 
        " ", 
        RowBox[{"Map", "[", 
         RowBox[{"Cross", ",", "d"}], "]"}]}], "]"}], "/", "det"}], "+", 
     "e"}]}], " ", "]"}]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "2"}], ",", "0"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "4"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"2", ",", "0"}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"m", "=", 
          RowBox[{"N", "[", "pt", "]"}]}], ",", "\[IndentingNewLine]", 
         RowBox[{"e", "=", 
          RowBox[{"N", "[", 
           RowBox[{"evolute", "[", "pt", "]"}], "]"}]}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "e"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Red"}], "]"}], ",", 
              RowBox[{"Directive", "[", 
               RowBox[{"Thick", ",", "Blue"}], "]"}]}], "}"}]}], ",", " ", 
           RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
           RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"PointSize", "[", "Large", "]"}], ",", "Black", ",", " ", 
            
            RowBox[{"Point", "[", "m", "]"}], ",", "\[IndentingNewLine]", 
            "Blue", ",", 
            RowBox[{"Point", "[", "e", "]"}], ",", "\[IndentingNewLine]", 
            "Red", ",", 
            RowBox[{"Point", "[", 
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
            "\[IndentingNewLine]", "Green", ",", 
            RowBox[{"Point", "[", 
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "e"}], "]"}]}], "}"}], 
          "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"Subscript", "[", 
                 RowBox[{"p", ",", 
                  RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
              ",", 
              RowBox[{
               RowBox[{"m", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "+", 
               RowBox[{"{", 
                RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "m", "]"}]}], "}"}]}], "]"}], "]"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"Subscript", "[", 
                 RowBox[{"q", ",", 
                  RowBox[{"i", "-", "1"}]}], "]"}], ",", "Large"}], "]"}], 
              ",", 
              RowBox[{
               RowBox[{"e", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "+", 
               RowBox[{"{", 
                RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "e", "]"}]}], "}"}]}], "]"}], "]"}], ",",
          "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"t", ",", "Large"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"-", "5"}]}], "}"}]}], "]"}], "]"}]}], "]"}]}], "]"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", " ", "0.5"}], "}"}], ",", "0", ",", "1"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-2, 0}, {0, 4}, {2, 
    0}}, $CellContext`t$$ = 0.5, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-2, 0}, {0, 4}, {2, 0}}}, Automatic}, {{
       Hold[$CellContext`t$$], 0.5}, 0, 1}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`t$4014$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-2, 0}, {0, 4}, {2, 
         0}}, $CellContext`t$$ = 0.5}, "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$4014$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = N[$CellContext`pt$$], $CellContext`e$ = N[
           $CellContext`evolute[$CellContext`pt$$]]}, 
        Show[
         ParametricPlot[{
           Dot[
            $CellContext`bb2[$CellContext`t$$], $CellContext`m$], 
           Dot[
            $CellContext`bb3[$CellContext`t$$], $CellContext`e$]}, \
{$CellContext`t$$, 0, 1}, PlotRange -> 10, PlotStyle -> {
            Directive[Thick, Red], 
            Directive[Thick, Blue]}, ImageSize -> Large, Axes -> False], 
         Graphics[{
           PointSize[Large], Black, 
           Point[$CellContext`m$], Blue, 
           Point[$CellContext`e$], Red, 
           Point[
            Dot[
             $CellContext`bb2[$CellContext`t$$], $CellContext`m$]], Green, 
           Point[
            Dot[
             $CellContext`bb3[$CellContext`t$$], $CellContext`e$]]}], 
         Graphics[
          Table[
           Text[
            Style[
             Subscript[$CellContext`p, $CellContext`i - 1], Large], 
            Part[$CellContext`m$, $CellContext`i] + {0, 1}], {$CellContext`i, 
            1, 
            Length[$CellContext`m$]}]], 
         Graphics[
          Table[
           Text[
            Style[
             Subscript[$CellContext`q, $CellContext`i - 1], Large], 
            Part[$CellContext`e$, $CellContext`i] + {0, 1}], {$CellContext`i, 
            1, 
            Length[$CellContext`e$]}]], 
         Graphics[
          Text[
           Style[$CellContext`t$$, Large], {0, -5}]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-2, 0}, {0, 4}, {2, 0}}}, 
         Automatic, ControlType -> Locator}, {{$CellContext`t$$, 0.5}, 0, 1}},
       "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`evolute[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]]}}]] := 
       Module[{$CellContext`n = {($CellContext`x0 - $CellContext`x1)^2 + \
($CellContext`y0 - $CellContext`y1)^2, ($CellContext`x0 - $CellContext`x1) \
($CellContext`x1 - $CellContext`x2) + ($CellContext`y0 - $CellContext`y1) \
($CellContext`y1 - $CellContext`y2), ($CellContext`x1 - $CellContext`x2)^2 + \
($CellContext`y1 - $CellContext`y2)^2}, $CellContext`d = \
$CellContext`derivative[$CellContext`m], $CellContext`e = \
$CellContext`elevate[$CellContext`m], $CellContext`det = $CellContext`x2 \
($CellContext`y0 - $CellContext`y1) + $CellContext`x0 ($CellContext`y1 - \
$CellContext`y2) + $CellContext`x1 (-$CellContext`y0 + $CellContext`y2)}, \
$CellContext`product[
            Map[{#, #}& , $CellContext`n], 
            Map[
            Cross, $CellContext`d]]/$CellContext`det + $CellContext`e], \
$CellContext`derivative[
         Pattern[$CellContext`m, 
          Blank[]]] := (Part[$CellContext`m, 
           Span[2, All]] - Part[$CellContext`m, 
          Span[1, -2]]) (Length[$CellContext`m] - 1), $CellContext`elevate[
         Pattern[$CellContext`m, 
          Blank[]]] := Append[
         Prepend[
          
          Table[(($CellContext`i - 1)/Length[$CellContext`m]) 
            Part[$CellContext`m, $CellContext`i - 1] + (
             1 - ($CellContext`i - 1)/Length[$CellContext`m]) 
            Part[$CellContext`m, $CellContext`i], {$CellContext`i, 2, 
            Length[$CellContext`m]}], 
          First[$CellContext`m]], 
         Last[$CellContext`m]], $CellContext`product[
         Pattern[$CellContext`p, 
          Blank[]], 
         Pattern[$CellContext`q, 
          Blank[]]] := 
       Module[{$CellContext`m = Length[$CellContext`p] - 1, $CellContext`n = 
          Length[$CellContext`q] - 1}, 
         Table[
         Sum[Binomial[$CellContext`m, $CellContext`i] 
            Binomial[$CellContext`n, $CellContext`k - $CellContext`i] 
            Part[$CellContext`p, $CellContext`i + 1] 
            Part[$CellContext`q, $CellContext`k - $CellContext`i + 
              1], {$CellContext`i, 
             Max[0, $CellContext`k - $CellContext`n], 
             Min[$CellContext`m, $CellContext`k]}]/
          Binomial[$CellContext`m + $CellContext`n, $CellContext`k], \
{$CellContext`k, 0, $CellContext`m + $CellContext`n}]], $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, \
$CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]]
},
WindowSize->{1474, 1391},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (July 28, \
2016)",
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
Cell[1464, 33, 48, 0, 29, "Text"],
Cell[1515, 35, 196, 6, 32, "Input"],
Cell[1714, 43, 190, 4, 29, "Text"],
Cell[1907, 49, 906, 30, 48, "Input",
 InitializationCell->True],
Cell[2816, 81, 28, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[2869, 85, 137, 4, 32, "Input"],
Cell[3009, 91, 269, 9, 35, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3315, 105, 137, 4, 32, "Input"],
Cell[3455, 111, 418, 14, 35, "Output"]
}, Open  ]],
Cell[3888, 128, 124, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[4037, 135, 137, 4, 32, "Input"],
Cell[4177, 141, 269, 9, 35, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4483, 155, 137, 4, 32, "Input"],
Cell[4623, 161, 418, 14, 35, "Output"]
}, Open  ]],
Cell[5056, 178, 94, 2, 29, "Text"],
Cell[5153, 182, 774, 26, 48, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[5952, 212, 153, 5, 32, "Input"],
Cell[6108, 219, 157, 5, 35, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6302, 229, 153, 5, 32, "Input"],
Cell[6458, 236, 243, 8, 35, "Output"]
}, Open  ]],
Cell[6716, 247, 319, 9, 29, "Text"],
Cell[7038, 258, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[7315, 269, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[7592, 280, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[7869, 291, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[8146, 302, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[8423, 313, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[8700, 324, 118, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[8843, 331, 1000, 28, 91, "Input",
 InitializationCell->True],
Cell[9846, 361, 2431, 52, 467, "Output"]
}, Open  ]],
Cell[12292, 416, 105, 3, 29, "Text"],
Cell[12400, 421, 706, 23, 48, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[13131, 448, 99, 2, 32, "Input"],
Cell[13233, 452, 607, 18, 47, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13877, 475, 99, 2, 32, "Input"],
Cell[13979, 479, 661, 20, 63, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14677, 504, 99, 2, 32, "Input"],
Cell[14779, 508, 747, 23, 81, "Output"]
}, Open  ]],
Cell[15541, 534, 37, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[15603, 538, 538, 17, 32, "Input"],
Cell[16144, 557, 507, 14, 32, "Output"]
}, Open  ]],
Cell[16666, 574, 62, 0, 29, "Text"],
Cell[16731, 576, 183, 5, 48, "Input",
 InitializationCell->True],
Cell[16917, 583, 55, 0, 29, "Text"],
Cell[16975, 585, 585, 18, 48, "Input",
 InitializationCell->True],
Cell[17563, 605, 71, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[17659, 609, 98, 2, 32, "Input"],
Cell[17760, 613, 608, 18, 67, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18405, 636, 103, 2, 32, "Input"],
Cell[18511, 640, 627, 19, 85, "Output"]
}, Open  ]],
Cell[19153, 662, 47, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[19225, 666, 113, 3, 32, "Input"],
Cell[19341, 671, 661, 22, 35, "Output"]
}, Open  ]],
Cell[20017, 696, 30, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[20072, 700, 113, 3, 32, "Input"],
Cell[20188, 705, 991, 32, 35, "Output"]
}, Open  ]],
Cell[21194, 740, 185, 4, 29, "Text"],
Cell[21382, 746, 502, 17, 48, "Input",
 InitializationCell->True],
Cell[21887, 765, 146, 3, 29, "Text"],
Cell[22036, 770, 499, 15, 48, "Input",
 InitializationCell->True],
Cell[22538, 787, 89, 2, 29, "Text"],
Cell[CellGroupData[{
Cell[22652, 793, 3939, 100, 343, "Input",
 InitializationCell->True],
Cell[26594, 895, 3476, 75, 691, "Output"]
}, Open  ]],
Cell[30085, 973, 41, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[30151, 977, 4738, 115, 406, "Input",
 InitializationCell->True],
Cell[34892, 1094, 3849, 84, 691, "Output"]
}, Open  ]],
Cell[38756, 1181, 134, 3, 29, "Text"],
Cell[38893, 1186, 1114, 32, 48, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[40032, 1222, 5484, 137, 343, "Input",
 InitializationCell->True],
Cell[45519, 1361, 4504, 100, 691, "Output"]
}, Open  ]],
Cell[50038, 1464, 618, 24, 68, "Text"],
Cell[50659, 1490, 1561, 47, 70, "Input",
 InitializationCell->True],
Cell[52223, 1539, 191, 4, 29, "Text"],
Cell[52417, 1545, 470, 16, 48, "Input",
 InitializationCell->True],
Cell[52890, 1563, 37, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[52952, 1567, 144, 4, 32, "Input"],
Cell[53099, 1573, 1029, 33, 49, "Output"]
}, Open  ]],
Cell[54143, 1609, 40, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[54208, 1613, 144, 4, 32, "Input"],
Cell[54355, 1619, 1268, 42, 67, "Output"]
}, Open  ]],
Cell[55638, 1664, 206, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[55869, 1672, 4275, 109, 301, "Input",
 InitializationCell->True],
Cell[60147, 1783, 3748, 82, 691, "Output"]
}, Open  ]],
Cell[63910, 1868, 35, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[63970, 1872, 4382, 112, 301, "Input",
 InitializationCell->True],
Cell[68355, 1986, 3910, 86, 691, "Output"]
}, Open  ]],
Cell[72280, 2075, 496, 8, 47, "Text"],
Cell[72779, 2085, 59, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[72863, 2089, 95, 2, 32, "Input"],
Cell[72961, 2093, 108, 3, 35, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[73106, 2101, 157, 5, 32, "Input"],
Cell[73266, 2108, 316, 10, 35, "Output"]
}, Open  ]],
Cell[73597, 2121, 28, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[73650, 2125, 95, 2, 32, "Input"],
Cell[73748, 2129, 143, 4, 35, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[73928, 2138, 157, 5, 32, "Input"],
Cell[74088, 2145, 646, 20, 35, "Output"]
}, Open  ]],
Cell[74749, 2168, 198, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[74972, 2176, 911, 27, 71, "Input"],
Cell[75886, 2205, 83, 2, 32, "Output"]
}, Open  ]],
Cell[75984, 2210, 90, 2, 29, "Text"],
Cell[CellGroupData[{
Cell[76099, 2216, 1206, 35, 93, "Input"],
Cell[77308, 2253, 93, 2, 32, "Output"]
}, Open  ]],
Cell[77416, 2258, 88, 2, 29, "Text"],
Cell[77507, 2262, 1000, 31, 48, "Input",
 InitializationCell->True],
Cell[78510, 2295, 37, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[78572, 2299, 943, 29, 32, "Input"],
Cell[79518, 2330, 507, 14, 32, "Output"]
}, Open  ]],
Cell[80040, 2347, 205, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[80270, 2355, 330, 10, 32, "Input"],
Cell[80603, 2367, 31, 0, 32, "Output"]
}, Open  ]],
Cell[80649, 2370, 201, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[80875, 2378, 684, 23, 32, "Input"],
Cell[81562, 2403, 31, 0, 32, "Output"]
}, Open  ]],
Cell[81608, 2406, 192, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[81825, 2414, 790, 26, 32, "Input"],
Cell[82618, 2442, 31, 0, 32, "Output"]
}, Open  ]],
Cell[82664, 2445, 62, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[82751, 2449, 510, 15, 32, "Input"],
Cell[83264, 2466, 3320, 106, 71, "Output"]
}, Open  ]],
Cell[86599, 2575, 58, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[86682, 2579, 505, 15, 32, "Input"],
Cell[87190, 2596, 7263, 221, 101, "Output"]
}, Open  ]],
Cell[94468, 2820, 466, 11, 47, "Text"],
Cell[94937, 2833, 120, 3, 29, "Text"],
Cell[95060, 2838, 732, 23, 48, "Input",
 InitializationCell->True],
Cell[95795, 2863, 52, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[95872, 2867, 4632, 120, 280, "Input",
 InitializationCell->True],
Cell[100507, 2989, 6454, 146, 747, "Output"]
}, Open  ]],
Cell[106976, 3138, 34, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[107035, 3142, 4716, 123, 259, "Input",
 InitializationCell->True],
Cell[111754, 3267, 6551, 148, 747, "Output"]
}, Open  ]],
Cell[118320, 3418, 169, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[118514, 3425, 440, 15, 32, "Input"],
Cell[118957, 3442, 423, 14, 32, "Output"]
}, Open  ]],
Cell[119395, 3459, 190, 4, 29, "Text"],
Cell[119588, 3465, 610, 20, 48, "Input",
 InitializationCell->True],
Cell[120201, 3487, 610, 20, 48, "Input",
 InitializationCell->True],
Cell[120814, 3509, 142, 3, 29, "Text"],
Cell[120959, 3514, 1930, 53, 133, "Input",
 InitializationCell->True],
Cell[122892, 3569, 115, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[123032, 3576, 2967, 79, 217, "Input",
 InitializationCell->True],
Cell[126002, 3657, 4963, 124, 659, "Output"]
}, Open  ]],
Cell[130980, 3784, 61, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[131066, 3788, 324, 10, 32, "Input"],
Cell[131393, 3800, 1189, 40, 35, "Output"]
}, Open  ]],
Cell[132597, 3843, 70, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[132692, 3847, 60, 1, 32, "Input"],
Cell[132755, 3850, 297, 10, 32, "Output"]
}, Open  ]],
Cell[133067, 3863, 1054, 34, 48, "Input",
 InitializationCell->True],
Cell[134124, 3899, 1054, 34, 48, "Input",
 InitializationCell->True],
Cell[135181, 3935, 118, 3, 29, "Text"],
Cell[135302, 3940, 2118, 58, 133, "Input",
 InitializationCell->True],
Cell[137423, 4000, 126, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[137574, 4007, 3075, 82, 217, "Input",
 InitializationCell->True],
Cell[140652, 4091, 7984, 204, 659, "Output"]
}, Open  ]],
Cell[148651, 4298, 132, 3, 29, "Text"],
Cell[148786, 4303, 1125, 30, 133, "Input",
 InitializationCell->True],
Cell[149914, 4335, 107, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[150046, 4342, 3698, 94, 259, "Input",
 InitializationCell->True],
Cell[153747, 4438, 11129, 280, 659, "Output"]
}, Open  ]],
Cell[164891, 4721, 49, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[164965, 4725, 3708, 96, 217, "Input",
 InitializationCell->True],
Cell[168676, 4823, 11224, 281, 659, "Output"]
}, Open  ]],
Cell[179915, 5107, 577, 9, 65, "Text"],
Cell[180495, 5118, 200, 4, 29, "Text"],
Cell[180698, 5124, 2275, 68, 112, "Input",
 InitializationCell->True],
Cell[182976, 5194, 162, 3, 29, "Text"],
Cell[183141, 5199, 1313, 42, 70, "Input",
 InitializationCell->True],
Cell[184457, 5243, 69, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[184551, 5247, 5677, 141, 322, "Input",
 InitializationCell->True],
Cell[190231, 5390, 8470, 189, 677, "Output"]
}, Open  ]],
Cell[198716, 5582, 54, 0, 29, "Text"],
Cell[198773, 5584, 2701, 79, 133, "Input",
 InitializationCell->True],
Cell[201477, 5665, 140, 3, 29, "Text"],
Cell[201620, 5670, 1312, 42, 70, "Input",
 InitializationCell->True],
Cell[202935, 5714, 55, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[203015, 5718, 5853, 145, 322, "Input",
 InitializationCell->True],
Cell[208871, 5865, 10556, 237, 677, "Output"]
}, Open  ]],
Cell[219442, 6105, 828, 14, 119, "Text"],
Cell[220273, 6121, 2682, 69, 196, "Input",
 InitializationCell->True],
Cell[222958, 6192, 61, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[223044, 6196, 3616, 94, 217, "Input",
 InitializationCell->True],
Cell[226663, 6292, 7458, 166, 691, "Output"]
}, Open  ]],
Cell[234136, 6461, 48, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[234209, 6465, 3783, 99, 217, "Input",
 InitializationCell->True],
Cell[237995, 6566, 7562, 169, 691, "Output"]
}, Open  ]],
Cell[245572, 6738, 562, 8, 65, "Text"],
Cell[246137, 6748, 2000, 55, 259, "Input",
 InitializationCell->True],
Cell[248140, 6805, 247, 6, 29, "Text"],
Cell[CellGroupData[{
Cell[248412, 6815, 5302, 129, 385, "Input",
 InitializationCell->True],
Cell[253717, 6946, 7338, 160, 691, "Output"]
}, Open  ]],
Cell[261070, 7109, 34, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[261129, 7113, 5363, 132, 343, "Input",
 InitializationCell->True],
Cell[266495, 7247, 7497, 164, 691, "Output"]
}, Open  ]],
Cell[274007, 7414, 92, 2, 29, "Text"],
Cell[274102, 7418, 2359, 75, 95, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[276486, 7497, 4770, 125, 364, "Input",
 InitializationCell->True],
Cell[281259, 7624, 6519, 143, 691, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature hxDhWYDj5T#g5C1AIryQJQLt *)
