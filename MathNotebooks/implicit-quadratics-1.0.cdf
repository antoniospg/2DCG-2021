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
NotebookDataLength[     67817,       1983]
NotebookOptionsPosition[     64708,       1866]
NotebookOutlinePosition[     65177,       1887]
CellTagsIndexPosition[     65134,       1884]
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
This creates a vector with each element of the homogeneous Bernstein basis\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"bb", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"s_", ",", " ", "t_"}], "}"}], ",", " ", "n_"}], "]"}], " ", ":=",
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
          RowBox[{"n", "-", "k"}], ")"}]}], " ", 
        RowBox[{"u", "^", "k"}]}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"k", ",", " ", "0", ",", " ", "n"}], "}"}]}], "]"}], " ", "/.",
      " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"u", "\[Rule]", "s"}], ",", " ", 
       RowBox[{"v", "\[Rule]", "t"}]}], "}"}]}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
This creates a vector with each element of the homogeneous Power basis\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"pb", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"s_", ",", " ", "t_"}], "}"}], ",", " ", "n_"}], "]"}], " ", ":=",
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
       RowBox[{"u", "\[Rule]", "s"}], ",", " ", 
       RowBox[{"v", "\[Rule]", "t"}]}], "}"}]}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[TextData[{
 "We ",
 StyleBox["could",
  FontSlant->"Italic"],
 " use bb[{t,1},2] directly, but ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " would expand things algebraically. Not only would this take longer, but it \
would produce indeterminate results at t=0 and t=1... "
}], "Text"],

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

Cell["\<\
This gives the matrix that converts from the Power basis to the Bernstein \
basis\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"p2b", "[", "n_", "]"}], " ", ":=", " ", 
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
             RowBox[{"s", ",", "t"}], "}"}], ",", "n"}], "]"}]}], "]"}], 
        "&"}], ",", " ", 
       RowBox[{"bb", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"s", ",", "t"}], "}"}], ",", "n"}], "]"}]}], "]"}]}], "]"}],
    "]"}]}]], "Input",
 InitializationCell->True],

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
         RowBox[{"s", ",", "t"}], "}"}], ",", " ", "n"}], "]"}], ".", 
      RowBox[{"p2b", "[", "n", "]"}]}], " ", "-", " ", 
     RowBox[{"bb", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"s", ",", "t"}], "}"}], ",", "n"}], "]"}]}], ",", " ", 
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

Cell["\<\
This gives a matrix with projective control points, and another with \
euclidean points \
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"ppoints", "[", "n_", "]"}], " ", ":=", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"Map", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"Symbol", "[", 
        RowBox[{"#", " ", "<>", 
         RowBox[{"ToString", "[", "k", "]"}]}], "]"}], "&"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"\"\<x\>\"", ",", " ", "\"\<y\>\"", ",", " ", "\"\<w\>\""}], 
       "}"}]}], "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"k", ",", " ", "0", ",", " ", "n"}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
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
       RowBox[{"\"\<x\>\"", ",", " ", "\"\<y\>\""}], "}"}]}], "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"k", ",", " ", "0", ",", " ", "n"}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["Now we can plot the curve", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "4"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "5"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{"4", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", " ", "=", " ", 
         RowBox[{"N", "[", "pt", "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
           RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{"Dashed", ",", " ", 
            RowBox[{"Line", "[", "pt", "]"}]}], "}"}], "]"}], ",", 
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
         RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}]}], "]"}]}],
   "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-4, -3}, {0, 5}, {4, -3}}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-4, -3}, {0, 5}, {4, -3}}}, Automatic}}, 
    Typeset`size$$ = {576., {286., 290.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-4, -3}, {0, 5}, {4, -3}}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = N[$CellContext`pt$$]}, 
        Show[
         ParametricPlot[
          Dot[
           $CellContext`bb2[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Thick, Axes -> False], 
         Graphics[{Dashed, 
           Line[$CellContext`pt$$]}], 
         Graphics[
          Table[
           Text[
            Style[
             Subscript[$CellContext`p, $CellContext`i - 1], Large], 
            Part[$CellContext`pt$$, $CellContext`i] + {0, 
             1}], {$CellContext`i, 1, 
            Length[$CellContext`pt$$]}]], ImageSize -> Large]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-4, -3}, {0, 5}, {4, -3}}}, 
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
There are many different ways to find the implicit form for a parabola. Here \
is the simplest. Start from the parametric equation.\
\>", "Text"],

Cell[BoxData[
 StyleBox[
  RowBox[{
   RowBox[{"apoints", "[", "n_", "]"}], " ", ":=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"Append", "[", 
      RowBox[{
       RowBox[{"Map", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Symbol", "[", 
           RowBox[{"#", " ", "<>", 
            RowBox[{"ToString", "[", "k", "]"}]}], "]"}], "&"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"\"\<x\>\"", ",", " ", "\"\<y\>\""}], "}"}]}], "]"}], ",", 
       "1"}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"k", ",", " ", "0", ",", " ", "n"}], "}"}]}], "]"}]}],
  InitializationCell->True]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"bb2", "[", "t", "]"}], ".", 
    RowBox[{"apoints", "[", "2", "]"}]}], "//", " ", "Simplify"}], "//", " ", 
  "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "t"}], ")"}], "2"], " ", "x0"}], "+", 
        RowBox[{"t", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "t"}], ")"}], " ", "x1"}], "+", 
           RowBox[{"t", " ", "x2"}]}], ")"}]}]}]},
      {
       RowBox[{
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "t"}], ")"}], "2"], " ", "y0"}], "+", 
        RowBox[{"t", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "t"}], ")"}], " ", "y1"}], "+", 
           RowBox[{"t", " ", "y2"}]}], ")"}]}]}]},
      {"1"}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell["\<\
We will find an affine transformation T that maps (x,y,1) to (k, l, 1) and \
transforms our parametric curve into the simplest parametric parabola {t, \
t^2, 1}. There, the parabola has the equation l = k^2, so we know its \
implicit form. If we want to evaluate the implicit form at an artirary point \
(x, y, 1), we map it through T and evaluate k^2 - l.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"bb2", "[", "t", "]"}], ".", 
    RowBox[{"apoints", "[", "2", "]"}]}], "\[Equal]", "  ", 
   RowBox[{
    RowBox[{"pb2", "[", "t", "]"}], ".", 
    RowBox[{"p2b", "[", "2", "]"}], ".", 
    RowBox[{"apoints", "[", "2", "]"}]}]}], "  ", "//", " ", 
  "Simplify"}]], "Input"],

