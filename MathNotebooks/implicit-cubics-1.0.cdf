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
NotebookDataLength[    165873,       4520]
NotebookOptionsPosition[    161899,       4378]
NotebookOutlinePosition[    162368,       4399]
CellTagsIndexPosition[    162325,       4396]
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

Cell["These convert between projective to euclidean space", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"p2e", "[", 
   RowBox[{"{", 
    RowBox[{"x_", ",", " ", "y_", ",", " ", "w_"}], "}"}], "]"}], ":=", " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"x", "/", "w"}], ",", " ", 
    RowBox[{"y", "/", "w"}]}], "}"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"e2p", "[", 
   RowBox[{"{", 
    RowBox[{"x_", ",", " ", "y_"}], "}"}], "]"}], ":=", " ", 
  RowBox[{"{", 
   RowBox[{"x", ",", " ", "y", ",", " ", "1"}], "}"}]}]], "Input",
 InitializationCell->True],

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
 " use bb[{t,1},3] directly, but ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " would expand things algebraically. Not only would this take longer, but it \
would produce indeterminate results at t=0 and t=1... "
}], "Text"],

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

Cell["Now we can plot the curve", "Text"],

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
        RowBox[{"m", " ", "=", " ", "pt"}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{"Dashed", ",", " ", 
            RowBox[{"Line", "[", "pt", "]"}]}], "}"}], "]"}], ",", " ", 
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

Cell["\<\
So this is a vector perpendicular to the power basis, its first derivative, \
and its second derivative\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"crosstmatrix", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"{", 
   RowBox[{
    SuperscriptBox["t", "3"], ",", 
    RowBox[{
     RowBox[{"-", "3"}], " ", 
     SuperscriptBox["t", "2"]}], ",", 
    RowBox[{"3", " ", "t"}], ",", 
    RowBox[{"-", "1"}]}], "}"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
And this is a vector perpendicular to all control point coordinates in the \
power basis\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"crosspmatrix", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", "y0_", ",", "w0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_", ",", "w1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_", ",", "w2_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x3_", ",", "y3_", ",", "w3_"}], "}"}]}], "}"}]}], "]"}], " ", 
  ":=", " ", 
  RowBox[{"Apply", "[", 
   RowBox[{"Cross", ",", 
    RowBox[{"Transpose", "[", 
     RowBox[{
      RowBox[{"p2b", "[", "3", "]"}], ".", "m"}], "]"}]}], "]"}], 
  " "}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"crosspmatrix", "[", 
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
  RowBox[{"crosspmatrix", "[", 
   RowBox[{"Map", "[", 
    RowBox[{"e2p", ",", "m"}], "]"}], "]"}], " "}]], "Input",
 InitializationCell->True],

Cell["\<\
So here is the inflection polynomial. It is a quadratic when the curve is \
integral.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionpoly", "[", 
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
   RowBox[{"crosstmatrix", "[", "t", "]"}], ".", 
   RowBox[{"crosspmatrix", "[", "m", "]"}]}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionpoly", "[", 
   RowBox[{
    RowBox[{"m", ":", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x0_", ",", "y0_", ",", "w0_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x1_", ",", "y1_", ",", "w1_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x2_", ",", "y2_", ",", "w2_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x3_", ",", "y3_", ",", "w3_"}], "}"}]}], "}"}]}], ",", " ", 
    "t_"}], "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"crosstmatrix", "[", "t", "]"}], ".", 
   RowBox[{"crosspmatrix", "[", "m", "]"}]}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflections", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", "y0_", ",", "w0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_", ",", "w1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_", ",", "w2_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x3_", ",", "y3_", ",", "w3_"}], "}"}]}], "}"}]}], "]"}], " ", 
  ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "t", "}"}], ",", " ", 
    RowBox[{"Map", "[", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"#", " ", "\[Equal]", " ", 
           RowBox[{"{", 
            RowBox[{"{", "}"}], "}"}]}], ",", 
          RowBox[{"{", "}"}], ",", " ", "#"}], "]"}], "&"}], " ", "@", " ", 
       RowBox[{"Solve", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"inflectionpoly", "[", 
           RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", "0"}], ",", 
         " ", "t", ",", " ", "Reals"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflections", "[", 
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
    RowBox[{"{", "t", "}"}], ",", " ", 
    RowBox[{"Map", "[", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"#", " ", "\[Equal]", " ", 
           RowBox[{"{", 
            RowBox[{"{", "}"}], "}"}]}], ",", 
          RowBox[{"{", "}"}], ",", " ", "#"}], "]"}], "&"}], " ", "@", " ", 
       RowBox[{"Solve", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"inflectionpoly", "[", 
           RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", "0"}], ",", 
         " ", "t", ",", " ", "Reals"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True],

Cell["So the double-point polynomial is ", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"doublepointpoly", "[", 
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
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"c", " ", "=", " ", 
      RowBox[{"crosspmatrix", "[", "m", "]"}]}], "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"d1", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ",", 
        RowBox[{"d2", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
        RowBox[{"d3", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "3", "]"}], "]"}]}], ",", " ", 
        RowBox[{"d4", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "4", "]"}], "]"}]}]}], "}"}], ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["d2", "2"], "-", 
          RowBox[{"d1", " ", "d3"}]}], ")"}], " ", 
        RowBox[{"t", "^", "2"}]}], " ", "-", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"d2", " ", "d3"}], "-", 
          RowBox[{"d1", " ", "d4"}]}], ")"}], " ", "t"}], " ", "+", " ", 
       SuperscriptBox["d3", "2"], "-", 
       RowBox[{"d2", " ", "d4"}]}]}], " ", "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"doublepointpoly", "[", 
   RowBox[{
    RowBox[{"m", ":", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x0_", ",", "y0_", ",", "w0_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x1_", ",", "y1_", ",", "w1_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x2_", ",", "y2_", ",", "w2_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"x3_", ",", "y3_", ",", "w3_"}], "}"}]}], "}"}]}], ",", " ", 
    "t_"}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"c", " ", "=", " ", 
      RowBox[{"crosspmatrix", "[", "m", "]"}]}], "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"d1", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ",", 
        RowBox[{"d2", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
        RowBox[{"d3", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "3", "]"}], "]"}]}], ",", " ", 
        RowBox[{"d4", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "4", "]"}], "]"}]}]}], "}"}], ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["d2", "2"], "-", 
          RowBox[{"d1", " ", "d3"}]}], ")"}], " ", 
        RowBox[{"t", "^", "2"}]}], " ", "-", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"d2", " ", "d3"}], "-", 
          RowBox[{"d1", " ", "d4"}]}], ")"}], " ", "t"}], " ", "+", " ", 
       SuperscriptBox["d3", "2"], "-", 
       RowBox[{"d2", " ", "d4"}]}]}], " ", "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"doublepoint", "[", 
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
    RowBox[{"{", "t", "}"}], ",", " ", 
    RowBox[{"Map", "[", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"#", " ", "\[Equal]", " ", 
           RowBox[{"{", 
            RowBox[{"{", "}"}], "}"}]}], ",", 
          RowBox[{"{", "}"}], ",", " ", "#"}], "]"}], "&"}], " ", "@", " ", 
       RowBox[{"Solve", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"doublepointpoly", "[", 
           RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", "0"}], ",", 
         " ", "t", ",", " ", "Reals"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True],

Cell["\<\
The integral cubic either has one double point and no inflection (loop),  two \
inflections and no double point (serpentine), or, when the two discriminants \
are zero, the two parameters for the double-point coincide (cusp). We can \
classify the curve based on this discriminant. We still have to worry about \
the possibility of the curve being degenerate, and not being really a cubic. 

See Jim Blinn\[CloseCurlyQuote]s Corner, \[OpenCurlyDoubleQuote]Notation, \
Notation, Notation\[CloseCurlyDoubleQuote], chapter 15, \
\[OpenCurlyDoubleQuote]How many parametric cubic curves are there? Part III, \
The catalog.\[CloseCurlyDoubleQuote]\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"classify", "[", 
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
    RowBox[{"{", 
     RowBox[{"c", " ", "=", " ", 
      RowBox[{"crosspmatrix", "[", "m", "]"}]}], "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"d1", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ",", 
        RowBox[{"d2", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
        RowBox[{"d3", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "3", "]"}], "]"}]}], ",", " ", 
        RowBox[{"d4", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "4", "]"}], "]"}]}]}], "}"}], ",", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"d2", " ", "\[NotEqual]", "  ", "0"}], ",", " ", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"d", " ", "=", " ", 
            RowBox[{
             RowBox[{"3", " ", 
              SuperscriptBox["d3", "2"]}], "-", 
             RowBox[{"4", " ", "d2", " ", "d4"}]}]}], "}"}], ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"d", " ", ">", " ", "0"}], ",", " ", "\"\<serpentine\>\"",
             ",", " ", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"d", "<", "0"}], ",", " ", "\"\<loop\>\"", ",", " ", 
              "\"\<cusp with inflection at infinity\>\""}], "]"}]}], "]"}]}], 
         "]"}], ",", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"d3", "\[NotEqual]", " ", "0"}], ",", " ", 
          "\"\<cusp with cusp at infinity\>\"", ",", " ", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"d4", "\[NotEqual]", " ", "0"}], ",", " ", 
            "\"\<quadratic\>\"", ",", " ", "\"\<line or point\>\""}], "]"}]}],
          "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
So now we can plot the double-points and inflections together with the curve \
classification.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"cubicexamples", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0"}], "}"}]}], "}"}], "\[Rule]", 
      "\"\<point\>\""}], ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "9"}], ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "8"}], ",", " ", "0"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"8", ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"9", ",", " ", "0"}], "}"}]}], "}"}], "\[Rule]", 
      "\"\<line\>\""}], ",", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "3"}], ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "1"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"3", ",", " ", "0"}], "}"}]}], "}"}], "\[Rule]", 
      "\"\<quadratic\>\""}], ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "3"}], ",", " ", 
          RowBox[{"-", "3"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"8", ",", "5"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "8"}], ",", " ", "5"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"3", ",", " ", 
          RowBox[{"-", "3"}]}], "}"}]}], "}"}], "\[Rule]", "\"\<loop\>\""}], 
     ",", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "3"}], ",", " ", 
          RowBox[{"-", "3"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"3", ",", "3"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "3"}], ",", " ", "3"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"3", ",", " ", 
          RowBox[{"-", "3"}]}], "}"}]}], "}"}], "\[Rule]", "\"\<cusp 1\>\""}],
      ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "4"}], ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "4"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", 
          RowBox[{"-", "4"}]}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"4", ",", " ", "0"}], "}"}]}], "}"}], "\[Rule]", 
      "\"\<cusp 2\>\""}], ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "4"}], ",", " ", 
          RowBox[{"-", "3"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"3", ",", "3"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "3"}], ",", " ", "3"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"4", ",", " ", 
          RowBox[{"-", "3"}]}], "}"}]}], "}"}], "\[Rule]", 
      "\"\<serpentine\>\""}]}], "}"}]}], ";"}]], "Input",
 InitializationCell->True],