Cell[BoxData["True"], "Output"]
}, Open  ]],

Cell["We want to find T such that", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"bb2", "[", "t", "]"}], ".", 
   RowBox[{"apoints", "[", "2", "]"}], ".", "T"}], " ", "\[Equal]", " ", 
  RowBox[{
   RowBox[{"pb2", "[", "t", "]"}], ".", 
   RowBox[{"p2b", "[", "2", "]"}], ".", 
   RowBox[{"apoints", "[", "2", "]"}], ".", "T"}], "  ", "\[Equal]", " ", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"1", ",", " ", "t", ",", " ", 
     RowBox[{"t", "^", "2"}]}], "}"}], ".", 
   RowBox[{"p2b", "[", "2", "]"}], ".", 
   RowBox[{"apoints", "[", "2", "]"}], ".", "T"}], " ", "\[Equal]", " ", 
  RowBox[{"{", 
   RowBox[{"t", ",", " ", 
    RowBox[{"t", "^", "2"}], ",", " ", "1"}], "}"}]}]], "Input"],

Cell["But  we can also write {t, t^2, 1} in the polynomial basis", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{"t", ",", " ", 
     RowBox[{"t", "^", "2"}], ",", " ", "1"}], "}"}], " ", "\[Equal]", " ", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"1", ",", " ", "t", ",", " ", 
      RowBox[{"t", "^", "2"}]}], "}"}], ".", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", "0", ",", "1"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1", ",", "0", ",", "0"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], "}"}]}], " ", "==", " ", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"1", ",", " ", "t", ",", " ", 
      RowBox[{"t", "^", "2"}]}], "}"}], ".", "M"}]}], " ", "=", " ", 
  RowBox[{
   RowBox[{"pb2", "[", "t", "]"}], ".", "M"}]}]], "Input"],

Cell["So we have ", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"pb2", "[", "t", "]"}], ".", 
   RowBox[{"p2b", "[", "2", "]"}], ".", 
   RowBox[{"apoints", "[", "2", "]"}], ".", "T"}], "   ", "\[Equal]", "  ", 
  RowBox[{
   RowBox[{"pb2", "[", "t", "]"}], ".", "M"}]}]], "Input"],

Cell["and we can solve for T", "Text"],

Cell[BoxData[
 RowBox[{"T", "  ", "=", 
  RowBox[{
   RowBox[{"Inverse", "[", 
    RowBox[{
     RowBox[{"p2b", "[", "2", "]"}], ".", 
     RowBox[{"apoints", "[", "2", "]"}]}], "]"}], ".", "M"}]}]], "Input"],

Cell["\<\
Since p2b[2] is invertible, the only chance we have of this formula failing \
is when the determinant of apoints[2] is zero. 

But this determinant is twice the area of the control point triangle. 
So the quadratic degenerates to a line segment or to a point.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"classify", "[", 
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
  RowBox[{"If", " ", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Det", "[", 
      RowBox[{"Map", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Append", "[", 
          RowBox[{"#", ",", "1"}], "]"}], "&"}], ",", "m"}], "]"}], "]"}], 
     " ", "\[Equal]", " ", "0"}], ",", " ", "\"\<line or point\>\"", ",", 
    " ", "\"\<quadratic\>\""}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["As usual, we will avoid computing inverses.", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"adjugate", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a_", ",", "b_", ",", "c_"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"d_", ",", "e_", ",", "f_"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"g_", ",", "h_", ",", "i_"}], "}"}]}], "}"}], "]"}], " ", ":=", 
  " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"-", "f"}], " ", "h"}], "+", 
       RowBox[{"e", " ", "i"}]}], ",", 
      RowBox[{
       RowBox[{"c", " ", "h"}], "-", 
       RowBox[{"b", " ", "i"}]}], ",", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "c"}], " ", "e"}], "+", 
       RowBox[{"b", " ", "f"}]}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"f", " ", "g"}], "-", 
       RowBox[{"d", " ", "i"}]}], ",", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "c"}], " ", "g"}], "+", 
       RowBox[{"a", " ", "i"}]}], ",", 
      RowBox[{
       RowBox[{"c", " ", "d"}], "-", 
       RowBox[{"a", " ", "f"}]}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"-", "e"}], " ", "g"}], "+", 
       RowBox[{"d", " ", "h"}]}], ",", 
      RowBox[{
       RowBox[{"b", " ", "g"}], "-", 
       RowBox[{"a", " ", "h"}]}], ",", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "b"}], " ", "d"}], "+", 
       RowBox[{"a", " ", "e"}]}]}], "}"}]}], "}"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