Cell["\<\
It is quite simple to implicitize an integral cubic. We want a polynomial \
that is zero when there exists a t such that x(t) = x\[CloseCurlyQuote] and \
y(t) = y\[CloseCurlyQuote]. This means that the polynomials x(t) - x\
\[CloseCurlyQuote] and y(t) - y\[CloseCurlyQuote] have a common root for some \
value of t. This happens if and only iff their resultant is zero. But the \
resultant is simply a cubic polynomial in x\[CloseCurlyQuote] y\
\[CloseCurlyQuote]. It is the implicit equation for the integral cubic \
polynomial.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicitresultant", "[", 
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
            RowBox[{"bb3", "[", "t", "]"}], ".", "m"}]}], "}"}], ",", " ", 
         RowBox[{"HornerForm", "[", 
          RowBox[{
           RowBox[{"Resultant", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"p", "[", 
               RowBox[{"[", "1", "]"}], "]"}], "-", " ", "x"}], " ", ",", " ", 
             RowBox[{
              RowBox[{"p", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "-", "y"}], " ", ",", " ", 
             "t"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "y"}], "}"}]}], "]"}]}], "]"}]}], "]"}], 
     "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["And the animation", "Text"],

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
         RowBox[{"-", "4"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", "3"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "3"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{"4", ",", " ", 
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
          RowBox[{
           RowBox[{"c", " ", "=", 
            RowBox[{"classify", "[", "m", "]"}]}], ",", " ", 
           RowBox[{"f", "=", 
            RowBox[{"implicitresultant", "[", "m", "]"}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ContourPlot", "[", 
            RowBox[{
             RowBox[{"f", "[", 
              RowBox[{"x", ",", "y"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", 
               RowBox[{"-", "10"}], ",", " ", "10"}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"y", ",", 
               RowBox[{"-", "10"}], ",", " ", "10"}], "}"}], ",", " ", 
             RowBox[{"Frame", "\[Rule]", "False"}], ",", 
             RowBox[{"ColorFunction", "\[Rule]", "\"\<BeachColors\>\""}]}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", " ", 
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
           RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}]}], 
      "]"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts", ",", "\"\<type\>\""}], "}"}], ",", " ", 
       "cubicexamples"}], "}"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}]}], "]"}]}],
   "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}},
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}}, 
       "type"}, {{{0, 0}, {0, 0}, {0, 0}, {0, 0}} -> 
       "point", {{-9, 0}, {-8, 0}, {8, 0}, {9, 0}} -> 
       "line", {{-3, 0}, {-1, 1}, {1, 1}, {3, 0}} -> 
       "quadratic", {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}} -> 
       "loop", {{-3, -3}, {3, 3}, {-3, 3}, {3, -3}} -> 
       "cusp 1", {{-4, 0}, {0, 4}, {0, -4}, {4, 0}} -> 
       "cusp 2", {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}} -> "serpentine"}}, {{
       Hold[$CellContext`pt$$], {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}}}, 
      Automatic}}, Typeset`size$$ = {576., {286., 290.}}, Typeset`update$$ = 
    0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`pt$3686$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-4, -3}, {3, 3}, {-3, 3}, {
         4, -3}}}, "ControllerVariables" :> {
        Hold[$CellContext`pt$$, $CellContext`pt$3686$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`c$ = $CellContext`classify[$CellContext`m$], \
$CellContext`f$ = $CellContext`implicitresultant[$CellContext`m$]}, 
         Show[
          ContourPlot[
           $CellContext`f$[$CellContext`x, $CellContext`y], {$CellContext`x, \
-10, 10}, {$CellContext`y, -10, 10}, Frame -> False, ColorFunction -> 
           "BeachColors"], 
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotStyle -> Thick, Axes -> False], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], 
          Graphics[{Black, 
            Text[
             Style[
              $CellContext`classify[$CellContext`m$], Large], {0, 9}]}], 
          ImageSize -> Large]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-4, -3}, {3, 3}, {-3, 3}, {
          4, -3}}, "type"}, {{{0, 0}, {0, 0}, {0, 0}, {0, 0}} -> 
          "point", {{-9, 0}, {-8, 0}, {8, 0}, {9, 0}} -> 
          "line", {{-3, 0}, {-1, 1}, {1, 1}, {3, 0}} -> 
          "quadratic", {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}} -> 
          "loop", {{-3, -3}, {3, 3}, {-3, 3}, {3, -3}} -> 
          "cusp 1", {{-4, 0}, {0, 4}, {0, -4}, {4, 0}} -> 
          "cusp 2", {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}} -> 
          "serpentine"}}, {{$CellContext`pt$$, {{-4, -3}, {3, 3}, {-3, 3}, {
          4, -3}}}, Automatic, ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`classify[
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
             Blank[]]}}]] := 
       Module[{$CellContext`c = $CellContext`crosspmatrix[$CellContext`m]}, 
         Module[{$CellContext`d1 = Part[$CellContext`c, 1], $CellContext`d2 = 
           Part[$CellContext`c, 2], $CellContext`d3 = 
           Part[$CellContext`c, 3], $CellContext`d4 = 
           Part[$CellContext`c, 4]}, 
          If[$CellContext`d2 != 0, 
           
           Module[{$CellContext`d = 
             3 $CellContext`d3^2 - 4 $CellContext`d2 $CellContext`d4}, 
            If[$CellContext`d > 0, "serpentine", 
             
             If[$CellContext`d < 0, "loop", 
              "cusp with inflection at infinity"]]], 
           If[$CellContext`d3 != 0, "cusp with cusp at infinity", 
            
            If[$CellContext`d4 != 0, "quadratic", 
             "line or point"]]]]], $CellContext`crosspmatrix[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]], 
            Pattern[$CellContext`w0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]], 
            Pattern[$CellContext`w1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]], 
            Pattern[$CellContext`w2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]], 
            Pattern[$CellContext`w3, 
             Blank[]]}}]] := Apply[Cross, 
         Transpose[
          Dot[
           $CellContext`p2b[3], $CellContext`m]]], $CellContext`crosspmatrix[
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
             Blank[]]}}]] := $CellContext`crosspmatrix[
         Map[$CellContext`e2p, $CellContext`m]], $CellContext`p2b[
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
$CellContext`v -> $CellContext`t}]], $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 
         1}, $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}, 
         Optional[
          Pattern[$CellContext`w, 
           Blank[]], 
          1]] := {$CellContext`w $CellContext`x, $CellContext`w \
$CellContext`y, $CellContext`w}, $CellContext`x = 
       4, $CellContext`implicitresultant[
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
             Blank[]]}}]] := Function[{$CellContext`x, $CellContext`y}, 
         Evaluate[
          Module[{$CellContext`t}, 
           Module[{$CellContext`p = Dot[
               $CellContext`bb3[$CellContext`t], $CellContext`m]}, 
            HornerForm[
             Resultant[
             Part[$CellContext`p, 1] - $CellContext`x, 
              Part[$CellContext`p, 
                2] - $CellContext`y, $CellContext`t], {$CellContext`x, \
$CellContext`y}]]]]], $CellContext`bb3[
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

Cell["Here is what the expression actually looks like", "Text"],

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
         RowBox[{"-", "4"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", "3"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "3"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{"4", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", 
       RowBox[{
        RowBox[{"implicitresultant", "[", "m", "]"}], "[", 
        RowBox[{"x", ",", "y"}], "]"}]}], "]"}], ",", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts", ",", "\"\<type\>\""}], "}"}], ",", " ", 
       "cubicexamples"}], "}"}]}], "]"}]}], "]"}]], "Input"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}},
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}}, 
       "type"}, {{{0, 0}, {0, 0}, {0, 0}, {0, 0}} -> 
       "point", {{-9, 0}, {-8, 0}, {8, 0}, {9, 0}} -> 
       "line", {{-3, 0}, {-1, 1}, {1, 1}, {3, 0}} -> 
       "quadratic", {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}} -> 
       "loop", {{-3, -3}, {3, 3}, {-3, 3}, {3, -3}} -> 
       "cusp 1", {{-4, 0}, {0, 4}, {0, -4}, {4, 0}} -> 
       "cusp 2", {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}} -> "serpentine"}}}, 
    Typeset`size$$ = {258., {3., 9.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`pt$15001$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-4, -3}, {3, 3}, {-3, 3}, {
         4, -3}}}, "ControllerVariables" :> {
        Hold[$CellContext`pt$$, $CellContext`pt$15001$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m = $CellContext`pt$$}, 
        $CellContext`implicitresultant[$CellContext`m][$CellContext`x, \
$CellContext`y]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-4, -3}, {3, 3}, {-3, 3}, {
          4, -3}}, "type"}, {{{0, 0}, {0, 0}, {0, 0}, {0, 0}} -> 
          "point", {{-9, 0}, {-8, 0}, {8, 0}, {9, 0}} -> 
          "line", {{-3, 0}, {-1, 1}, {1, 1}, {3, 0}} -> 
          "quadratic", {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}} -> 
          "loop", {{-3, -3}, {3, 3}, {-3, 3}, {3, -3}} -> 
          "cusp 1", {{-4, 0}, {0, 4}, {0, -4}, {4, 0}} -> 
          "cusp 2", {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}} -> "serpentine"}}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{303., {51., 57.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
The full expression of each of these coefficients looks very ugly. (In \
practice, we would precompute them, so this is not a big deal.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"implicitresultant", "[", 
    RowBox[{"epoints", "[", "3", "]"}], "]"}], "[", 
   RowBox[{"x", ",", "y"}], "]"}], " ", "/.", " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"x0", "\[Rule]", "0"}], ",", " ", 
    RowBox[{"y0", "\[Rule]", "0"}]}], "}"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"y", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "27"}], " ", "x1", " ", 
      SuperscriptBox["x3", "2"], " ", 
      SuperscriptBox["y1", "2"]}], "+", 
     RowBox[{"81", " ", "x1", " ", "x2", " ", "x3", " ", "y1", " ", "y2"}], 
     "-", 
     RowBox[{"81", " ", 
      SuperscriptBox["x1", "2"], " ", "x3", " ", 
      SuperscriptBox["y2", "2"]}], "-", 
     RowBox[{"81", " ", "x1", " ", 
      SuperscriptBox["x2", "2"], " ", "y1", " ", "y3"}], "+", 
     RowBox[{"54", " ", 
      SuperscriptBox["x1", "2"], " ", "x3", " ", "y1", " ", "y3"}], "+", 
     RowBox[{"81", " ", 
      SuperscriptBox["x1", "2"], " ", "x2", " ", "y2", " ", "y3"}], "-", 
     RowBox[{"27", " ", 
      SuperscriptBox["x1", "3"], " ", 
      SuperscriptBox["y3", "2"]}], "+", 
     RowBox[{"y", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "27"}], " ", 
            SuperscriptBox["x1", "3"]}], "+", 
           RowBox[{"81", " ", 
            SuperscriptBox["x1", "2"], " ", "x2"}], "-", 
           RowBox[{"81", " ", "x1", " ", 
            SuperscriptBox["x2", "2"]}], "+", 
           RowBox[{"27", " ", 
            SuperscriptBox["x2", "3"]}], "-", 
           RowBox[{"27", " ", 
            SuperscriptBox["x1", "2"], " ", "x3"}], "+", 
           RowBox[{"54", " ", "x1", " ", "x2", " ", "x3"}], "-", 
           RowBox[{"27", " ", 
            SuperscriptBox["x2", "2"], " ", "x3"}], "-", 
           RowBox[{"9", " ", "x1", " ", 
            SuperscriptBox["x3", "2"]}], "+", 
           RowBox[{"9", " ", "x2", " ", 
            SuperscriptBox["x3", "2"]}], "-", 
           SuperscriptBox["x3", "3"]}], ")"}], " ", "y"}], "+", 
        RowBox[{"81", " ", "x1", " ", 
         SuperscriptBox["x2", "2"], " ", "y1"}], "-", 
        RowBox[{"54", " ", 
         SuperscriptBox["x1", "2"], " ", "x3", " ", "y1"}], "-", 
        RowBox[{"81", " ", "x1", " ", "x2", " ", "x3", " ", "y1"}], "+", 
        RowBox[{"54", " ", "x1", " ", 
         SuperscriptBox["x3", "2"], " ", "y1"}], "-", 
        RowBox[{"9", " ", "x2", " ", 
         SuperscriptBox["x3", "2"], " ", "y1"}], "-", 
        RowBox[{"81", " ", 
         SuperscriptBox["x1", "2"], " ", "x2", " ", "y2"}], "+", 
        RowBox[{"162", " ", 
         SuperscriptBox["x1", "2"], " ", "x3", " ", "y2"}], "-", 
        RowBox[{"81", " ", "x1", " ", "x2", " ", "x3", " ", "y2"}], "+", 
        RowBox[{"27", " ", 
         SuperscriptBox["x2", "2"], " ", "x3", " ", "y2"}], "-", 
        RowBox[{"18", " ", "x1", " ", 
         SuperscriptBox["x3", "2"], " ", "y2"}], "+", 
        RowBox[{"54", " ", 
         SuperscriptBox["x1", "3"], " ", "y3"}], "-", 
        RowBox[{"81", " ", 
         SuperscriptBox["x1", "2"], " ", "x2", " ", "y3"}], "+", 
        RowBox[{"81", " ", "x1", " ", 
         SuperscriptBox["x2", "2"], " ", "y3"}], "-", 
        RowBox[{"27", " ", 
         SuperscriptBox["x2", "3"], " ", "y3"}], "-", 
        RowBox[{"54", " ", 
         SuperscriptBox["x1", "2"], " ", "x3", " ", "y3"}], "+", 
        RowBox[{"27", " ", "x1", " ", "x2", " ", "x3", " ", "y3"}]}], 
       ")"}]}]}], ")"}]}], "+", 
  RowBox[{"x", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"27", " ", 
      SuperscriptBox["x3", "2"], " ", 
      SuperscriptBox["y1", "3"]}], "-", 
     RowBox[{"81", " ", "x2", " ", "x3", " ", 
      SuperscriptBox["y1", "2"], " ", "y2"}], "+", 
     RowBox[{"81", " ", "x1", " ", "x3", " ", "y1", " ", 
      SuperscriptBox["y2", "2"]}], "+", 
     RowBox[{"81", " ", 
      SuperscriptBox["x2", "2"], " ", 
      SuperscriptBox["y1", "2"], " ", "y3"}], "-", 
     RowBox[{"54", " ", "x1", " ", "x3", " ", 
      SuperscriptBox["y1", "2"], " ", "y3"}], "-", 
     RowBox[{"81", " ", "x1", " ", "x2", " ", "y1", " ", "y2", " ", "y3"}], 
     "+", 
     RowBox[{"27", " ", 
      SuperscriptBox["x1", "2"], " ", "y1", " ", 
      SuperscriptBox["y3", "2"]}], "+", 
     RowBox[{"y", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "81"}], " ", 
         SuperscriptBox["x2", "2"], " ", 
         SuperscriptBox["y1", "2"]}], "+", 
        RowBox[{"108", " ", "x1", " ", "x3", " ", 
         SuperscriptBox["y1", "2"]}], "+", 
        RowBox[{"81", " ", "x2", " ", "x3", " ", 
         SuperscriptBox["y1", "2"]}], "-", 
        RowBox[{"54", " ", 
         SuperscriptBox["x3", "2"], " ", 
         SuperscriptBox["y1", "2"]}], "-", 
        RowBox[{"243", " ", "x1", " ", "x3", " ", "y1", " ", "y2"}], "+", 
        RowBox[{"81", " ", "x2", " ", "x3", " ", "y1", " ", "y2"}], "+", 
        RowBox[{"27", " ", 
         SuperscriptBox["x3", "2"], " ", "y1", " ", "y2"}], "+", 
        RowBox[{"81", " ", 
         SuperscriptBox["x1", "2"], " ", 
         SuperscriptBox["y2", "2"]}], "+", 
        RowBox[{"81", " ", "x1", " ", "x3", " ", 
         SuperscriptBox["y2", "2"]}], "-", 
        RowBox[{"54", " ", "x2", " ", "x3", " ", 
         SuperscriptBox["y2", "2"]}], "-", 
        RowBox[{"108", " ", 
         SuperscriptBox["x1", "2"], " ", "y1", " ", "y3"}], "+", 
        RowBox[{"243", " ", "x1", " ", "x2", " ", "y1", " ", "y3"}], "-", 
        RowBox[{"81", " ", 
         SuperscriptBox["x2", "2"], " ", "y1", " ", "y3"}], "-", 
        RowBox[{"9", " ", "x2", " ", "x3", " ", "y1", " ", "y3"}], "-", 
        RowBox[{"81", " ", 
         SuperscriptBox["x1", "2"], " ", "y2", " ", "y3"}], "-", 
        RowBox[{"81", " ", "x1", " ", "x2", " ", "y2", " ", "y3"}], "+", 
        RowBox[{"54", " ", 
         SuperscriptBox["x2", "2"], " ", "y2", " ", "y3"}], "+", 
        RowBox[{"9", " ", "x1", " ", "x3", " ", "y2", " ", "y3"}], "+", 
        RowBox[{"54", " ", 
         SuperscriptBox["x1", "2"], " ", 
         SuperscriptBox["y3", "2"]}], "-", 
        RowBox[{"27", " ", "x1", " ", "x2", " ", 
         SuperscriptBox["y3", "2"]}], "+", 
        RowBox[{"y", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"81", " ", 
            SuperscriptBox["x1", "2"], " ", "y1"}], "-", 
           RowBox[{"162", " ", "x1", " ", "x2", " ", "y1"}], "+", 
           RowBox[{"81", " ", 
            SuperscriptBox["x2", "2"], " ", "y1"}], "+", 
           RowBox[{"54", " ", "x1", " ", "x3", " ", "y1"}], "-", 
           RowBox[{"54", " ", "x2", " ", "x3", " ", "y1"}], "+", 
           RowBox[{"9", " ", 
            SuperscriptBox["x3", "2"], " ", "y1"}], "-", 
           RowBox[{"81", " ", 
            SuperscriptBox["x1", "2"], " ", "y2"}], "+", 
           RowBox[{"162", " ", "x1", " ", "x2", " ", "y2"}], "-", 
           RowBox[{"81", " ", 
            SuperscriptBox["x2", "2"], " ", "y2"}], "-", 
           RowBox[{"54", " ", "x1", " ", "x3", " ", "y2"}], "+", 
           RowBox[{"54", " ", "x2", " ", "x3", " ", "y2"}], "-", 
           RowBox[{"9", " ", 
            SuperscriptBox["x3", "2"], " ", "y2"}], "+", 
           RowBox[{"27", " ", 
            SuperscriptBox["x1", "2"], " ", "y3"}], "-", 
           RowBox[{"54", " ", "x1", " ", "x2", " ", "y3"}], "+", 
           RowBox[{"27", " ", 
            SuperscriptBox["x2", "2"], " ", "y3"}], "+", 
           RowBox[{"18", " ", "x1", " ", "x3", " ", "y3"}], "-", 
           RowBox[{"18", " ", "x2", " ", "x3", " ", "y3"}], "+", 
           RowBox[{"3", " ", 
            SuperscriptBox["x3", "2"], " ", "y3"}]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{"x", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "54"}], " ", "x3", " ", 
         SuperscriptBox["y1", "3"]}], "+", 
        RowBox[{"81", " ", "x2", " ", 
         SuperscriptBox["y1", "2"], " ", "y2"}], "+", 
        RowBox[{"81", " ", "x3", " ", 
         SuperscriptBox["y1", "2"], " ", "y2"}], "-", 
        RowBox[{"81", " ", "x1", " ", "y1", " ", 
         SuperscriptBox["y2", "2"]}], "-", 
        RowBox[{"81", " ", "x3", " ", "y1", " ", 
         SuperscriptBox["y2", "2"]}], "+", 
        RowBox[{"27", " ", "x3", " ", 
         SuperscriptBox["y2", "3"]}], "+", 
        RowBox[{"54", " ", "x1", " ", 
         SuperscriptBox["y1", "2"], " ", "y3"}], "-", 
        RowBox[{"162", " ", "x2", " ", 
         SuperscriptBox["y1", "2"], " ", "y3"}], "+", 
        RowBox[{"54", " ", "x3", " ", 
         SuperscriptBox["y1", "2"], " ", "y3"}], "+", 
        RowBox[{"81", " ", "x1", " ", "y1", " ", "y2", " ", "y3"}], "+", 
        RowBox[{"81", " ", "x2", " ", "y1", " ", "y2", " ", "y3"}], "-", 
        RowBox[{"27", " ", "x3", " ", "y1", " ", "y2", " ", "y3"}], "-", 
        RowBox[{"27", " ", "x2", " ", 
         SuperscriptBox["y2", "2"], " ", "y3"}], "-", 
        RowBox[{"54", " ", "x1", " ", "y1", " ", 
         SuperscriptBox["y3", "2"]}], "+", 
        RowBox[{"18", " ", "x2", " ", "y1", " ", 
         SuperscriptBox["y3", "2"]}], "+", 
        RowBox[{"9", " ", "x1", " ", "y2", " ", 
         SuperscriptBox["y3", "2"]}], "+", 
        RowBox[{"y", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "81"}], " ", "x1", " ", 
            SuperscriptBox["y1", "2"]}], "+", 
           RowBox[{"81", " ", "x2", " ", 
            SuperscriptBox["y1", "2"]}], "-", 
           RowBox[{"27", " ", "x3", " ", 
            SuperscriptBox["y1", "2"]}], "+", 
           RowBox[{"162", " ", "x1", " ", "y1", " ", "y2"}], "-", 
           RowBox[{"162", " ", "x2", " ", "y1", " ", "y2"}], "+", 
           RowBox[{"54", " ", "x3", " ", "y1", " ", "y2"}], "-", 
           RowBox[{"81", " ", "x1", " ", 
            SuperscriptBox["y2", "2"]}], "+", 
           RowBox[{"81", " ", "x2", " ", 
            SuperscriptBox["y2", "2"]}], "-", 
           RowBox[{"27", " ", "x3", " ", 
            SuperscriptBox["y2", "2"]}], "-", 
           RowBox[{"54", " ", "x1", " ", "y1", " ", "y3"}], "+", 
           RowBox[{"54", " ", "x2", " ", "y1", " ", "y3"}], "-", 
           RowBox[{"18", " ", "x3", " ", "y1", " ", "y3"}], "+", 
           RowBox[{"54", " ", "x1", " ", "y2", " ", "y3"}], "-", 
           RowBox[{"54", " ", "x2", " ", "y2", " ", "y3"}], "+", 
           RowBox[{"18", " ", "x3", " ", "y2", " ", "y3"}], "-", 
           RowBox[{"9", " ", "x1", " ", 
            SuperscriptBox["y3", "2"]}], "+", 
           RowBox[{"9", " ", "x2", " ", 
            SuperscriptBox["y3", "2"]}], "-", 
           RowBox[{"3", " ", "x3", " ", 
            SuperscriptBox["y3", "2"]}]}], ")"}]}], "+", 
        RowBox[{"x", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"27", " ", 
            SuperscriptBox["y1", "3"]}], "-", 
           RowBox[{"81", " ", 
            SuperscriptBox["y1", "2"], " ", "y2"}], "+", 
           RowBox[{"81", " ", "y1", " ", 
            SuperscriptBox["y2", "2"]}], "-", 
           RowBox[{"27", " ", 
            SuperscriptBox["y2", "3"]}], "+", 
           RowBox[{"27", " ", 
            SuperscriptBox["y1", "2"], " ", "y3"}], "-", 
           RowBox[{"54", " ", "y1", " ", "y2", " ", "y3"}], "+", 
           RowBox[{"27", " ", 
            SuperscriptBox["y2", "2"], " ", "y3"}], "+", 
           RowBox[{"9", " ", "y1", " ", 
            SuperscriptBox["y3", "2"]}], "-", 
           RowBox[{"9", " ", "y2", " ", 
            SuperscriptBox["y3", "2"]}], "+", 
           SuperscriptBox["y3", "3"]}], ")"}]}]}], ")"}]}]}], 
    ")"}]}]}]], "Output"]
}, Open  ]],

Cell["The sign test is", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"16", "/", "27"}], " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"pm", " ", "=", " ", 
        RowBox[{
         RowBox[{"bb3", "[", 
          RowBox[{"1", "/", "2"}], "]"}], ".", 
         RowBox[{"epoints", "[", "3", "]"}]}]}], "}"}], ",", 
      RowBox[{
       RowBox[{"D", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"implicitresultant", "[", 
           RowBox[{"epoints", "[", "3", "]"}], "]"}], "[", 
          RowBox[{"x", ",", "y"}], "]"}], ",", "x"}], "]"}], " ", "/.", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x", "\[Rule]", 
          RowBox[{"pm", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
         RowBox[{"y", "\[Rule]", 
          RowBox[{"pm", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}]}], "]"}]}], " ", "/.", 
   " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"x0", "\[Rule]", "0"}], ",", " ", 
     RowBox[{"y0", "\[Rule]", "0"}]}], "}"}]}], " ", "//", " ", 
  "Simplify"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{"y1", "-", "y2", "-", "y3"}], ")"}], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{
     RowBox[{"-", 
      SuperscriptBox["x3", "2"]}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"4", " ", 
        SuperscriptBox["y1", "2"]}], "-", 
       RowBox[{"2", " ", "y1", " ", "y2"}], "+", 
       SuperscriptBox["y2", "2"]}], ")"}]}], "+", 
    RowBox[{
     SuperscriptBox["x1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"9", " ", 
        SuperscriptBox["y2", "2"]}], "-", 
       RowBox[{"6", " ", "y2", " ", "y3"}], "-", 
       RowBox[{"4", " ", 
        SuperscriptBox["y3", "2"]}]}], ")"}]}], "+", 
    RowBox[{
     SuperscriptBox["x2", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"9", " ", 
        SuperscriptBox["y1", "2"]}], "-", 
       RowBox[{"12", " ", "y1", " ", "y3"}], "-", 
       SuperscriptBox["y3", "2"]}], ")"}]}], "+", 
    RowBox[{"2", " ", "x1", " ", "x3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "y2"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"6", " ", "y2"}], "+", "y3"}], ")"}]}], "+", 
       RowBox[{"y1", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"3", " ", "y2"}], "+", 
          RowBox[{"4", " ", "y3"}]}], ")"}]}]}], ")"}]}], "-", 
    RowBox[{"2", " ", "x2", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"x3", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"3", " ", 
           SuperscriptBox["y1", "2"]}], "-", 
          RowBox[{"y2", " ", "y3"}], "+", 
          RowBox[{"y1", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "6"}], " ", "y2"}], "+", "y3"}], ")"}]}]}], 
         ")"}]}], "+", 
       RowBox[{"x1", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"y1", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"9", " ", "y2"}], "-", 
             RowBox[{"3", " ", "y3"}]}], ")"}]}], "-", 
          RowBox[{"y3", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"6", " ", "y2"}], "+", "y3"}], ")"}]}]}], ")"}]}]}], 
      ")"}]}]}], ")"}]}]], "Output"]
}, Open  ]],

Cell["\<\
We can use the Cayley-B\[EAcute]zout form of the resultant to obtain a \
somewhat factored expression for the resultant\
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
 RowBox[{"Det", "[", 
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
          RowBox[{"p2b", "[", "3", "]"}], ".", 
          RowBox[{"epoints", "[", "3", "]"}]}]}], "}"}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"p", "[", 
          RowBox[{"[", "1", "]"}], "]"}], "=", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"[", "1", "]"}], "]"}], " ", "-", " ", 
          RowBox[{"{", 
           RowBox[{"x", ",", "y"}], "}"}]}]}], ";", 
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
    RowBox[{"{", "2", "}"}]}], "]"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", "9"}], " ", "x2", " ", "y1"}], "+", 
      RowBox[{"3", " ", "x3", " ", "y1"}], "+", 
      RowBox[{"9", " ", "x1", " ", "y2"}], "-", 
      RowBox[{"3", " ", "x1", " ", "y3"}]}], ")"}]}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "3"}], " ", "x1", " ", "y"}], "+", 
        RowBox[{"3", " ", "x", " ", "y1"}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "9"}], " ", "x2", " ", "y1"}], "+", 
        RowBox[{"3", " ", "x3", " ", "y1"}], "+", 
        RowBox[{"9", " ", "x1", " ", "y2"}], "-", 
        RowBox[{"3", " ", "x1", " ", "y3"}]}], ")"}]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"6", " ", "x1"}], "-", 
           RowBox[{"3", " ", "x2"}]}], ")"}], " ", "y"}], "+", 
        RowBox[{"x", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "6"}], " ", "y1"}], "+", 
           RowBox[{"3", " ", "y2"}]}], ")"}]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "3"}], " ", "x1"}], "+", 
           RowBox[{"3", " ", "x2"}], "-", "x3"}], ")"}], " ", "y"}], "+", 
        RowBox[{"x", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"3", " ", "y1"}], "-", 
           RowBox[{"3", " ", "y2"}], "+", "y3"}], ")"}]}]}], ")"}]}]}], 
    ")"}]}], "+", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"9", " ", "x2", " ", "y1"}], "-", 
     RowBox[{"6", " ", "x3", " ", "y1"}], "-", 
     RowBox[{"9", " ", "x1", " ", "y2"}], "+", 
     RowBox[{"3", " ", "x3", " ", "y2"}], "+", 
     RowBox[{"6", " ", "x1", " ", "y3"}], "-", 
     RowBox[{"3", " ", "x2", " ", "y3"}]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"6", " ", "x1"}], "-", 
            RowBox[{"3", " ", "x2"}]}], ")"}], " ", "y"}], "+", 
         RowBox[{"x", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"-", "6"}], " ", "y1"}], "+", 
            RowBox[{"3", " ", "y2"}]}], ")"}]}]}], ")"}], "2"]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "3"}], " ", "x1", " ", "y"}], "+", 
        RowBox[{"3", " ", "x", " ", "y1"}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "3"}], " ", "x1"}], "+", 
           RowBox[{"3", " ", "x2"}], "-", "x3"}], ")"}], " ", "y"}], "+", 
        RowBox[{"9", " ", "x2", " ", "y1"}], "-", 
        RowBox[{"9", " ", "x1", " ", "y2"}], "+", 
        RowBox[{"x", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"3", " ", "y1"}], "-", 
           RowBox[{"3", " ", "y2"}], "+", "y3"}], ")"}]}]}], ")"}]}]}], 
    ")"}]}], "+", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "3"}], " ", "x1"}], "+", 
        RowBox[{"3", " ", "x2"}], "-", "x3"}], ")"}], " ", "y"}], "+", 
     RowBox[{"x", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"3", " ", "y1"}], "-", 
        RowBox[{"3", " ", "y2"}], "+", "y3"}], ")"}]}]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"6", " ", "x1"}], "-", 
           RowBox[{"3", " ", "x2"}]}], ")"}], " ", "y"}], "+", 
        RowBox[{"x", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "6"}], " ", "y1"}], "+", 
           RowBox[{"3", " ", "y2"}]}], ")"}]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "9"}], " ", "x2", " ", "y1"}], "+", 
        RowBox[{"3", " ", "x3", " ", "y1"}], "+", 
        RowBox[{"9", " ", "x1", " ", "y2"}], "-", 
        RowBox[{"3", " ", "x1", " ", "y3"}]}], ")"}]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "3"}], " ", "x1"}], "+", 
           RowBox[{"3", " ", "x2"}], "-", "x3"}], ")"}], " ", "y"}], "+", 
        RowBox[{"x", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"3", " ", "y1"}], "-", 
           RowBox[{"3", " ", "y2"}], "+", "y3"}], ")"}]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "3"}], " ", "x1"}], "+", 
           RowBox[{"3", " ", "x2"}], "-", "x3"}], ")"}], " ", "y"}], "+", 
        RowBox[{"9", " ", "x2", " ", "y1"}], "-", 
        RowBox[{"9", " ", "x1", " ", "y2"}], "+", 
        RowBox[{"x", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"3", " ", "y1"}], "-", 
           RowBox[{"3", " ", "y2"}], "+", "y3"}], ")"}]}]}], ")"}]}]}], 
    ")"}]}]}]], "Output"]
}, Open  ]],

Cell["Still, it is pretty ugly.", "Text"],

Cell["Turns out we can avoid using a large expressions like these.", "Text"],

Cell[TextData[{
 "We can move to the implicitization with a similar approach to the one we \
followed for the quadratics. Except now we will find an expression that \
captures the inflections and double points. \n\nThe full implicit cubic \
equation has 9 degrees of freedom (all multiples are the same)\n\n  ",
 Cell[BoxData[
  RowBox[{
   RowBox[{
    RowBox[{"a30", " ", 
     SuperscriptBox["x", "3"]}], " ", "+", " ", 
    RowBox[{"3", " ", "a21", " ", 
     SuperscriptBox["x", "2"], " ", "y"}], " ", "+", " ", 
    RowBox[{"3", " ", "a12", " ", "x", " ", 
     SuperscriptBox["y", "2"]}], " ", "+", " ", 
    RowBox[{"a03", " ", 
     SuperscriptBox["y", "3"]}], " ", "+", " ", 
    RowBox[{"a20", " ", 
     SuperscriptBox["x", "2"]}], " ", "+", " ", 
    RowBox[{"2", " ", "a11", " ", "x", " ", "y"}], " ", "+", " ", 
    RowBox[{"a02", " ", 
     SuperscriptBox["y", "2"]}], " ", "+", " ", 
    RowBox[{"a10", " ", "x"}], " ", "+", " ", 
    RowBox[{"a01", " ", "y"}], " ", "+", " ", "a00"}], " ", "\[Equal]", " ", 
   "0"}]],
  CellChangeTimes->{3.627916780286422*^9}],
 "\n\nLook at the expression \n\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"\[ScriptK]", "[", 
       RowBox[{"x", ",", "y", ",", "w"}], "]"}], "3"], "-", " ", 
     RowBox[{
      RowBox[{"\[ScriptL]", "[", 
       RowBox[{"x", ",", "y", ",", "w"}], "]"}], 
      RowBox[{"\[ScriptM]", "[", 
       RowBox[{"x", ",", "y", ",", "w"}], "]"}], 
      RowBox[{"\[ScriptN]", "[", 
       RowBox[{"x", ",", "y", ",", "w"}], "]"}]}]}], " ", "\[Equal]", " ", 
    "0"}], TraditionalForm]]],
 "\n\nwhere \[ScriptK],\[ScriptL],\[ScriptM],\[ScriptN] are affine \
functionals. First of all, this is an implicit cubic equation. \n\nStart with \
the serpentine case. Let \[ScriptK] be the line connecting the three \
inflection points (recall they are always colinear). \nLet \[ScriptL],\
\[ScriptM],\[ScriptN] be the tangents at each of the inflections. \n\nIf we \
restrict the implicit cubic equation to the line \[ScriptK]=0. This gives \
\[ScriptL]\[ScriptM]\[ScriptN] =0, i.e., the implicit cubic goes through the \
intersections of \[ScriptK] with each of \[ScriptL],\[ScriptM],\[ScriptN] (it \
goes through the inflections). \nNow restrict the implicit cubic to the line \
\[ScriptL]=0. This gives ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["\[ScriptK]", "3"], "=", "0"}], TraditionalForm]]],
 ". The implicit cubic has a 3rd order zero at the intersection of \[ScriptK] \
and \[ScriptL], which makes it an inflection point. The same is true for \
\[ScriptM],\[ScriptN]. \n\nEach of these conditions consumes 3 degrees of \
freedom. \nThis is because, after we translate the implicit curve so that the \
inflection is at the origin, we must have b00 = 0. \n\n  ",
 Cell[BoxData[
  RowBox[{
   RowBox[{
    RowBox[{"b30", " ", 
     SuperscriptBox["x", "3"]}], " ", "+", " ", 
    RowBox[{"3", " ", "b21", " ", 
     SuperscriptBox["x", "2"], " ", "y"}], " ", "+", " ", 
    RowBox[{"3", " ", "b12", " ", "x", " ", 
     SuperscriptBox["y", "2"]}], " ", "+", " ", 
    RowBox[{"b03", " ", 
     SuperscriptBox["y", "3"]}], " ", "+", " ", 
    RowBox[{"b20", " ", 
     SuperscriptBox["x", "2"]}], " ", "+", " ", 
    RowBox[{"2", " ", "b11", " ", "x", " ", "y"}], " ", "+", " ", 
    RowBox[{"b02", " ", 
     SuperscriptBox["y", "2"]}], " ", "+", " ", 
    RowBox[{"b10", " ", "x"}], " ", "+", " ", 
    RowBox[{"b01", " ", "y"}]}], " ", "\[Equal]", " ", "0"}]],
  CellChangeTimes->{3.627916780286422*^9}],
 "\n\nIf the inflectional tangent is y = m x, we can substitute to get \n\n  ",
 Cell[BoxData[
  RowBox[{" ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"(", "...", ")"}], 
      SuperscriptBox["x", "3"]}], " ", "+", " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"b20", " ", "+", " ", 
        RowBox[{"2", " ", "b11", " ", "m"}], " ", "+", " ", 
        RowBox[{"b02", " ", 
         SuperscriptBox["m", "2"]}]}], ")"}], 
      SuperscriptBox["x", "2"]}], " ", "+", "  ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"b10", "  ", "+", " ", 
        RowBox[{"b01", " ", "m"}]}], " ", ")"}], " ", "x"}]}], "  ", 
    "\[Equal]", " ", "0"}]}]],
  CellChangeTimes->{3.627916780286422*^9}],
 "\n\nFor a triple root, the coefficients of ",
 Cell[BoxData[
  RowBox[{
   SuperscriptBox["x", "2"], " "}]],
  CellChangeTimes->{3.627916780286422*^9}],
 "and x  must vanish.\n\nSo ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SuperscriptBox["\[ScriptK]", "3"], "-", 
     "\[ScriptL]\[ScriptM]\[ScriptN]"}], "\[Equal]", " ", "0"}], 
   TraditionalForm]]],
 " must be implicit form for our parametric cubic.\n\nNow think about the \
loop. \nLet \[ScriptK] be the line connecting the double-point to the \
inflection point. \nLet \[ScriptL],\[ScriptM] be the two tangents at the \
double-point. \nAnd let \[ScriptN] be the tangent at the inflection. \n\nThe \
inflection takes care of 3 degrees of freedom. \nThe double-point consumes 5 \
degrees of freedom. \nThis is because, after we translate the equation so \
that the double-point is at the origin, we must have b00 = b10 = b01 = 0.\n\n",
 Cell[BoxData[
  RowBox[{
   RowBox[{
    RowBox[{"b30", " ", 
     SuperscriptBox["x", "3"]}], " ", "+", " ", 
    RowBox[{"3", " ", "b21", " ", 
     SuperscriptBox["x", "2"], " ", "y"}], " ", "+", " ", 
    RowBox[{"3", " ", "b12", " ", "x", " ", 
     SuperscriptBox["y", "2"]}], " ", "+", " ", 
    RowBox[{"b03", " ", 
     SuperscriptBox["y", "3"]}], " ", "+", " ", 
    RowBox[{"b20", " ", 
     SuperscriptBox["x", "2"]}], " ", "+", " ", 
    RowBox[{"2", " ", "b11", " ", "x", " ", "y"}], " ", "+", " ", 
    RowBox[{"b02", " ", 
     SuperscriptBox["y", "2"]}]}], " ", "\[Equal]", " ", "0"}]],
  CellChangeTimes->{3.627916780286422*^9}],
 "\n\nFinally, if a tangent is y = m x, we can substitute and get \n\n",
 Cell[BoxData[
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"(", "...", ")"}], " ", 
     SuperscriptBox["x", "3"]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"b20", " ", "+", " ", 
       RowBox[{"2", " ", "b11", " ", "m"}], " ", "+", " ", 
       RowBox[{"b02", " ", 
        SuperscriptBox["m", "2"]}]}], ")"}], " ", 
     SuperscriptBox["x", "2"]}]}], " ", "\[Equal]", " ", "0"}]],
  CellChangeTimes->{3.627916780286422*^9}],
 "\n\nEach of the two tangents has a 3rd order contact with the curve. Two \
contacts for the tangency, and another contact for the other branch of the \
curve. So we have m1 and m2, each giving a linear equation.\n\nWe have 8 \
equations and 9 unknowns. We must find the relative weights between these \
affine functionals."
}], "Text"],

Cell["\<\
To find the coefficients of these affine functionals, we follow a similar \
trick as we did for the quadratic. See Loop & Blinn [2005] for details. 
The only difference is that now the polynomials that appear when we compose \
the affine functionals with the curve have roots that depend on the parameter \
values for the double-point and the inflections.\
\>", "Text"],

Cell["\<\
The cusp is just the limit case between the serpentine and the loop.\
\>", "Text"],

Cell["\<\
Here are the functions that compute \[ScriptK],\[ScriptL],\[ScriptM] for each \
category of integral cubic. We don\[CloseCurlyQuote]t need \[ScriptN] because \
one of the inflection points is at the infinity. So the affine function is \
trivial. \
\>", "Text"],

Cell[BoxData[
 RowBox[{" ", 
  RowBox[{
   RowBox[{"serpentineklm", "[", 
    RowBox[{"pi", ":", 
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
     RowBox[{"{", 
      RowBox[{
       RowBox[{"i", " ", "=", " ", 
        RowBox[{"inflections", "[", "pi", "]"}]}], ",", " ", 
       RowBox[{"p", " ", "=", " ", 
        RowBox[{"Map", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"Append", "[", 
            RowBox[{"#", ",", "1"}], "]"}], "&"}], ",", "pi"}], "]"}]}]}], 
      "}"}], ",", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"s1", " ", "=", " ", 
          RowBox[{"i", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
         RowBox[{"t1", " ", "=", " ", "1"}], ",", " ", 
         RowBox[{"s2", " ", "=", " ", 
          RowBox[{"i", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
         RowBox[{"t2", " ", "=", " ", "1"}]}], "}"}], ",", " ", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"klmp", " ", "=", " ", 
           RowBox[{"Module", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"s", ",", "t"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"Coefficient", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"s1", " ", "t"}], "-", 
                    RowBox[{"t1", " ", "s"}]}], ")"}], " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"s2", " ", "t"}], " ", "-", " ", 
                    RowBox[{"t2", " ", "s"}]}], ")"}], " ", "t"}], ",", " ", 
                 RowBox[{"pb", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"s", ",", "t"}], "}"}], ",", "3"}], "]"}]}], 
                "]"}], ",", " ", 
               RowBox[{"Coefficient", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"s1", " ", "t"}], " ", "-", " ", 
                    RowBox[{"t1", " ", "s"}]}], ")"}], "^", "3"}], ",", " ", 
                 RowBox[{"pb", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"s", ",", "t"}], "}"}], ",", "3"}], "]"}]}], 
                "]"}], ",", 
               RowBox[{"Coefficient", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"s2", " ", "t"}], " ", "-", " ", 
                    RowBox[{"t2", " ", "s"}]}], ")"}], "^", "3"}], ",", " ", 
                 RowBox[{"pb", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"s", ",", "t"}], "}"}], ",", "3"}], "]"}]}], 
                "]"}]}], "}"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"LeastSquares", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"p2b", "[", "3", "]"}], ".", "p"}], ",", 
           RowBox[{"Transpose", "[", "klmp", "]"}]}], "]"}]}], "]"}]}], 
      "]"}]}], "]"}]}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"loopklm", "[", 
   RowBox[{"pi", ":", 
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
    RowBox[{"{", 
     RowBox[{
      RowBox[{"d", " ", "=", " ", 
       RowBox[{"doublepoint", "[", "pi", "]"}]}], ",", " ", 
      RowBox[{"p", " ", "=", " ", 
       RowBox[{"Map", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Append", "[", 
           RowBox[{"#", ",", "1"}], "]"}], "&"}], ",", "pi"}], "]"}]}]}], 
     "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"s1", " ", "=", " ", 
         RowBox[{"d", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
        RowBox[{"t1", " ", "=", " ", "1"}], ",", " ", 
        RowBox[{"s2", " ", "=", " ", 
         RowBox[{"d", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
        RowBox[{"t2", " ", "=", " ", "1"}]}], "}"}], ",", " ", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"klmp", " ", "=", " ", 
          RowBox[{"Module", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"s", ",", "t"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Coefficient", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"s1", " ", "t"}], "-", 
                   RowBox[{"t1", " ", "s"}]}], ")"}], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"s2", " ", "t"}], " ", "-", " ", 
                   RowBox[{"t2", " ", "s"}]}], ")"}], " ", "t"}], ",", " ", 
                RowBox[{"pb", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"s", ",", "t"}], "}"}], ",", "3"}], "]"}]}], "]"}],
               ",", " ", 
              RowBox[{"Coefficient", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"s1", " ", "t"}], " ", "-", " ", 
                    RowBox[{"t1", " ", "s"}]}], ")"}], "^", "2"}], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"s2", " ", "t"}], " ", "-", " ", 
                   RowBox[{"t2", " ", "s"}]}], ")"}]}], ",", " ", 
                RowBox[{"pb", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"s", ",", "t"}], "}"}], ",", "3"}], "]"}]}], "]"}],
               ",", 
              RowBox[{"Coefficient", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"s1", " ", "t"}], " ", "-", " ", 
                   RowBox[{"t1", " ", "s"}]}], ")"}], " ", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"s2", " ", "t"}], " ", "-", " ", 
                    RowBox[{"t2", " ", "s"}]}], ")"}], "^", "2"}]}], ",", " ", 
                RowBox[{"pb", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"s", ",", "t"}], "}"}], ",", "3"}], "]"}]}], 
               "]"}]}], "}"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"LeastSquares", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"p2b", "[", "3", "]"}], ".", "p"}], ",", 
          RowBox[{"Transpose", "[", "klmp", "]"}]}], "]"}]}], "]"}]}], 
     "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"cuspinfinityklm", "[", 
   RowBox[{"pi", ":", 
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
    RowBox[{"{", 
     RowBox[{
      RowBox[{"i", " ", "=", " ", 
       RowBox[{"inflections", "[", "pi", "]"}]}], ",", " ", 
      RowBox[{"p", " ", "=", " ", 
       RowBox[{"Map", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Append", "[", 
           RowBox[{"#", ",", "1"}], "]"}], "&"}], ",", "pi"}], "]"}]}]}], 
     "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"s1", " ", "=", " ", 
         RowBox[{"i", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
        RowBox[{"t1", " ", "=", " ", "1"}]}], "}"}], ",", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"klmp", " ", "=", " ", 
          RowBox[{"Module", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"s", ",", "t"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"Coefficient", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"s1", " ", "t"}], "-", 
                   RowBox[{"t1", " ", "s"}]}], ")"}], 
                 RowBox[{"t", "^", "2"}]}], ",", " ", 
                RowBox[{"pb", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"s", ",", "t"}], "}"}], ",", "3"}], "]"}]}], "]"}],
               ",", " ", 
              RowBox[{"Coefficient", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"s1", " ", "t"}], " ", "-", " ", 
                   RowBox[{"t1", " ", "s"}]}], ")"}], "^", "3"}], ",", " ", 
                RowBox[{"pb", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"s", ",", "t"}], "}"}], ",", "3"}], "]"}]}], 
               "]"}]}], "}"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"Transpose", "[", 
         RowBox[{"Append", "[", 
          RowBox[{
           RowBox[{"Transpose", "[", 
            RowBox[{"LeastSquares", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"p2b", "[", "3", "]"}], ".", "p"}], ",", 
              RowBox[{"Transpose", "[", "klmp", "]"}]}], "]"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], "]"}], "]"}]}], 
       "]"}]}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

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

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Transpose", "[", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "0"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"1", ",", "0", ",", "0"}], "}"}]}], "}"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "1", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "0", ",", "0"}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"quadraticklm", "[", 
   RowBox[{"pi", ":", 
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
  RowBox[{"(*", " ", 
   RowBox[{"intersection", " ", "of", " ", "tangents"}], " ", "*)"}], " ", 
  "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"si", " ", "=", " ", 
       RowBox[{"Det", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"pi", "[", 
            RowBox[{"[", "4", "]"}], "]"}], "-", 
           RowBox[{"pi", "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
          RowBox[{
           RowBox[{"pi", "[", 
            RowBox[{"[", "4", "]"}], "]"}], "-", 
           RowBox[{"pi", "[", 
            RowBox[{"[", "3", "]"}], "]"}]}]}], "}"}], "]"}]}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"ti", " ", "=", 
       RowBox[{"Det", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"pi", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "-", 
           RowBox[{"pi", "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
          RowBox[{
           RowBox[{"pi", "[", 
            RowBox[{"[", "4", "]"}], "]"}], "-", 
           RowBox[{"pi", "[", 
            RowBox[{"[", "3", "]"}], "]"}]}]}], "}"}], "]"}]}]}], "}"}], ",", 
    " ", "\[IndentingNewLine]", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"pm", " ", "=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"pi", "[", 
           RowBox[{"[", "1", "]"}], "]"}], 
          RowBox[{"(", 
           RowBox[{"ti", "-", "si"}], ")"}]}], " ", "+", " ", 
         RowBox[{
          RowBox[{"pi", "[", 
           RowBox[{"[", "2", "]"}], "]"}], " ", "si"}]}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"c", "=", 
           RowBox[{"Map", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Append", "[", 
               RowBox[{"#", ",", "ti"}], "]"}], "&"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"ti", " ", 
                RowBox[{"pi", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", "pm", ",", " ", 
               RowBox[{"ti", " ", 
                RowBox[{"pi", "[", 
                 RowBox[{"[", "4", "]"}], "]"}]}]}], "}"}]}], "]"}]}], ",", 
          " ", "\[IndentingNewLine]", 
          RowBox[{"v", " ", "=", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "0", ",", "1"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "1", ",", "0"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"1", ",", "0", ",", "0"}], "}"}]}], "}"}]}]}], "}"}], 
        ",", "\[IndentingNewLine]", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"cb", " ", "=", 
            RowBox[{
             RowBox[{"p2b", "[", "2", "]"}], ".", "c"}]}], "}"}], ",", " ", 
          "\[IndentingNewLine]", 
          RowBox[{"Module", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"d", " ", "=", " ", 
              RowBox[{"Det", "[", "cb", "]"}]}], "}"}], ",", 
            "\[IndentingNewLine]", " ", 
            RowBox[{"Module", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"t", " ", "=", " ", 
                RowBox[{
                 RowBox[{"adjugate", "[", "cb", "]"}], ".", "v"}]}], "}"}], 
              ",", "\[IndentingNewLine]", 
              RowBox[{"Module", "[", 
               RowBox[{
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"k", " ", "=", " ", 
                   RowBox[{"t", ".", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", " ", "ti", ",", "0"}], "}"}]}]}], ",", 
                  " ", "\[IndentingNewLine]", 
                  RowBox[{"l", " ", "=", " ", 
                   RowBox[{"t", ".", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"d", " ", "ti"}], " ", ",", "0", ",", "0"}], 
                    "}"}]}]}]}], "}"}], ",", "\[IndentingNewLine]", 
                RowBox[{"Transpose", "[", 
                 RowBox[{"{", 
                  RowBox[{"k", ",", " ", "l", ",", " ", "k"}], "}"}], "]"}]}],
                "]"}]}], "]"}]}], "]"}]}], "]"}]}], "]"}]}], "]"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"lineklm", "[", 
   RowBox[{"pi", ":", 
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
    RowBox[{"{", 
     RowBox[{
      RowBox[{"a", " ", "=", " ", 
       RowBox[{"y3", "-", "y0"}]}], ",", " ", 
      RowBox[{"b", " ", "=", " ", 
       RowBox[{"x3", "-", "x0"}]}]}], "}"}], ",", " ", 
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
         RowBox[{"a", ",", "0", ",", " ", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"b", ",", " ", "0", ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"c", ",", " ", "0", ",", " ", "0"}], "}"}]}], "}"}]}], 
     "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicitklm", "[", 
   RowBox[{"pi", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", "y0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x3_", ",", "y3_"}], "}"}]}], "}"}]}], "]"}], " ", ":=", 
  RowBox[{"Switch", "[", 
   RowBox[{
    RowBox[{"classify", "[", "pi", "]"}], ",", " ", "\"\<serpentine\>\"", ",",
     " ", 
    RowBox[{"serpentineklm", "[", "pi", "]"}], ",", " ", "\"\<loop\>\"", ",", 
    " ", 
    RowBox[{"loopklm", "[", "pi", "]"}], ",", 
    "\"\<cusp with inflection at infinity\>\"", ",", " ", 
    RowBox[{"loopklm", "[", "pi", "]"}], ",", 
    "\"\<cusp with cusp at infinity\>\"", ",", " ", 
    RowBox[{"cuspinfinityklm", "[", "pi", "]"}], ",", " ", 
    "\"\<quadratic\>\"", ",", " ", 
    RowBox[{"quadraticklm", "[", "pi", "]"}], ",", "\"\<line or point\>\"", 
    ",", " ", 
    RowBox[{"lineklm", "[", "pi", "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"k3lmevaluate", "[", 
   RowBox[{
    RowBox[{"klm", ":", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"ka_", ",", "la_", ",", "ma_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"kb_", ",", "lb_", ",", "mb_"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"kc_", ",", "lc_", ",", "mc_"}], "}"}]}], "}"}]}], ",", 
    RowBox[{"p", ":", 
     RowBox[{"{", 
      RowBox[{"x_", ",", "y_", ",", "w_"}], "}"}]}]}], "]"}], " ", ":=", " ", 
  
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"klmp", "=", 
      RowBox[{"p", ".", "klm"}]}], "}"}], ",", 
    RowBox[{
     RowBox[{
      RowBox[{"klmp", "[", 
       RowBox[{"[", "1", "]"}], "]"}], "^", "3"}], "-", 
     RowBox[{
      RowBox[{"klmp", "[", 
       RowBox[{"[", "2", "]"}], "]"}], " ", 
      RowBox[{"klmp", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}]}]}], "]"}]}]], "Input",
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
         RowBox[{"-", "4"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", "3"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "3"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{"4", ",", " ", 
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
          RowBox[{
           RowBox[{"c", " ", "=", 
            RowBox[{"classify", "[", "m", "]"}]}], ",", " ", 
           RowBox[{"klm", "=", 
            RowBox[{"implicitklm", "[", "m", "]"}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ContourPlot", "[", 
            RowBox[{
             RowBox[{"k3lmevaluate", "[", 
              RowBox[{"klm", ",", 
               RowBox[{"{", 
                RowBox[{"x", ",", "y", ",", "1"}], "}"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", 
               RowBox[{"-", "10"}], ",", " ", "10"}], "}"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"y", ",", 
               RowBox[{"-", "10"}], ",", " ", "10"}], "}"}], ",", " ", 
             RowBox[{"Frame", "\[Rule]", "False"}], ",", 
             RowBox[{"ColorFunction", "\[Rule]", "\"\<BeachColors\>\""}]}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", 
               RowBox[{"-", "4"}], ",", "5"}], "}"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", " ", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", " ", 
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
           RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}]}], 
      "]"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts", ",", "\"\<type\>\""}], "}"}], ",", " ", 
       "cubicexamples"}], "}"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}]}], "]"}]}],
   "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}},
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}}, 
       "type"}, {{{0, 0}, {0, 0}, {0, 0}, {0, 0}} -> 
       "point", {{-9, 0}, {-8, 0}, {8, 0}, {9, 0}} -> 
       "line", {{-3, 0}, {-1, 1}, {1, 1}, {3, 0}} -> 
       "quadratic", {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}} -> 
       "loop", {{-3, -3}, {3, 3}, {-3, 3}, {3, -3}} -> 
       "cusp 1", {{-4, 0}, {0, 4}, {0, -4}, {4, 0}} -> 
       "cusp 2", {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}} -> "serpentine"}}, {{
       Hold[$CellContext`pt$$], {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}}}, 
      Automatic}}, Typeset`size$$ = {576., {286., 290.}}, Typeset`update$$ = 
    0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`pt$3784$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-4, -3}, {3, 3}, {-3, 3}, {
         4, -3}}}, "ControllerVariables" :> {
        Hold[$CellContext`pt$$, $CellContext`pt$3784$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`pt$$}, 
        Module[{$CellContext`c$ = $CellContext`classify[$CellContext`m$], \
$CellContext`klm$ = $CellContext`implicitklm[$CellContext`m$]}, 
         Show[
          ContourPlot[
           $CellContext`k3lmevaluate[$CellContext`klm$, {$CellContext`x, \
$CellContext`y, 1}], {$CellContext`x, -10, 10}, {$CellContext`y, -10, 10}, 
           Frame -> False, ColorFunction -> "BeachColors"], 
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$], \
{$CellContext`t, -4, 5}, PlotStyle -> Thick, Axes -> False], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], 
          Graphics[{Black, 
            Text[
             Style[
              $CellContext`classify[$CellContext`m$], Large], {0, 9}]}], 
          ImageSize -> Large]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-4, -3}, {3, 3}, {-3, 3}, {
          4, -3}}, "type"}, {{{0, 0}, {0, 0}, {0, 0}, {0, 0}} -> 
          "point", {{-9, 0}, {-8, 0}, {8, 0}, {9, 0}} -> 
          "line", {{-3, 0}, {-1, 1}, {1, 1}, {3, 0}} -> 
          "quadratic", {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}} -> 
          "loop", {{-3, -3}, {3, 3}, {-3, 3}, {3, -3}} -> 
          "cusp 1", {{-4, 0}, {0, 4}, {0, -4}, {4, 0}} -> 
          "cusp 2", {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}} -> 
          "serpentine"}}, {{$CellContext`pt$$, {{-4, -3}, {3, 3}, {-3, 3}, {
          4, -3}}}, Automatic, ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`classify[
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
             Blank[]]}}]] := 
       Module[{$CellContext`c = $CellContext`crosspmatrix[$CellContext`m]}, 
         Module[{$CellContext`d1 = Part[$CellContext`c, 1], $CellContext`d2 = 
           Part[$CellContext`c, 2], $CellContext`d3 = 
           Part[$CellContext`c, 3], $CellContext`d4 = 
           Part[$CellContext`c, 4]}, 
          If[$CellContext`d2 != 0, 
           
           Module[{$CellContext`d = 
             3 $CellContext`d3^2 - 4 $CellContext`d2 $CellContext`d4}, 
            If[$CellContext`d > 0, "serpentine", 
             
             If[$CellContext`d < 0, "loop", 
              "cusp with inflection at infinity"]]], 
           If[$CellContext`d3 != 0, "cusp with cusp at infinity", 
            
            If[$CellContext`d4 != 0, "quadratic", 
             "line or point"]]]]], $CellContext`crosspmatrix[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]], 
            Pattern[$CellContext`w0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]], 
            Pattern[$CellContext`w1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]], 
            Pattern[$CellContext`w2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]], 
            Pattern[$CellContext`w3, 
             Blank[]]}}]] := Apply[Cross, 
         Transpose[
          Dot[
           $CellContext`p2b[3], $CellContext`m]]], $CellContext`crosspmatrix[
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
             Blank[]]}}]] := $CellContext`crosspmatrix[
         Map[$CellContext`e2p, $CellContext`m]], $CellContext`p2b[
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
$CellContext`v -> $CellContext`t}]], $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 
         1}, $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}, 
         Optional[
          Pattern[$CellContext`w, 
           Blank[]], 
          1]] := {$CellContext`w $CellContext`x, $CellContext`w \
$CellContext`y, $CellContext`w}, $CellContext`x = 
       4, $CellContext`implicitklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := Switch[
         $CellContext`classify[$CellContext`pi], "serpentine", 
         $CellContext`serpentineklm[$CellContext`pi], "loop", 
         $CellContext`loopklm[$CellContext`pi], 
         "cusp with inflection at infinity", 
         $CellContext`loopklm[$CellContext`pi], 
         "cusp with cusp at infinity", 
         $CellContext`cuspinfinityklm[$CellContext`pi], "quadratic", 
         $CellContext`quadraticklm[$CellContext`pi], "line or point", 
         $CellContext`lineklm[$CellContext`pi]], $CellContext`serpentineklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := 
       Module[{$CellContext`i = $CellContext`inflections[$CellContext`pi], \
$CellContext`p = Map[Append[#, 1]& , $CellContext`pi]}, 
         Module[{$CellContext`s1 = Part[$CellContext`i, 1], $CellContext`t1 = 
           1, $CellContext`s2 = Part[$CellContext`i, 2], $CellContext`t2 = 1}, 
          
          Module[{$CellContext`klmp = 
            Module[{$CellContext`s, $CellContext`t}, {
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s) ($CellContext`s2 $CellContext`t - $CellContext`t2 \
$CellContext`s) $CellContext`t, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]], 
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s)^3, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]], 
               
               Coefficient[($CellContext`s2 $CellContext`t - $CellContext`t2 \
$CellContext`s)^3, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]]}]}, 
           LeastSquares[
            Dot[
             $CellContext`p2b[3], $CellContext`p], 
            Transpose[$CellContext`klmp]]]]], $CellContext`inflections[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]], 
            Pattern[$CellContext`w0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]], 
            Pattern[$CellContext`w1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]], 
            Pattern[$CellContext`w2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]], 
            Pattern[$CellContext`w3, 
             Blank[]]}}]] := Module[{$CellContext`t}, 
         Map[ReplaceAll[$CellContext`t, #]& , 
          (If[# == {{}}, {}, #]& )[
           
           Solve[$CellContext`inflectionpoly[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`inflections[
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
         Map[ReplaceAll[$CellContext`t, #]& , 
          (If[# == {{}}, {}, #]& )[
           
           Solve[$CellContext`inflectionpoly[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`inflectionpoly[
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
          Blank[]]] := Dot[
         $CellContext`crosstmatrix[$CellContext`t], 
         $CellContext`crosspmatrix[$CellContext`m]], \
$CellContext`inflectionpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]], 
            Pattern[$CellContext`w0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]], 
            Pattern[$CellContext`w1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]], 
            Pattern[$CellContext`w2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]], 
            Pattern[$CellContext`w3, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          Blank[]]] := Dot[
         $CellContext`crosstmatrix[$CellContext`t], 
         $CellContext`crosspmatrix[$CellContext`m]], $CellContext`crosstmatrix[
         Pattern[$CellContext`t, 
          Blank[]]] := {$CellContext`t^3, (-3) $CellContext`t^2, 
         3 $CellContext`t, -1}, $CellContext`loopklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := 
       Module[{$CellContext`d = $CellContext`doublepoint[$CellContext`pi], \
$CellContext`p = Map[Append[#, 1]& , $CellContext`pi]}, 
         Module[{$CellContext`s1 = Part[$CellContext`d, 1], $CellContext`t1 = 
           1, $CellContext`s2 = Part[$CellContext`d, 2], $CellContext`t2 = 1}, 
          
          Module[{$CellContext`klmp = 
            Module[{$CellContext`s, $CellContext`t}, {
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s) ($CellContext`s2 $CellContext`t - $CellContext`t2 \
$CellContext`s) $CellContext`t, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]], 
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s)^2 ($CellContext`s2 $CellContext`t - $CellContext`t2 \
$CellContext`s), 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]], 
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s) ($CellContext`s2 $CellContext`t - $CellContext`t2 \
$CellContext`s)^2, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]]}]}, 
           LeastSquares[
            Dot[
             $CellContext`p2b[3], $CellContext`p], 
            Transpose[$CellContext`klmp]]]]], $CellContext`doublepoint[
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
         Map[ReplaceAll[$CellContext`t, #]& , 
          (If[# == {{}}, {}, #]& )[
           
           Solve[$CellContext`doublepointpoly[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`doublepointpoly[
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
          Blank[]]] := 
       Module[{$CellContext`c = $CellContext`crosspmatrix[$CellContext`m]}, 
         Module[{$CellContext`d1 = Part[$CellContext`c, 1], $CellContext`d2 = 
           Part[$CellContext`c, 2], $CellContext`d3 = 
           Part[$CellContext`c, 3], $CellContext`d4 = 
           Part[$CellContext`c, 
             4]}, ($CellContext`d2^2 - $CellContext`d1 $CellContext`d3) \
$CellContext`t^2 - ($CellContext`d2 $CellContext`d3 - $CellContext`d1 \
$CellContext`d4) $CellContext`t + $CellContext`d3^2 - $CellContext`d2 \
$CellContext`d4]], $CellContext`doublepointpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]], 
            Pattern[$CellContext`w0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]], 
            Pattern[$CellContext`w1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]], 
            Pattern[$CellContext`w2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]], 
            Pattern[$CellContext`w3, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          Blank[]]] := 
       Module[{$CellContext`c = $CellContext`crosspmatrix[$CellContext`m]}, 
         Module[{$CellContext`d1 = Part[$CellContext`c, 1], $CellContext`d2 = 
           Part[$CellContext`c, 2], $CellContext`d3 = 
           Part[$CellContext`c, 3], $CellContext`d4 = 
           Part[$CellContext`c, 
             4]}, ($CellContext`d2^2 - $CellContext`d1 $CellContext`d3) \
$CellContext`t^2 - ($CellContext`d2 $CellContext`d3 - $CellContext`d1 \
$CellContext`d4) $CellContext`t + $CellContext`d3^2 - $CellContext`d2 \
$CellContext`d4]], $CellContext`cuspinfinityklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := 
       Module[{$CellContext`i = $CellContext`inflections[$CellContext`pi], \
$CellContext`p = Map[Append[#, 1]& , $CellContext`pi]}, 
         Module[{$CellContext`s1 = Part[$CellContext`i, 1], $CellContext`t1 = 
           1}, 
          
          Module[{$CellContext`klmp = 
            Module[{$CellContext`s, $CellContext`t}, {
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s) $CellContext`t^2, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]], 
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s)^3, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]]}]}, 
           Transpose[
            Append[
             Transpose[
              LeastSquares[
               Dot[
                $CellContext`p2b[3], $CellContext`p], 
               Transpose[$CellContext`klmp]]], {0, 0, 
             1}]]]]], $CellContext`quadraticklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := 
       Module[{$CellContext`si = 
          Det[{Part[$CellContext`pi, 4] - Part[$CellContext`pi, 1], 
             Part[$CellContext`pi, 4] - 
             Part[$CellContext`pi, 3]}], $CellContext`ti = 
          Det[{Part[$CellContext`pi, 2] - Part[$CellContext`pi, 1], 
             Part[$CellContext`pi, 4] - Part[$CellContext`pi, 3]}]}, 
         Module[{$CellContext`pm = 
           Part[$CellContext`pi, 1] ($CellContext`ti - $CellContext`si) + 
            Part[$CellContext`pi, 2] $CellContext`si}, 
          
          Module[{$CellContext`c = 
            Map[Append[#, $CellContext`ti]& , {$CellContext`ti 
               Part[$CellContext`pi, 1], $CellContext`pm, $CellContext`ti 
               Part[$CellContext`pi, 4]}], $CellContext`v = {{0, 0, 1}, {0, 1,
              0}, {1, 0, 0}}}, 
           Module[{$CellContext`cb = Dot[
               $CellContext`p2b[2], $CellContext`c]}, 
            Module[{$CellContext`d = Det[$CellContext`cb]}, 
             Module[{$CellContext`t = Dot[
                 $CellContext`adjugate[$CellContext`cb], $CellContext`v]}, 
              
              Module[{$CellContext`k = 
                Dot[$CellContext`t, {0, $CellContext`ti, 0}], $CellContext`l = 
                Dot[$CellContext`t, {$CellContext`d $CellContext`ti, 0, 0}]}, 
               
               
               Transpose[{$CellContext`k, $CellContext`l, \
$CellContext`k}]]]]]]]], $CellContext`adjugate[{{
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
$CellContext`e}}, $CellContext`lineklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := 
       Module[{$CellContext`a = $CellContext`y3 - $CellContext`y0, \