Since we only need the first two coordinates k,l, we can store a 2x3 matrix. \
Call the first row \[ScriptK] and the second row \[ScriptL] of the matrix. 
These rows can be thought of as affine functionals that will be applied to an \
affine point where you want to evaluate the implicit function. 
The implicit function will be k^2 - l == 0.\
\>", "Text"],

Cell["Here is a function that returns these rows. ", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicitkl", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", " ", "y0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", " ", "y2_"}], "}"}]}], "}"}]}], "]"}], " ", ":=", 
  RowBox[{"Switch", "[", 
   RowBox[{
    RowBox[{"classify", "[", "m", "]"}], ",", " ", "\"\<quadratic\>\"", ",", 
    " ", 
    RowBox[{"quadratickl", "[", "m", "]"}], ",", " ", "\"\<line or point\>\"",
     ",", " ", 
    RowBox[{"linekl", "[", "m", "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"quadratickl", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", " ", "y0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", " ", "y2_"}], "}"}]}], "}"}]}], "]"}], " ", ":=", 
  " ", "\[IndentingNewLine]", 
  RowBox[{"Module", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"n", " ", "=", " ", 
      RowBox[{
       RowBox[{"p2b", "[", "2", "]"}], ".", 
       RowBox[{"Map", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Append", "[", 
           RowBox[{"#", ",", "1"}], "]"}], "&"}], ",", "m"}], "]"}]}]}], 
     "}"}], ",", " ", "\[IndentingNewLine]", 
    RowBox[{"Module", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"d", " ", "=", " ", 
        RowBox[{"Det", "[", "n", "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"t", " ", "=", " ", 
          RowBox[{"Transpose", "[", 
           RowBox[{
            RowBox[{"adjugate", "[", "n", "]"}], ".", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"0", ",", "0", ",", "1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"1", ",", "0", ",", "0"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], "}"}]}], "]"}]}], 
         "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"t", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
          RowBox[{"d", "  ", 
           RowBox[{"t", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], "]"}]}], "]"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"linekl", "[", 
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
    RowBox[{"{", 
     RowBox[{
      RowBox[{"a", " ", "=", " ", 
       RowBox[{"y2", "-", "y0"}]}], ",", " ", 
      RowBox[{"b", " ", "=", " ", 
       RowBox[{"x2", "-", "x0"}]}]}], "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"c", " ", "=", " ", 
        RowBox[{"-", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"a", " ", "x1"}], " ", "+", " ", 
           RowBox[{"b", " ", "y1"}]}], ")"}]}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "0"}], "}"}], ",", 
        RowBox[{"-", 
         RowBox[{"{", 
          RowBox[{"a", ",", " ", "b", ",", " ", "c"}], "}"}]}]}], "}"}]}], 
     "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
And here is a function that, given the rows for the \[ScriptK],\[ScriptL] \
affine functionals, evaluates the implicit function at a given point.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"k2levaluate", "[", 
   RowBox[{
    RowBox[{"kl", ":", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"ak_", ",", " ", "bk_", ",", " ", "ck_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"al_", ",", " ", "bl_", ",", " ", "cl_"}], "}"}]}], "}"}]}], 
    ",", 
    RowBox[{"p", ":", 
     RowBox[{"{", 
      RowBox[{"x_", ",", " ", "y_", ",", " ", "w_"}], "}"}]}]}], "]"}], " ", ":=",
   " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"klp", "=", 
      RowBox[{"kl", ".", "p"}]}], "}"}], ",", 
    RowBox[{
     RowBox[{
      RowBox[{"klp", "[", 
       RowBox[{"[", "1", "]"}], "]"}], "^", "2"}], "-", 
     RowBox[{"klp", "[", 
      RowBox[{"[", "2", "]"}], "]"}]}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["This is what the graph looks like.", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"quadraticexamples", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "3"}], ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", "3"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"3", ",", " ", "0"}], "}"}]}], "}"}], "\[Rule]", 
      "\"\<quadratic\>\""}], ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "3"}], ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"3", ",", " ", "0"}], "}"}]}], "}"}], "\[Rule]", 
      "\"\<line\>\""}], ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0"}], "}"}]}], "}"}], "\[Rule]", 
      "\"\<point\>\""}]}], "}"}]}], ";"}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", " ", "4"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "3"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"6", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", " ", "=", " ", 
         RowBox[{"N", "[", "pt", "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"kl", " ", "=", " ", 
            RowBox[{"implicitkl", "[", "m", "]"}]}], ",", " ", 
           RowBox[{"c", " ", "=", " ", 
            RowBox[{"classify", "[", "m", "]"}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ContourPlot", "[", 
            RowBox[{
             RowBox[{"k2levaluate", "[", 
              RowBox[{"kl", ",", 
               RowBox[{"{", 
                RowBox[{"x", ",", "y", ",", "1"}], "}"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", 
               RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"y", ",", 
               RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", " ", 
             RowBox[{"Frame", "\[Rule]", "None"}], ",", 
             RowBox[{"ColorFunction", "\[Rule]", "\"\<BeachColors\>\""}]}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Dashed", ",", " ", 
              RowBox[{"Line", "[", "pt", "]"}]}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Black", ",", " ", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"classify", "[", "m", "]"}], ",", " ", "Large"}], 
                 "]"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"0", ",", " ", "9"}], "}"}]}], "]"}]}], "}"}], "]"}],
            ",", "\[IndentingNewLine]", 
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
           RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}]}], 
      "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts", ",", "\"\<type\>\""}], "}"}], ",", " ", 
       "quadraticexamples"}], "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, 4}, {0, 3}, {6, -3}}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, 4}, {0, 3}, {6, -3}}}, Automatic}, {{
       Hold[$CellContext`pt$$], {{-6, 4}, {0, 3}, {6, -3}}, 
       "type"}, {{{-3, 0}, {0, 3}, {3, 0}} -> 
       "quadratic", {{-3, 0}, {0, 0}, {3, 0}} -> 
       "line", {{0, 0}, {0, 0}, {0, 0}} -> "point"}}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`pt$545$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, 4}, {0, 3}, {6, -3}}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`pt$$, $CellContext`pt$545$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = N[$CellContext`pt$$]}, 
        Module[{$CellContext`kl$ = $CellContext`implicitkl[$CellContext`m$], \