$CellContext`b = $CellContext`x3 - $CellContext`x0}, 
         Module[{$CellContext`c = -($CellContext`a $CellContext`x1 + \
$CellContext`b $CellContext`y1)}, {{$CellContext`a, 0, 0}, {$CellContext`b, 0,
             0}, {$CellContext`c, 0, 0}}]], $CellContext`k3lmevaluate[
         Pattern[$CellContext`klm, {{
            Pattern[$CellContext`ka, 
             Blank[]], 
            Pattern[$CellContext`la, 
             Blank[]], 
            Pattern[$CellContext`ma, 
             Blank[]]}, {
            Pattern[$CellContext`kb, 
             Blank[]], 
            Pattern[$CellContext`lb, 
             Blank[]], 
            Pattern[$CellContext`mb, 
             Blank[]]}, {
            Pattern[$CellContext`kc, 
             Blank[]], 
            Pattern[$CellContext`lc, 
             Blank[]], 
            Pattern[$CellContext`mc, 
             Blank[]]}}], 
         Pattern[$CellContext`p, {
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`y, 
            Blank[]], 
           Pattern[$CellContext`w, 
            Blank[]]}]] := 
       Module[{$CellContext`klmp = Dot[$CellContext`p, $CellContext`klm]}, 
         Part[$CellContext`klmp, 1]^3 - Part[$CellContext`klmp, 2] 
         Part[$CellContext`klmp, 3]], $CellContext`bb3[
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
         RowBox[{"-", "4"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"3", ",", "3"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "3"}], ",", " ", "3"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{"4", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", "pt"}], "}"}], ",", 
       RowBox[{
        RowBox[{"implicitklm", "[", "m", "]"}], "//", "FullSimplify"}]}], 
      "]"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts", ",", "\"\<type\>\""}], "}"}], ",", " ", 
       "cubicexamples"}], "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}},
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}}, 
       "type"}, {{{0, 0}, {0, 0}, {0, 0}, {0, 0}} -> 
       "point", {{-9, 0}, {-8, 0}, {8, 0}, {9, 0}} -> 
       "line", {{-3, 0}, {-1, 1}, {1, 1}, {3, 0}} -> 
       "quadratic", {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}} -> 
       "loop", {{-3, -3}, {3, 3}, {-3, 3}, {3, -3}} -> 
       "cusp 1", {{-4, 0}, {0, 4}, {0, -4}, {4, 0}} -> 
       "cusp 2", {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}} -> "serpentine"}}}, 
    Typeset`size$$ = {
    526.4400009155273, {15.573486328125, 18.80503680229187}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`pt$4006$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-4, -3}, {3, 3}, {-3, 3}, {
         4, -3}}}, "ControllerVariables" :> {
        Hold[$CellContext`pt$$, $CellContext`pt$4006$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m = $CellContext`pt$$}, 
        FullSimplify[
         $CellContext`implicitklm[$CellContext`m]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-4, -3}, {3, 3}, {-3, 3}, {
          4, -3}}, "type"}, {{{0, 0}, {0, 0}, {0, 0}, {0, 0}} -> 
          "point", {{-9, 0}, {-8, 0}, {8, 0}, {9, 0}} -> 
          "line", {{-3, 0}, {-1, 1}, {1, 1}, {3, 0}} -> 
          "quadratic", {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}} -> 
          "loop", {{-3, -3}, {3, 3}, {-3, 3}, {3, -3}} -> 
          "cusp 1", {{-4, 0}, {0, 4}, {0, -4}, {4, 0}} -> 
          "cusp 2", {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}} -> "serpentine"}}}, 
      "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{572., {60., 66.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`implicitklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := Switch[
         $CellContext`classify[$CellContext`pi], "serpentine", 
         $CellContext`serpentineklm[$CellContext`pi], "loop", 
         $CellContext`loopklm[$CellContext`pi], 
         "cusp with inflection at infinity", 
         $CellContext`loopklm[$CellContext`pi], 
         "cusp with cusp at infinity", 
         $CellContext`cuspinfinityklm[$CellContext`pi], "quadratic", 
         $CellContext`quadraticklm[$CellContext`pi], "line or point", 
         $CellContext`lineklm[$CellContext`pi]], $CellContext`classify[
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
             Blank[]]}}]] := 
       Module[{$CellContext`c = $CellContext`crosspmatrix[$CellContext`m]}, 
         Module[{$CellContext`d1 = Part[$CellContext`c, 1], $CellContext`d2 = 
           Part[$CellContext`c, 2], $CellContext`d3 = 
           Part[$CellContext`c, 3], $CellContext`d4 = 
           Part[$CellContext`c, 4]}, 
          If[$CellContext`d2 != 0, 
           
           Module[{$CellContext`d = 
             3 $CellContext`d3^2 - 4 $CellContext`d2 $CellContext`d4}, 
            If[$CellContext`d > 0, "serpentine", 
             
             If[$CellContext`d < 0, "loop", 
              "cusp with inflection at infinity"]]], 
           If[$CellContext`d3 != 0, "cusp with cusp at infinity", 
            
            If[$CellContext`d4 != 0, "quadratic", 
             "line or point"]]]]], $CellContext`crosspmatrix[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]], 
            Pattern[$CellContext`w0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]], 
            Pattern[$CellContext`w1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]], 
            Pattern[$CellContext`w2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]], 
            Pattern[$CellContext`w3, 
             Blank[]]}}]] := Apply[Cross, 
         Transpose[
          Dot[
           $CellContext`p2b[3], $CellContext`m]]], $CellContext`crosspmatrix[
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
             Blank[]]}}]] := $CellContext`crosspmatrix[
         Map[$CellContext`e2p, $CellContext`m]], $CellContext`p2b[
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
$CellContext`v -> $CellContext`t}]], $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 
         1}, $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}, 
         Optional[
          Pattern[$CellContext`w, 
           Blank[]], 
          1]] := {$CellContext`w $CellContext`x, $CellContext`w \
$CellContext`y, $CellContext`w}, $CellContext`x = 
       4, $CellContext`serpentineklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := 
       Module[{$CellContext`i = $CellContext`inflections[$CellContext`pi], \
$CellContext`p = Map[Append[#, 1]& , $CellContext`pi]}, 
         Module[{$CellContext`s1 = Part[$CellContext`i, 1], $CellContext`t1 = 
           1, $CellContext`s2 = Part[$CellContext`i, 2], $CellContext`t2 = 1}, 
          
          Module[{$CellContext`klmp = 
            Module[{$CellContext`s, $CellContext`t}, {
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s) ($CellContext`s2 $CellContext`t - $CellContext`t2 \
$CellContext`s) $CellContext`t, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]], 
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s)^3, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]], 
               
               Coefficient[($CellContext`s2 $CellContext`t - $CellContext`t2 \
$CellContext`s)^3, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]]}]}, 
           LeastSquares[
            Dot[
             $CellContext`p2b[3], $CellContext`p], 
            Transpose[$CellContext`klmp]]]]], $CellContext`inflections[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]], 
            Pattern[$CellContext`w0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]], 
            Pattern[$CellContext`w1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]], 
            Pattern[$CellContext`w2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]], 
            Pattern[$CellContext`w3, 
             Blank[]]}}]] := Module[{$CellContext`t}, 
         Map[ReplaceAll[$CellContext`t, #]& , 
          (If[# == {{}}, {}, #]& )[
           
           Solve[$CellContext`inflectionpoly[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`inflections[
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
         Map[ReplaceAll[$CellContext`t, #]& , 
          (If[# == {{}}, {}, #]& )[
           
           Solve[$CellContext`inflectionpoly[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`inflectionpoly[
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
          Blank[]]] := Dot[
         $CellContext`crosstmatrix[$CellContext`t], 
         $CellContext`crosspmatrix[$CellContext`m]], \
$CellContext`inflectionpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]], 
            Pattern[$CellContext`w0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]], 
            Pattern[$CellContext`w1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]], 
            Pattern[$CellContext`w2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]], 
            Pattern[$CellContext`w3, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          Blank[]]] := Dot[
         $CellContext`crosstmatrix[$CellContext`t], 
         $CellContext`crosspmatrix[$CellContext`m]], $CellContext`crosstmatrix[
         Pattern[$CellContext`t, 
          Blank[]]] := {$CellContext`t^3, (-3) $CellContext`t^2, 
         3 $CellContext`t, -1}, $CellContext`loopklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := 
       Module[{$CellContext`d = $CellContext`doublepoint[$CellContext`pi], \
$CellContext`p = Map[Append[#, 1]& , $CellContext`pi]}, 
         Module[{$CellContext`s1 = Part[$CellContext`d, 1], $CellContext`t1 = 
           1, $CellContext`s2 = Part[$CellContext`d, 2], $CellContext`t2 = 1}, 
          
          Module[{$CellContext`klmp = 
            Module[{$CellContext`s, $CellContext`t}, {
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s) ($CellContext`s2 $CellContext`t - $CellContext`t2 \
$CellContext`s) $CellContext`t, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]], 
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s)^2 ($CellContext`s2 $CellContext`t - $CellContext`t2 \
$CellContext`s), 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]], 
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s) ($CellContext`s2 $CellContext`t - $CellContext`t2 \
$CellContext`s)^2, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]]}]}, 
           LeastSquares[
            Dot[
             $CellContext`p2b[3], $CellContext`p], 
            Transpose[$CellContext`klmp]]]]], $CellContext`doublepoint[
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
         Map[ReplaceAll[$CellContext`t, #]& , 
          (If[# == {{}}, {}, #]& )[
           
           Solve[$CellContext`doublepointpoly[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`doublepointpoly[
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
          Blank[]]] := 
       Module[{$CellContext`c = $CellContext`crosspmatrix[$CellContext`m]}, 
         Module[{$CellContext`d1 = Part[$CellContext`c, 1], $CellContext`d2 = 
           Part[$CellContext`c, 2], $CellContext`d3 = 
           Part[$CellContext`c, 3], $CellContext`d4 = 
           Part[$CellContext`c, 
             4]}, ($CellContext`d2^2 - $CellContext`d1 $CellContext`d3) \
$CellContext`t^2 - ($CellContext`d2 $CellContext`d3 - $CellContext`d1 \
$CellContext`d4) $CellContext`t + $CellContext`d3^2 - $CellContext`d2 \
$CellContext`d4]], $CellContext`doublepointpoly[
         Pattern[$CellContext`m, {{
            Pattern[$CellContext`x0, 
             Blank[]], 
            Pattern[$CellContext`y0, 
             Blank[]], 
            Pattern[$CellContext`w0, 
             Blank[]]}, {
            Pattern[$CellContext`x1, 
             Blank[]], 
            Pattern[$CellContext`y1, 
             Blank[]], 
            Pattern[$CellContext`w1, 
             Blank[]]}, {
            Pattern[$CellContext`x2, 
             Blank[]], 
            Pattern[$CellContext`y2, 
             Blank[]], 
            Pattern[$CellContext`w2, 
             Blank[]]}, {
            Pattern[$CellContext`x3, 
             Blank[]], 
            Pattern[$CellContext`y3, 
             Blank[]], 
            Pattern[$CellContext`w3, 
             Blank[]]}}], 
         Pattern[$CellContext`t, 
          Blank[]]] := 
       Module[{$CellContext`c = $CellContext`crosspmatrix[$CellContext`m]}, 
         Module[{$CellContext`d1 = Part[$CellContext`c, 1], $CellContext`d2 = 
           Part[$CellContext`c, 2], $CellContext`d3 = 
           Part[$CellContext`c, 3], $CellContext`d4 = 
           Part[$CellContext`c, 
             4]}, ($CellContext`d2^2 - $CellContext`d1 $CellContext`d3) \
$CellContext`t^2 - ($CellContext`d2 $CellContext`d3 - $CellContext`d1 \
$CellContext`d4) $CellContext`t + $CellContext`d3^2 - $CellContext`d2 \
$CellContext`d4]], $CellContext`cuspinfinityklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := 
       Module[{$CellContext`i = $CellContext`inflections[$CellContext`pi], \