$CellContext`c$ = $CellContext`classify[$CellContext`m$]}, 
         Show[
          ContourPlot[
           $CellContext`k2levaluate[$CellContext`kl$, {$CellContext`x, \
$CellContext`y, 1}], {$CellContext`x, -10, 10}, {$CellContext`y, -10, 10}, 
           Frame -> None, ColorFunction -> "BeachColors"], 
          ParametricPlot[
           Dot[
            $CellContext`bb2[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Thick, ImageSize -> 
           Large, Axes -> False], 
          Graphics[{Dashed, 
            Line[$CellContext`pt$$]}], 
          Graphics[{Black, 
            Text[
             Style[
              $CellContext`classify[$CellContext`m$], Large], {0, 9}]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], ImageSize -> Large]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, 4}, {0, 3}, {6, -3}}}, 
         Automatic, ControlType -> 
         Locator}, {{$CellContext`pt$$, {{-6, 4}, {0, 3}, {6, -3}}, 
          "type"}, {{{-3, 0}, {0, 3}, {3, 0}} -> 
          "quadratic", {{-3, 0}, {0, 0}, {3, 0}} -> 
          "line", {{0, 0}, {0, 0}, {0, 0}} -> "point"}}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {332., 338.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`implicitkl[
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
             Blank[]]}}]] := Switch[
         $CellContext`classify[$CellContext`m], "quadratic", 
         $CellContext`quadratickl[$CellContext`m], "line or point", 
         $CellContext`linekl[$CellContext`m]], $CellContext`classify[
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
             Blank[]]}}]] := If[Det[
           Map[Append[#, 1]& , $CellContext`m]] == 0, "line or point", 
         "quadratic"], $CellContext`quadratickl[
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
             Blank[]]}}]] := Module[{$CellContext`n = Dot[
            $CellContext`p2b[2], 
            Map[Append[#, 1]& , $CellContext`m]]}, 
         Module[{$CellContext`d = Det[$CellContext`n]}, 
          Module[{$CellContext`t = Transpose[
              Dot[
               $CellContext`adjugate[$CellContext`n], {{0, 0, 1}, {1, 0, 0}, {
               0, 1, 0}}]]}, {
            Part[$CellContext`t, 1], $CellContext`d 
            Part[$CellContext`t, 2]}]]], $CellContext`p2b[
         Pattern[$CellContext`n, 
          Blank[]]] := Transpose[
         Module[{$CellContext`s, $CellContext`t}, 
          Map[Coefficient[#, 
            $CellContext`pb[{$CellContext`s, $CellContext`t}, \
$CellContext`n]]& , 
           $CellContext`bb[{$CellContext`s, $CellContext`t}, \
$CellContext`n]]]], $CellContext`pb[{
          Pattern[$CellContext`s, 
           Blank[]], 
          Pattern[$CellContext`t, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          
          Table[$CellContext`v^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`s, \
$CellContext`v -> $CellContext`t}]], $CellContext`bb[{
          Pattern[$CellContext`s, 
           Blank[]], 
          Pattern[$CellContext`t, 
           Blank[]]}, 
         Pattern[$CellContext`n, 
          Blank[]]] := Module[{$CellContext`u, $CellContext`v}, 
         ReplaceAll[
          Table[
          Binomial[$CellContext`n, $CellContext`k] ($CellContext`v - \
$CellContext`u)^($CellContext`n - $CellContext`k) \
$CellContext`u^$CellContext`k, {$CellContext`k, 
            0, $CellContext`n}], {$CellContext`u -> $CellContext`s, \
$CellContext`v -> $CellContext`t}]], $CellContext`adjugate[{{
           Pattern[$CellContext`a, 
            Blank[]], 
           Pattern[$CellContext`b, 
            Blank[]], 
           Pattern[$CellContext`c, 
            Blank[]]}, {
           Pattern[$CellContext`d, 
            Blank[]], 
           Pattern[$CellContext`e, 
            Blank[]], 
           Pattern[$CellContext`f, 
            Blank[]]}, {
           Pattern[$CellContext`g, 
            Blank[]], 
           Pattern[$CellContext`h, 
            Blank[]], 
           Pattern[$CellContext`i, 
            
            Blank[]]}}] := {{(-$CellContext`f) $CellContext`h + \
$CellContext`e $CellContext`i, $CellContext`c $CellContext`h - $CellContext`b \
$CellContext`i, (-$CellContext`c) $CellContext`e + $CellContext`b \
$CellContext`f}, {$CellContext`f $CellContext`g - $CellContext`d \
$CellContext`i, (-$CellContext`c) $CellContext`g + $CellContext`a \
$CellContext`i, $CellContext`c $CellContext`d - $CellContext`a \
$CellContext`f}, {(-$CellContext`e) $CellContext`g + $CellContext`d \
$CellContext`h, $CellContext`b $CellContext`g - $CellContext`a \
$CellContext`h, (-$CellContext`b) $CellContext`d + $CellContext`a \
$CellContext`e}}, $CellContext`linekl[
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
       Module[{$CellContext`a = $CellContext`y2 - $CellContext`y0, \
$CellContext`b = $CellContext`x2 - $CellContext`x0}, 
         Module[{$CellContext`c = -($CellContext`a $CellContext`x1 + \
$CellContext`b $CellContext`y1)}, {{0, 0, 
           0}, -{$CellContext`a, $CellContext`b, $CellContext`c}}]], \
$CellContext`k2levaluate[
         Pattern[$CellContext`kl, {{
            Pattern[$CellContext`ak, 
             Blank[]], 
            Pattern[$CellContext`bk, 
             Blank[]], 
            Pattern[$CellContext`ck, 
             Blank[]]}, {
            Pattern[$CellContext`al, 
             Blank[]], 
            Pattern[$CellContext`bl, 
             Blank[]], 
            Pattern[$CellContext`cl, 
             Blank[]]}}], 
         Pattern[$CellContext`p, {
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`y, 
            Blank[]], 
           Pattern[$CellContext`w, 
            Blank[]]}]] := 
       Module[{$CellContext`klp = Dot[$CellContext`kl, $CellContext`p]}, 
         Part[$CellContext`klp, 1]^2 - 
         Part[$CellContext`klp, 2]], $CellContext`bb2[
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

Cell["\<\
Now, we don't know what the sign means. It will depend on the orientation of \
the curve. We know our curve is monotonic. We want the sign to flip from \
negative to positive as we cross the curve increasing x. So we evaluate the \
partial x derivative of the implicit form and substitute the point of the \
curve where t = 1/2. We know that this cannot be zero, otherwise the curve \
would be horizontal. If that was the case, we would have split it there \
during monotonization. We didn\[CloseCurlyQuote]t. So if this sign is \
positive, we are good. Otherwise, we should flip the sign of the implicit \
form to make it conform with our convention.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"kl", " ", "=", 
      RowBox[{"quadratickl", "[", 
       RowBox[{"epoints", "[", "2", "]"}], "]"}]}], "}"}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"D", "[", 
         RowBox[{
          RowBox[{"k2levaluate", "[", 
           RowBox[{"kl", " ", ",", 
            RowBox[{"{", 
             RowBox[{"x", ",", "y", ",", "1"}], "}"}]}], "]"}], ",", "x"}], 
         "]"}], "  ", "/.", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"x", " ", "\[Rule]", " ", 
           RowBox[{"First", "[", 
            RowBox[{
             RowBox[{"bb2", "[", 
              RowBox[{"1", "/", "2"}], "]"}], ".", 
             RowBox[{"epoints", "[", "2", "]"}]}], "]"}]}], ",", " ", 
          RowBox[{"y", "\[Rule]", 
           RowBox[{"Last", "[", 
            RowBox[{
             RowBox[{"bb2", "[", 
              RowBox[{"1", "/", "2"}], "]"}], ".", 
             RowBox[{"epoints", "[", "2", "]"}]}], "]"}]}]}], "}"}]}], ")"}], 
      "/.", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"x0", "\[Rule]", "0"}], ",", " ", 
        RowBox[{"y0", "\[Rule]", "0"}]}], "}"}]}], " ", "//", " ", 
     "Expand"}]}], "]"}], " ", "//", " ", "Simplify"}]], "Input"],

Cell[BoxData[
 RowBox[{"2", " ", "y2", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "x2"}], " ", "y1"}], "+", 
    RowBox[{"x1", " ", "y2"}]}], ")"}]}]], "Output"]
}, Open  ]],

Cell["\<\
There is a much more direct way for implicitizing an integral quadratic. We \
want a polynomial that is zero when there exists a t such that x(t) = x\
\[CloseCurlyQuote] and y(t) = y\[CloseCurlyQuote]. This means that the \
polynomials x(t) - x\[CloseCurlyQuote]  and y(t) - y\[CloseCurlyQuote] have a \
common root for some value of t. This happens if and only if their resultant \
is zero. But the resultant is simply a quadratic polynomial in x\
\[CloseCurlyQuote],y\[CloseCurlyQuote]. It is the implicit equation for the \
integral quadratic polynomial.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicitresultant", "[", 
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
  RowBox[{"Function", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"x", ",", "y"}], "}"}], ",", 
    RowBox[{"Evaluate", "[", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", "t", "}"}], ",", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"p", " ", "=", " ", 
           RowBox[{
            RowBox[{"bb2", "[", "t", "]"}], ".", "m"}]}], "}"}], ",", " ", 
         RowBox[{"Resultant", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "-", " ", "x"}], " ", ",", " ", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "-", "y"}], " ", ",", " ", "t"}],
           "]"}]}], "]"}]}], "]"}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["Here is what this looks like", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", " ", "=", " ", 
       RowBox[{
        RowBox[{"bb2", "[", "t", "]"}], ".", 
        RowBox[{"epoints", "[", "2", "]"}]}]}], "}"}], ",", " ", 
     RowBox[{"Resultant", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"p", "[", 
         RowBox[{"[", "1", "]"}], "]"}], "-", " ", "x"}], ",", " ", 
       RowBox[{
        RowBox[{"p", "[", 
         RowBox[{"[", "2", "]"}], "]"}], "-", "y"}], ",", " ", "t"}], "]"}]}],
     "]"}], " ", "/.", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"x0", "\[Rule]", "0"}], ",", " ", 
     RowBox[{"y0", "\[Rule]", "0"}]}], "}"}]}], " ", "//", " ", 
  RowBox[{
   RowBox[{"HornerForm", "[", 
    RowBox[{"#", ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", "y"}], "}"}]}], "]"}], "&"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"y", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"4", " ", 
         SuperscriptBox["x1", "2"]}], "-", 
        RowBox[{"4", " ", "x1", " ", "x2"}], "+", 
        SuperscriptBox["x2", "2"]}], ")"}], " ", "y"}], "+", 
     RowBox[{"4", " ", "x1", " ", "x2", " ", "y1"}], "-", 
     RowBox[{"4", " ", 
      SuperscriptBox["x1", "2"], " ", "y2"}]}], ")"}]}], "+", 
  RowBox[{"x", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "4"}], " ", "x2", " ", 
      SuperscriptBox["y1", "2"]}], "+", 
     RowBox[{"4", " ", "x1", " ", "y1", " ", "y2"}], "+", 
     RowBox[{"y", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "8"}], " ", "x1", " ", "y1"}], "+", 
        RowBox[{"4", " ", "x2", " ", "y1"}], "+", 
        RowBox[{"4", " ", "x1", " ", "y2"}], "-", 
        RowBox[{"2", " ", "x2", " ", "y2"}]}], ")"}]}], "+", 
     RowBox[{"x", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"4", " ", 
         SuperscriptBox["y1", "2"]}], "-", 
        RowBox[{"4", " ", "y1", " ", "y2"}], "+", 
        SuperscriptBox["y2", "2"]}], ")"}]}]}], ")"}]}]}]], "Output"]
}, Open  ]],

Cell["And the sign test becomes (the same)", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"p", " ", "=", " ", 
        RowBox[{
         RowBox[{"bb2", "[", "t", "]"}], ".", 
         RowBox[{"epoints", "[", "2", "]"}]}]}], ",", " ", 
       RowBox[{"pm", "=", 
        RowBox[{
         RowBox[{"bb2", "[", 
          RowBox[{"1", "/", "2"}], "]"}], ".", 
         RowBox[{"epoints", "[", "2", "]"}]}]}]}], "}"}], ",", " ", 
     RowBox[{
      RowBox[{"D", "[", 
       RowBox[{
        RowBox[{"Resultant", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"p", "[", 
            RowBox[{"[", "1", "]"}], "]"}], "-", " ", "x"}], ",", " ", 
          RowBox[{
           RowBox[{"p", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "-", "y"}], " ", ",", " ", "t"}], 
         "]"}], ",", "x"}], "]"}], "/.", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"x", "\[Rule]", 
         RowBox[{"pm", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
        RowBox[{"y", "\[Rule]", 
         RowBox[{"pm", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}]}], "]"}], " ", "/.", 
   " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"x0", "\[Rule]", "0"}], ",", " ", 
     RowBox[{"y0", "\[Rule]", "0"}]}], "}"}]}], " ", " ", "//", " ", 
  "FullSimplify"}]], "Input"],

Cell[BoxData[
 RowBox[{"2", " ", "y2", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "x2"}], " ", "y1"}], "+", 
    RowBox[{"x1", " ", "y2"}]}], ")"}]}]], "Output"]
}, Open  ]],

Cell["\<\
We can use the Cayley-B\[EAcute]zout form of the resultant to obtain a \
somewhat factored expression\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"bezoutmatrix", "[", 
   RowBox[{
    RowBox[{"f_", "/;", " ", 
     RowBox[{"Refine", "[", 
      RowBox[{"VectorQ", "[", "f", "]"}], "]"}]}], ",", " ", 
    RowBox[{"g_", "/;", " ", 
     RowBox[{"Refine", "[", 
      RowBox[{"VectorQ", "[", "g", "]"}], "]"}]}]}], "]"}], " ", ":=", " ", 
  "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{"t", ",", "\[IndentingNewLine]", "a", ",", "\[IndentingNewLine]", 
      RowBox[{"nf", " ", "=", " ", 
       RowBox[{
        RowBox[{"Length", "[", "f", "]"}], "-", "1"}]}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ng", " ", "=", " ", 
       RowBox[{
        RowBox[{"Length", "[", "g", "]"}], "-", "1"}]}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"nr", "=", 
       RowBox[{
        RowBox[{"Max", "[", 
         RowBox[{
          RowBox[{"Length", "[", "f", "]"}], ",", 
          RowBox[{"Length", "[", "g", "]"}]}], "]"}], "-", "2"}]}]}], "}"}], 
    ",", " ", "\[IndentingNewLine]", 
    RowBox[{"Map", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"Coefficient", "[", 
          RowBox[{"#", ",", "t", ",", "i"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", " ", "0", ",", " ", "nr"}], "}"}]}], "]"}], "&"}],
       ",", " ", "\[IndentingNewLine]", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"fa", " ", "=", " ", 
           RowBox[{"f", ".", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"a", "^", "i"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"i", ",", " ", "0", ",", " ", "nf"}], "}"}]}], 
             "]"}]}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"ft", " ", "=", " ", 
           RowBox[{"f", ".", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"t", "^", "i"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"i", ",", " ", "0", ",", " ", "nf"}], "}"}]}], 
             "]"}]}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"ga", " ", "=", 
           RowBox[{"g", ".", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"a", "^", "i"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"i", ",", " ", "0", ",", " ", "ng"}], "}"}]}], 
             "]"}]}]}], ",", "\[IndentingNewLine]", 
          RowBox[{"gt", " ", "=", 
           RowBox[{"g", ".", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"t", "^", "i"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"i", ",", " ", "0", ",", " ", "ng"}], "}"}]}], 
             "]"}]}]}]}], "}"}], ",", "\[IndentingNewLine]", 
        RowBox[{"CoefficientList", "[", 
         RowBox[{
          RowBox[{"PolynomialQuotient", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"ft", " ", "ga"}], " ", "-", " ", 
             RowBox[{"fa", " ", "gt"}]}], " ", ",", 
            RowBox[{"(", 
             RowBox[{"t", "-", "a"}], ")"}], ",", "t"}], "]"}], ",", "a"}], 
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Map", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"HornerForm", "[", 
      RowBox[{"#", ",", 
       RowBox[{"{", 
        RowBox[{"x", ",", "y"}], "}"}]}], "]"}], "&"}], ",", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p", " ", "=", " ", 
         RowBox[{
          RowBox[{"p2b", "[", "2", "]"}], ".", 
          RowBox[{"epoints", "[", "2", "]"}]}]}], "}"}], ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"p", "[", 
          RowBox[{"[", "1", "]"}], "]"}], "=", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"[", "1", "]"}], "]"}], " ", "-", " ", 
          RowBox[{"{", 
           RowBox[{"x", ",", "y"}], "}"}]}]}], ";", " ", 
        RowBox[{"bezoutmatrix", "[", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"[", 
            RowBox[{";;", ",", "1"}], "]"}], "]"}], ",", " ", 
          RowBox[{"p", "[", 
           RowBox[{"[", 
            RowBox[{";;", ",", "2"}], "]"}], "]"}]}], "]"}]}]}], "]"}], " ", "/.", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"x0", "\[Rule]", "0"}], ",", " ", 
       RowBox[{"y0", "\[Rule]", "0"}]}], "}"}]}], ",", 
    RowBox[{"{", "2", "}"}]}], "]"}], " ", "//", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], " ", "x1", " ", "y"}], "+", 
       RowBox[{"2", " ", "x", " ", "y1"}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", " ", "x1"}], "-", "x2"}], ")"}], " ", "y"}], "+", 
       RowBox[{"x", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", "y1"}], "+", "y2"}], ")"}]}]}]},
     {
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", " ", "x1"}], "-", "x2"}], ")"}], " ", "y"}], "+", 
       RowBox[{"x", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", "y1"}], "+", "y2"}], ")"}]}]}], 
      RowBox[{
       RowBox[{"2", " ", "x2", " ", "y1"}], "-", 
       RowBox[{"2", " ", "x1", " ", "y2"}]}]}
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
This looks like a k^2 - lm formulation. Can you tell why our earlier result \
allowed us to use k^2-l, i.e., where is the m?\
\>", "Text"],

Cell["Here is the animation", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"pts", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "6"}], ",", " ", "4"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "3"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"6", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", " ", "=", " ", 
         RowBox[{"N", "[", "pt", "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"f", " ", "=", " ", 
            RowBox[{"implicitresultant", "[", "m", "]"}]}], ",", " ", 
           RowBox[{"c", " ", "=", " ", 
            RowBox[{"classify", "[", "m", "]"}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ContourPlot", "[", 
            RowBox[{
             RowBox[{"f", "[", 
              RowBox[{"x", ",", "y"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", 
               RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"y", ",", 
               RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", " ", 
             RowBox[{"Frame", "\[Rule]", "None"}], ",", 
             RowBox[{"ColorFunction", "\[Rule]", "\"\<BeachColors\>\""}]}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", " ", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Dashed", ",", " ", 
              RowBox[{"Line", "[", "pt", "]"}]}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Black", ",", " ", 
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"classify", "[", "m", "]"}], ",", " ", "Large"}], 
                 "]"}], ",", " ", 
                RowBox[{"{", 
                 RowBox[{"0", ",", " ", "9"}], "}"}]}], "]"}]}], "}"}], "]"}],
            ",", "\[IndentingNewLine]", 
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
           RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}]}], 
      "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts", ",", "\"\<type\>\""}], "}"}], ",", " ", 
       "quadraticexamples"}], "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, 4}, {0, 3}, {6, -3}}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, 4}, {0, 3}, {6, -3}}}, Automatic}, {{
       Hold[$CellContext`pt$$], {{-6, 4}, {0, 3}, {6, -3}}, 
       "type"}, {{{-3, 0}, {0, 3}, {3, 0}} -> 
       "quadratic", {{-3, 0}, {0, 0}, {3, 0}} -> 
       "line", {{0, 0}, {0, 0}, {0, 0}} -> "point"}}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`pt$769$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, 4}, {0, 3}, {6, -3}}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`pt$$, $CellContext`pt$769$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = N[$CellContext`pt$$]}, 
        Module[{$CellContext`f$ = \
$CellContext`implicitresultant[$CellContext`m$], $CellContext`c$ = \
$CellContext`classify[$CellContext`m$]}, 
         Show[
          ContourPlot[
           $CellContext`f$[$CellContext`x, $CellContext`y], {$CellContext`x, \
-10, 10}, {$CellContext`y, -10, 10}, Frame -> None, ColorFunction -> 
           "BeachColors"], 
          ParametricPlot[
           Dot[
            $CellContext`bb2[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Thick, ImageSize -> 
           Large, Axes -> False], 
          Graphics[{Dashed, 
            Line[$CellContext`pt$$]}], 
          Graphics[{Black, 
            Text[
             Style[
              $CellContext`classify[$CellContext`m$], Large], {0, 9}]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], ImageSize -> Large]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, 4}, {0, 3}, {6, -3}}}, 
         Automatic, ControlType -> 
         Locator}, {{$CellContext`pt$$, {{-6, 4}, {0, 3}, {6, -3}}, 
          "type"}, {{{-3, 0}, {0, 3}, {3, 0}} -> 
          "quadratic", {{-3, 0}, {0, 0}, {3, 0}} -> 
          "line", {{0, 0}, {0, 0}, {0, 0}} -> "point"}}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {332., 338.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`implicitresultant[
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
             Blank[]]}}]] := Function[{$CellContext`x, $CellContext`y}, 
         Evaluate[
          Module[{$CellContext`t}, 
           Module[{$CellContext`p = Dot[
               $CellContext`bb2[$CellContext`t], $CellContext`m]}, 
            Resultant[
            Part[$CellContext`p, 1] - $CellContext`x, 
             Part[$CellContext`p, 
               2] - $CellContext`y, $CellContext`t]]]]], $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, \
$CellContext`classify[
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
             Blank[]]}}]] := If[Det[
           Map[Append[#, 1]& , $CellContext`m]] == 0, "line or point", 
         "quadratic"], Attributes[Subscript] = {NHoldRest}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]]
},
WindowSize->{1073, 1036},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
ShowSelection->True,
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
Cell[1714, 43, 98, 2, 29, "Text"],
Cell[1815, 47, 911, 30, 48, "Input",
 InitializationCell->True],
Cell[2729, 79, 94, 2, 29, "Text"],
Cell[2826, 83, 774, 26, 48, "Input",
 InitializationCell->True],
Cell[3603, 111, 299, 9, 47, "Text"],
Cell[3905, 122, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[4182, 133, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[4459, 144, 105, 3, 29, "Text"],
Cell[4567, 149, 711, 23, 48, "Input",
 InitializationCell->True],
Cell[5281, 174, 37, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[5343, 178, 538, 17, 32, "Input"],
Cell[5884, 197, 507, 14, 32, "Output"]
}, Open  ]],
Cell[6406, 214, 62, 0, 29, "Text"],
Cell[6471, 216, 183, 5, 48, "Input",
 InitializationCell->True],
Cell[6657, 223, 112, 3, 29, "Text"],
Cell[6772, 228, 556, 16, 48, "Input",
 InitializationCell->True],
Cell[7331, 246, 525, 15, 48, "Input",
 InitializationCell->True],
Cell[7859, 263, 41, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[7925, 267, 2502, 68, 217, "Input",
 InitializationCell->True],
Cell[10430, 337, 2479, 53, 659, "Output"]
}, Open  ]],
Cell[12924, 393, 155, 3, 29, "Text"],
Cell[13082, 398, 666, 20, 48, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[13773, 422, 195, 6, 32, "Input"],
Cell[13971, 430, 1582, 50, 69, "Output"]
}, Open  ]],
Cell[15568, 483, 380, 6, 65, "Text"],
Cell[CellGroupData[{
Cell[15973, 493, 333, 10, 32, "Input"],
Cell[16309, 505, 31, 0, 32, "Output"]
}, Open  ]],
Cell[16355, 508, 43, 0, 29, "Text"],
Cell[16401, 510, 656, 17, 32, "Input"],
Cell[17060, 529, 74, 0, 29, "Text"],
Cell[17137, 531, 769, 23, 32, "Input"],
Cell[17909, 556, 27, 0, 29, "Text"],
Cell[17939, 558, 263, 7, 32, "Input"],
Cell[18205, 567, 38, 0, 29, "Text"],
Cell[18246, 569, 208, 6, 32, "Input"],
Cell[18457, 577, 283, 6, 83, "Text"],
Cell[18743, 585, 754, 24, 48, "Input",
 InitializationCell->True],
Cell[19500, 611, 59, 0, 29, "Text"],
Cell[19562, 613, 1489, 52, 70, "Input",
 InitializationCell->True],
Cell[21054, 667, 366, 6, 65, "Text"],
Cell[21423, 675, 60, 0, 29, "Text"],
Cell[21486, 677, 656, 19, 70, "Input",
 InitializationCell->True],
Cell[22145, 698, 1858, 54, 154, "Input",
 InitializationCell->True],
Cell[24006, 754, 1179, 38, 70, "Input",
 InitializationCell->True],
Cell[25188, 794, 169, 3, 29, "Text"],
Cell[25360, 799, 814, 27, 48, "Input",
 InitializationCell->True],
Cell[26177, 828, 50, 0, 29, "Text"],
Cell[26230, 830, 1158, 37, 70, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[27413, 871, 4282, 108, 301, "Input",
 InitializationCell->True],
Cell[31698, 981, 9728, 229, 687, "Output"]
}, Open  ]],
Cell[41441, 1213, 675, 10, 83, "Text"],
Cell[CellGroupData[{
Cell[42141, 1227, 1324, 38, 75, "Input"],
Cell[43468, 1267, 183, 6, 32, "Output"]
}, Open  ]],
Cell[43666, 1276, 581, 9, 65, "Text"],
Cell[44250, 1287, 1187, 36, 70, "Input",
 InitializationCell->True],
Cell[45440, 1325, 44, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[45509, 1329, 859, 27, 32, "Input"],
Cell[46371, 1358, 1214, 36, 58, "Output"]
}, Open  ]],
Cell[47600, 1397, 52, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[47677, 1401, 1341, 41, 54, "Input"],
Cell[49021, 1444, 183, 6, 32, "Output"]
}, Open  ]],
Cell[49219, 1453, 125, 3, 29, "Text"],
Cell[49347, 1458, 3292, 86, 343, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[52664, 1548, 1284, 38, 75, "Input"],
Cell[53951, 1588, 1409, 44, 49, "Output"]
}, Open  ]],
Cell[55375, 1635, 148, 3, 29, "Text"],
Cell[55526, 1640, 37, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[55588, 1644, 4194, 106, 301, "Input",
 InitializationCell->True],
Cell[59785, 1752, 4907, 111, 687, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 6uTnZ#l8L3pPpCKdrZMHwWPi *)