$CellContext`p = Map[Append[#, 1]& , $CellContext`pi]}, 
         Module[{$CellContext`s1 = Part[$CellContext`i, 1], $CellContext`t1 = 
           1}, 
          
          Module[{$CellContext`klmp = 
            Module[{$CellContext`s, $CellContext`t}, {
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s) $CellContext`t^2, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]], 
               
               Coefficient[($CellContext`s1 $CellContext`t - $CellContext`t1 \
$CellContext`s)^3, 
                $CellContext`pb[{$CellContext`s, $CellContext`t}, 3]]}]}, 
           Transpose[
            Append[
             Transpose[
              LeastSquares[
               Dot[
                $CellContext`p2b[3], $CellContext`p], 
               Transpose[$CellContext`klmp]]], {0, 0, 
             1}]]]]], $CellContext`quadraticklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := 
       Module[{$CellContext`si = 
          Det[{Part[$CellContext`pi, 4] - Part[$CellContext`pi, 1], 
             Part[$CellContext`pi, 4] - 
             Part[$CellContext`pi, 3]}], $CellContext`ti = 
          Det[{Part[$CellContext`pi, 2] - Part[$CellContext`pi, 1], 
             Part[$CellContext`pi, 4] - Part[$CellContext`pi, 3]}]}, 
         Module[{$CellContext`pm = 
           Part[$CellContext`pi, 1] ($CellContext`ti - $CellContext`si) + 
            Part[$CellContext`pi, 2] $CellContext`si}, 
          Module[{$CellContext`c = 
            Map[Append[#, $CellContext`ti]& , {$CellContext`ti 
               Part[$CellContext`pi, 1], $CellContext`pm, $CellContext`ti 
               Part[$CellContext`pi, 4]}], $CellContext`v = {{0, 0, 1}, {0, 1,
              0}, {1, 0, 0}}}, 
           Module[{$CellContext`cb = Dot[
               $CellContext`p2b[2], $CellContext`c]}, 
            Module[{$CellContext`d = Det[$CellContext`cb]}, 
             Module[{$CellContext`t = Dot[
                 $CellContext`adjugate[$CellContext`cb], $CellContext`v]}, 
              
              Module[{$CellContext`k = 
                Dot[$CellContext`t, {0, $CellContext`ti, 0}], $CellContext`l = 
                Dot[$CellContext`t, {$CellContext`d $CellContext`ti, 0, 0}]}, 
               
               
               Transpose[{$CellContext`k, $CellContext`l, \
$CellContext`k}]]]]]]]], $CellContext`adjugate[{{
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
$CellContext`e}}, $CellContext`lineklm[
         Pattern[$CellContext`pi, {{
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
             Blank[]]}}]] := 
       Module[{$CellContext`a = $CellContext`y3 - $CellContext`y0, \
$CellContext`b = $CellContext`x3 - $CellContext`x0}, 
         Module[{$CellContext`c = -($CellContext`a $CellContext`x1 + \
$CellContext`b $CellContext`y1)}, {{$CellContext`a, 0, 0}, {$CellContext`b, 0,
             0}, {$CellContext`c, 0, 0}}]]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]]
},
WindowSize->{1471, 1173},
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
Cell[1714, 43, 67, 0, 29, "Text"],
Cell[1784, 45, 286, 9, 48, "Input",
 InitializationCell->True],
Cell[2073, 56, 235, 7, 48, "Input",
 InitializationCell->True],
Cell[2311, 65, 98, 2, 29, "Text"],
Cell[2412, 69, 911, 30, 48, "Input",
 InitializationCell->True],
Cell[3326, 101, 94, 2, 29, "Text"],
Cell[3423, 105, 774, 26, 48, "Input",
 InitializationCell->True],
Cell[4200, 133, 299, 9, 29, "Text"],
Cell[4502, 144, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[4779, 155, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[5056, 166, 105, 3, 29, "Text"],
Cell[5164, 171, 711, 23, 48, "Input",
 InitializationCell->True],
Cell[5878, 196, 37, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[5940, 200, 538, 17, 32, "Input"],
Cell[6481, 219, 507, 14, 32, "Output"]
}, Open  ]],
Cell[7003, 236, 62, 0, 29, "Text"],
Cell[7068, 238, 183, 5, 48, "Input",
 InitializationCell->True],
Cell[7254, 245, 41, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[7320, 249, 2687, 73, 280, "Input",
 InitializationCell->True],
Cell[10010, 324, 2571, 54, 659, "Output"]
}, Open  ]],
Cell[12596, 381, 112, 3, 29, "Text"],
Cell[12711, 386, 556, 16, 48, "Input",
 InitializationCell->True],
Cell[13270, 404, 525, 15, 48, "Input",
 InitializationCell->True],
Cell[13798, 421, 127, 3, 29, "Text"],
Cell[13928, 426, 338, 11, 51, "Input",
 InitializationCell->True],
Cell[14269, 439, 112, 3, 29, "Text"],
Cell[14384, 444, 674, 21, 48, "Input",
 InitializationCell->True],
Cell[15061, 467, 559, 17, 48, "Input",
 InitializationCell->True],
Cell[15623, 486, 109, 3, 29, "Text"],
Cell[15735, 491, 607, 19, 48, "Input",
 InitializationCell->True],
Cell[16345, 512, 656, 19, 48, "Input",
 InitializationCell->True],
Cell[17004, 533, 1227, 37, 70, "Input",
 InitializationCell->True],
Cell[18234, 572, 1176, 36, 48, "Input",
 InitializationCell->True],
Cell[19413, 610, 50, 0, 29, "Text"],
Cell[19466, 612, 1713, 51, 72, "Input",
 InitializationCell->True],
Cell[21182, 665, 1762, 51, 72, "Input",
 InitializationCell->True],
Cell[22947, 718, 1177, 36, 48, "Input",
 InitializationCell->True],
Cell[24127, 756, 665, 11, 83, "Text"],
Cell[24795, 769, 2356, 64, 118, "Input",
 InitializationCell->True],
Cell[27154, 835, 118, 3, 29, "Text"],
Cell[27275, 840, 3475, 107, 91, "Input",
 InitializationCell->True],
Cell[30753, 949, 553, 9, 47, "Text"],
Cell[31309, 960, 1408, 42, 70, "Input",
 InitializationCell->True],
Cell[32720, 1004, 33, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[32778, 1008, 3991, 103, 280, "Input",
 InitializationCell->True],
Cell[36772, 1113, 9911, 236, 691, "Output"]
}, Open  ]],
Cell[46698, 1352, 63, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[46786, 1356, 1095, 34, 75, "Input"],
Cell[47884, 1392, 2627, 50, 125, "Output"]
}, Open  ]],
Cell[50526, 1445, 159, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[50710, 1452, 309, 9, 32, "Input"],
Cell[51022, 1463, 11342, 255, 242, "Output"]
}, Open  ]],
Cell[62379, 1721, 32, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[62436, 1725, 1077, 33, 32, "Input"],
Cell[63516, 1760, 2224, 72, 58, "Output"]
}, Open  ]],
Cell[65755, 1835, 143, 3, 29, "Text"],
Cell[65901, 1840, 3292, 86, 343, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[69218, 1930, 1266, 38, 54, "Input"],
Cell[70487, 1970, 5352, 168, 98, "Output"]
}, Open  ]],
Cell[75854, 2141, 41, 0, 29, "Text"],
Cell[75898, 2143, 76, 0, 29, "Text"],
Cell[75977, 2145, 6682, 157, 921, "Text"],
Cell[82662, 2304, 379, 6, 47, "Text"],
Cell[83044, 2312, 92, 2, 29, "Text"],
Cell[83139, 2316, 270, 5, 29, "Text"],
Cell[83412, 2323, 3567, 97, 154, "Input",
 InitializationCell->True],
Cell[86982, 2422, 3871, 105, 154, "Input",
 InitializationCell->True],
Cell[90856, 2529, 2903, 82, 112, "Input",
 InitializationCell->True],
Cell[93762, 2613, 1489, 52, 48, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[95276, 2669, 312, 9, 32, "Input"],
Cell[95591, 2680, 260, 8, 32, "Output"]
}, Open  ]],
Cell[95866, 2691, 4924, 134, 343, "Input",
 InitializationCell->True],
Cell[100793, 2827, 1300, 40, 48, "Input",
 InitializationCell->True],
Cell[102096, 2869, 1109, 29, 91, "Input",
 InitializationCell->True],
Cell[103208, 2900, 959, 31, 48, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[104192, 2935, 4119, 106, 280, "Input",
 InitializationCell->True],
Cell[108314, 3043, 27428, 675, 691, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[135779, 3723, 1095, 34, 91, "Input",
 InitializationCell->True],
Cell[136877, 3759, 25006, 616, 143, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature jvDf2UDwMyY9QAgKxpaD@pbf *)
