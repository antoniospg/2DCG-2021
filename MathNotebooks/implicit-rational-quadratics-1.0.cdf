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
NotebookDataLength[     79728,       2317]
NotebookOptionsPosition[     77028,       2211]
NotebookOutlinePosition[     77497,       2232]
CellTagsIndexPosition[     77454,       2229]
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

Cell[TextData[{
 "This is just for speed. We ",
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
Here is a function that projects a projective point to the Euclidean plane\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"p2e", "[", 
   RowBox[{"{", 
    RowBox[{"x_", ",", " ", "y_", ",", " ", "w_"}], "}"}], "]"}], " ", ":=", 
  " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"x", "/", "w"}], ",", " ", 
    RowBox[{"y", "/", "w"}]}], "}"}]}]], "Input",
 InitializationCell->True],

Cell["This moves an Euclidean point to projective plane at w", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"e2p", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"x_", ",", " ", "y_"}], "}"}], ",", " ", 
    RowBox[{"w_:", "1"}]}], "]"}], " ", ":=", " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"w", " ", "x"}], ",", " ", 
    RowBox[{"w", " ", "y"}], ",", " ", "w"}], "}"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
Here is a function that returns a matrix with homogeneous control points for \
a rational B\[EAcute]zier of any degree\
\>", "Text"],

Cell[BoxData[
 StyleBox[
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
      RowBox[{"k", ",", " ", "0", ",", " ", "n"}], "}"}]}], "]"}]}],
  InitializationCell->True]], "Input",
 InitializationCell->True],

Cell["So for the quadratic we get three control-points", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ppoints", "[", "2", "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"x0", "y0", "w0"},
     {"x1", "y1", "w1"},
     {"x2", "y2", "w2"}
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

Cell["Here is another look at the rational quadratic.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
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
          RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], ",", " ", 
     RowBox[{"ws", " ", "=", " ", "1"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", " ", 
         RowBox[{"N", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{
              RowBox[{"pt", "[", 
               RowBox[{"[", "2", "]"}], "]"}], ",", "w"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "]"}]}], "}"}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{"p2e", "[", 
            RowBox[{
             RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
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
           RowBox[{"Dashed", ",", " ", 
            RowBox[{"Line", "[", 
             RowBox[{"Append", "[", 
              RowBox[{"pt", ",", 
               RowBox[{"First", "[", "pt", "]"}]}], "]"}], "]"}]}], "}"}], 
          "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", "\[IndentingNewLine]", 
          RowBox[{"Map", "[", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{
             RowBox[{"Module", "[", 
              RowBox[{
               RowBox[{"{", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"t", " ", "=", " ", 
                  RowBox[{"#", "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
                 "\[IndentingNewLine]", 
                 RowBox[{"p1", " ", "=", " ", 
                  RowBox[{"#", "[", 
                   RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
                 "\[IndentingNewLine]", 
                 RowBox[{"p2", " ", "=", " ", 
                  RowBox[{"#", "[", 
                   RowBox[{"[", "3", "]"}], "]"}]}]}], "}"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Text", "[", 
                RowBox[{
                 RowBox[{"Style", "[", 
                  RowBox[{"t", ",", 
                   RowBox[{"FontSize", "\[Rule]", "Large"}]}], "]"}], ",", 
                 " ", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"p1", "+", "p2"}], ")"}], "/", "2"}], " ", "+", 
                  " ", 
                  RowBox[{
                   RowBox[{"Cross", "[", 
                    RowBox[{"p1", "-", "p2"}], "]"}], "/", 
                   RowBox[{"Norm", "[", 
                    RowBox[{"Cross", "[", 
                    RowBox[{"p1", "-", "p2"}], "]"}], "]"}]}]}]}], "]"}]}], 
              "]"}], "&"}], ",", "\[IndentingNewLine]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"\"\<\[ScriptK]\>\"", ",", " ", 
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
                RowBox[{"pt", "[", 
                 RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\"\<\[ScriptL]\>\"", ",", " ", 
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
                RowBox[{"pt", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"\"\<\[ScriptM]\>\"", ",", " ", 
                RowBox[{"pt", "[", 
                 RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
                RowBox[{"pt", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "}"}]}], "]"}], 
          "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w", ",", " ", "ws"}], "}"}], ",", "0", ",", " ", "10"}], 
      "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
    6, -3}}, $CellContext`w$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, 5}, {6, -3}}}, Automatic}, {{
       Hold[$CellContext`w$$], 1}, 0, 10}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`w$334$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
         6, -3}}, $CellContext`w$$ = 1}, "ControllerVariables" :> {
        Hold[$CellContext`w$$, $CellContext`w$334$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Module[{$CellContext`m$ = N[{
            $CellContext`e2p[
             Part[$CellContext`pt$$, 1]], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 2], $CellContext`w$$], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 3]]}]}, 
        Show[
         ParametricPlot[
          $CellContext`p2e[
           Dot[
            $CellContext`bb2[$CellContext`t], $CellContext`m$]], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Thick, Axes -> False], 
         Graphics[
          Table[
           Text[
            Style[
             Subscript[$CellContext`p, $CellContext`i - 1], Large], 
            Part[$CellContext`pt$$, $CellContext`i] + {0, 
             1}], {$CellContext`i, 1, 
            Length[$CellContext`pt$$]}]], 
         Graphics[{Dashed, 
           Line[
            Append[$CellContext`pt$$, 
             First[$CellContext`pt$$]]]}], 
         Graphics[
          Map[
          Module[{$CellContext`t = Part[#, 1], $CellContext`p1 = 
             Part[#, 2], $CellContext`p2 = Part[#, 3]}, 
            Text[
             
             Style[$CellContext`t, FontSize -> 
              Large], ($CellContext`p1 + $CellContext`p2)/2 + 
             Cross[$CellContext`p1 - $CellContext`p2]/Norm[
               Cross[$CellContext`p1 - $CellContext`p2]]]]& , {{
            "\[ScriptK]", 
             Part[$CellContext`pt$$, 1], 
             Part[$CellContext`pt$$, 3]}, {"\[ScriptL]", 
             Part[$CellContext`pt$$, 2], 
             Part[$CellContext`pt$$, 1]}, {"\[ScriptM]", 
             Part[$CellContext`pt$$, 3], 
             Part[$CellContext`pt$$, 2]}}]], ImageSize -> Large]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, 5}, {6, -3}}}, 
         Automatic, ControlType -> Locator}, {{$CellContext`w$$, 1}, 0, 10}}, 
      "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}, 
         Optional[
          Pattern[$CellContext`w, 
           Blank[]], 
          1]] := {$CellContext`w $CellContext`x, $CellContext`w \
$CellContext`y, $CellContext`w}, $CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, $CellContext`bb2[
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

Cell["Implicit form of rational quadratic", "Text"],

Cell[TextData[{
 "Each one of three straight lines \[ScriptK], \[ScriptL], \[ScriptM] has an \
equation of the implicit form ax + by + cw == 0. We can write \
\[ScriptK][x,y,w] to represent this equation, and do the same for \[ScriptL] \
and \[ScriptM]. Now look at the expression ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"\[ScriptK]", "[", 
     RowBox[{"x", ",", "y", ",", "w"}], "]"}], "2"], TraditionalForm]]],
 " - \[ScriptL][x,y,w] \[ScriptM][x,y,w] == 0. This is an implicit quadratic \
equation representing some conic. \n\nNow consider where the conic meets the \
line ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[ScriptK]", "[", 
    RowBox[{"x", ",", "y", ",", "w"}], "]"}], TraditionalForm]]],
 " == 0. This will happen in the solutions of equation  \[ScriptL][x,y,w] \
\[ScriptM][x,y,w] == 0. I.e.,  we must have either \[ScriptL][x,y,w] == 0 or \
\[ScriptM][x,y,w] == 0. These are the points of intersection of \[ScriptK],\
\[ScriptL] and of \[ScriptK],\[ScriptM]. I.e., the conic goes through the \
first and last control points of our arc. \n\nThen, consider where the conic \
meets the line \[ScriptL][x,y,w] == 0. This will happen in the two solutions \
of the quadratic equation ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"\[ScriptK]", "[", 
     RowBox[{"x", ",", "y", ",", "w"}], "]"}], "2"], TraditionalForm]]],
 "==0. But these two solutions coincide. It is a second-order contact. So the \
curve is tangent to \[ScriptL] at the intersection of \[ScriptK],\[ScriptL]. \
The same applies to the intersection between the curve and \[ScriptM][x,y,w] \
== 0.\n\nLook at the equation of the full conic\n\n",
 Cell[BoxData[
  RowBox[{"  ", 
   RowBox[{
    RowBox[{
     RowBox[{"a20", " ", 
      SuperscriptBox["x", "2"]}], " ", "+", " ", 
     RowBox[{"2", " ", "a11", " ", "x", " ", "y"}], " ", "+", " ", 
     RowBox[{"a02", " ", 
      SuperscriptBox["y", "2"]}], " ", "+", " ", 
     RowBox[{"a10", " ", "x"}], " ", "+", " ", 
     RowBox[{"a01", " ", "y"}], " ", "+", " ", "a00"}], " ", "\[Equal]", " ", 
    "0"}]}]],
  CellChangeTimes->{3.627916780286422*^9}],
 "\n\nThere are really only 5 degrees of freedom. \n\nThe conic goes through \
two points \[ScriptK],\[ScriptL].and \[ScriptK],\[ScriptM]. Substituting the \
coordinates, we get two linear equations on the coefficients of the conic.\n\n\
Now shift the equation to the point of tangency. The equation of the conic \
becomes \n\n  ",
 Cell[BoxData[
  RowBox[{
   RowBox[{
    RowBox[{"b20", " ", 
     SuperscriptBox["x", "2"]}], " ", "+", " ", 
    RowBox[{"2", " ", "b11", " ", "x", " ", "y"}], " ", "+", " ", 
    RowBox[{"b02", " ", 
     SuperscriptBox["y", "2"]}], " ", "+", " ", 
    RowBox[{"b10", " ", "x"}], " ", "+", " ", 
    RowBox[{"b01", " ", "y"}]}], " ", "\[Equal]", " ", "0"}]],
  CellChangeTimes->{3.627916780286422*^9}],
 "\n\nAt that point of tangency, the tangent line can be written as y = m x. \
Substituting, we get\n\n  ",
 Cell[BoxData[
  RowBox[{
   RowBox[{
    RowBox[{"b20", " ", 
     SuperscriptBox["x", "2"]}], " ", "+", " ", 
    RowBox[{"2", " ", "b11", " ", "x", " ", "m", " ", "x"}], " ", "+", " ", 
    RowBox[{"b02", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"m", " ", "x"}], ")"}], "2"]}], " ", "+", " ", 
    RowBox[{"b10", " ", "x"}], " ", "+", " ", 
    RowBox[{"b01", " ", "m", " ", "x"}]}], " ", "\[Equal]", " ", "0"}]],
  CellChangeTimes->{3.627916780286422*^9}],
 "\n\nor\n\n  ",
 Cell[BoxData[
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"b20", " ", "+", " ", 
       RowBox[{"2", " ", "b11", " ", "m"}], " ", "+", "  ", 
       RowBox[{"b02", " ", 
        SuperscriptBox["m", "2"]}]}], ")"}], " ", 
     SuperscriptBox["x", "2"]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"b10", " ", "+", " ", 
       RowBox[{"b01", " ", "m"}]}], " ", ")"}], " ", "x"}]}], " ", "\[Equal]",
    " ", "0"}]],
  CellChangeTimes->{3.627916780286422*^9}],
 "\n\nIn order for this to be a second-order contact, the linear term must \
vanish. So we get another 2 linear equations on the coefficients of the \
conic, one for each tangent.\n\nWe have 4 equations. We are missing 1 \
equation.\n\nThis makes sense. We already know that we can change the w1 \
parameter without changing the tangents! Now, all we have to do is find the \
weights between these affine functionals to pick the correct conic."
}], "Text"],

Cell[TextData[{
 "There is a neat trick to do that. (From Loop & Blinn [2005])\n\nLet our arc \
be given by the curve \[Gamma][s,t] and compose it with each one of  \
\[ScriptK], \[ScriptL], \[ScriptM]. \nWe know that \[ScriptK][\[Gamma][s,t]] \
has a root at each of the endpoints s=0 and s=t. \nSo we can write \n\n   \
\[ScriptK][\[Gamma][s,t]] = ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["a", "k"], TraditionalForm]]],
 " (t-s) s. \n\nBy the same reasoning, we have \n\n   \
\[ScriptL][\[Gamma][s,t]] = ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["a", "l"], TraditionalForm]]],
 Cell[BoxData[
  FormBox[
   SuperscriptBox["s", "2"], TraditionalForm]]],
 " \n  \nand \n\n   \[ScriptM][\[Gamma][s,t]] = ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["a", "m"], TraditionalForm]]],
 Cell[BoxData[
  FormBox[
   RowBox[{" ", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"t", "-", "s"}], ")"}], "2"]}], TraditionalForm]]],
 ". "
}], "Text"],

Cell["\<\
We will find the values of {a, b, c} for \[ScriptK], \[ScriptL], and \
\[ScriptM] directly.\
\>", "Text"],

Cell[TextData[{
 "Since \[ScriptK], \[ScriptL], \[ScriptM] are affine, we know that \n\n  \
\[ScriptK][\[Gamma][s,t]] =  \[ScriptK][p1 ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], "2"], TraditionalForm]]],
 " + p2 2 s (t-s) + p3",
 Cell[BoxData[
  FormBox[
   RowBox[{" ", 
    SuperscriptBox["s", "2"]}], TraditionalForm]]],
 "]    = \[ScriptK][p1]  ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], "2"], TraditionalForm]]],
 " +  \[ScriptK][p2] 2 s (t-s) + \[ScriptK][p3] ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["s", "2"], TraditionalForm]]],
 "       = ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], " ", "s"}], TraditionalForm]]],
 "\n\n  \[ScriptL][\[Gamma][s,t]] =  \[ScriptL][p1 ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], "2"], TraditionalForm]]],
 " + p2 2 s (t-s) + p3",
 Cell[BoxData[
  FormBox[
   RowBox[{" ", 
    SuperscriptBox["s", "2"]}], TraditionalForm]]],
 "]      = \[ScriptL][p1]  ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], "2"], TraditionalForm]]],
 " +  \[ScriptL][p2] 2 s (t-s) + \[ScriptL][p3] ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["s", "2"], TraditionalForm]]],
 "         = ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["s", "2"], TraditionalForm]]],
 "\n\n  \[ScriptM][\[Gamma][s,t]] =  \[ScriptM][p1 ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], "2"], TraditionalForm]]],
 " + p2 2 s (t-s) + p3",
 Cell[BoxData[
  FormBox[
   RowBox[{" ", 
    SuperscriptBox["s", "2"]}], TraditionalForm]]],
 "]  = \[ScriptM][p1]  ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], "2"], TraditionalForm]]],
 " +  \[ScriptM][p2] 2 s (t-s) + \[ScriptM][p3] ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["s", "2"], TraditionalForm]]],
 "   = ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], "2"], TraditionalForm]]],
 "\n\nLooking at \[ScriptK], note that the values of \[ScriptK][p1], \
\[ScriptK][p2], \[ScriptK][p3] are respectively the coefficients of ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], "2"], TraditionalForm]]],
 ", 2 (t-s) s, ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["s", "2"], TraditionalForm]]],
 " of the Bernstein representation of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], " ", "s"}], TraditionalForm]]],
 ". \n\nSo, we can obtain the values of  \[ScriptK], \[ScriptL], \[ScriptM] \
evaluated at the control points by a simple change of basis on the \
polynomials ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], " ", "s"}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["s", "2"], TraditionalForm]]],
 ", and ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"t", "-", "s"}], ")"}], "2"], TraditionalForm]]],
 ". \n\nThese polynomials are always the same for conics. So we can \
precompute them."
}], "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"bb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"s", ",", "t"}], "}"}], ",", "2"}], "]"}], ".", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1", "2"], ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], "}"}]}], " ", "//", " ", 
  "Simplify"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"s", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "s"}], "+", "t"}], ")"}]}], ",", 
   SuperscriptBox["s", "2"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"s", "-", "t"}], ")"}], "2"]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"0", ",", "0", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      FractionBox["1", "2"], ",", "0", ",", "0"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], "}"}], "//", 
  "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0", "0", "1"},
     {
      FractionBox["1", "2"], "0", "0"},
     {"0", "1", "0"}
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
 "To solve for the coefficients {ka,kb,kc} for k, note that \n\n",
 Cell[BoxData[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"x0", "y0", "w0"},
     {"x1", "y1", "w1"},
     {"x2", "y2", "w2"}
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
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]]],
 ".",
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", 
    TagBox[GridBox[{
       {"ka"},
       {"kb"},
       {"kc"}
      },
      GridBoxAlignment->{
       "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
        "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.5599999999999999]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}],
     Column], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.694726150034741*^9}],
 " = ",
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", 
    TagBox[GridBox[{
       {
        RowBox[{"k", "[", "p0", "]"}]},
       {
        RowBox[{"k", "[", "p1", "]"}]},
       {
        RowBox[{"k", "[", "p2", "]"}]}
      },
      GridBoxAlignment->{
       "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
        "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.5599999999999999]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}],
     Column], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{{3.694726150034741*^9, 3.694726162939472*^9}}],
 "\n  \nSo \n\n ",
 Cell[BoxData[
  TagBox[
   RowBox[{
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"x0", "y0", "w0"},
       {"x1", "y1", "w1"},
       {"x2", "y2", "w2"}
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
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}], 
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"ka", "la", "ma"},
       {"kb", "lb", "mb"},
       {"kc", "lc", "mc"}
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
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.694726222732287*^9}],
 " = ",
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       RowBox[{"k", "[", "p0", "]"}], 
       RowBox[{"l", "[", "p0", "]"}], 
       RowBox[{"m", "[", "p0", "]"}]},
      {
       RowBox[{"k", "[", "p1", "]"}], 
       RowBox[{"l", "[", "p1", "]"}], 
       RowBox[{"m", "[", "p1", "]"}]},
      {
       RowBox[{"k", "[", "p2", "]"}], 
       RowBox[{"l", "[", "p2", "]"}], 
       RowBox[{"m", "[", "p2", "]"}]}
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
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.694726324131054*^9}],
 "= ",
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"0", "0", "1"},
      {
       FractionBox["1", "2"], "0", "0"},
      {"0", "1", "0"}
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
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.694726427709372*^9}],
 "\n \n and therefore\n \n  ",
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"ka", "la", "ma"},
      {"kb", "lb", "mb"},
      {"kc", "lc", "mc"}
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
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.694726222732287*^9}],
 " = ",
 Cell[BoxData[
  TagBox[
   RowBox[{
    RowBox[{"Inverse", "[", 
     RowBox[{"(", "\[NoBreak]", GridBox[{
        {"x0", "y0", "w0"},
        {"x1", "y1", "w1"},
        {"x2", "y2", "w2"}
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
           Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}], "]"}], 
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {
        RowBox[{"k", "[", "p0", "]"}], 
        RowBox[{"l", "[", "p0", "]"}], 
        RowBox[{"m", "[", "p0", "]"}]},
       {
        RowBox[{"k", "[", "p1", "]"}], 
        RowBox[{"l", "[", "p1", "]"}], 
        RowBox[{"m", "[", "p1", "]"}]},
       {
        RowBox[{"k", "[", "p2", "]"}], 
        RowBox[{"l", "[", "p2", "]"}], 
        RowBox[{"m", "[", "p2", "]"}]}
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
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.694726324131054*^9}],
 " = ",
 Cell[BoxData[
  TagBox[
   RowBox[{
    RowBox[{"Inverse", "[", 
     RowBox[{"(", "\[NoBreak]", GridBox[{
        {"x0", "y0", "w0"},
        {"x1", "y1", "w1"},
        {"x2", "y2", "w2"}
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
           Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}], "]"}], 
    TagBox[
     RowBox[{"(", "\[NoBreak]", GridBox[{
        {"0", "0", "1"},
        {
         FractionBox["1", "2"], "0", "0"},
        {"0", "1", "0"}
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
           Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
     Function[BoxForm`e$, 
      MatrixForm[BoxForm`e$]]]}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.694726324131054*^9}]
}], "Text"],

Cell["\<\
As usual, we avoid computing inverses. We can do that because multiplying \
k,l,m by the same constant (the determinant) does not change the sign of \
k^2-lm.\
\>", "Text"],

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

Cell[BoxData[
 RowBox[{
  RowBox[{"implicitklm", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", "y0_", ",", "w0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_", ",", "w1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_", ",", "w2_"}], "}"}]}], "}"}]}], "]"}], " ", 
  ":=", 
  RowBox[{
   RowBox[{"adjugate", "[", "m", "]"}], ".", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1", "2"], ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "1", ",", "0"}], "}"}]}], "}"}], " "}]}]], "Input",
 InitializationCell->True],

Cell["\<\
Here is the function that evaluates the implicit form given k,l,m.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"k2lmevaluate", "[", 
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
     RowBox[{"klmp", "=", " ", 
      RowBox[{"p", ".", "klm"}]}], "}"}], ",", 
    RowBox[{
     RowBox[{
      RowBox[{"klmp", "[", 
       RowBox[{"[", "1", "]"}], "]"}], "^", "2"}], "-", 
     RowBox[{
      RowBox[{"klmp", "[", 
       RowBox[{"[", "2", "]"}], "]"}], " ", 
      RowBox[{"klmp", "[", 
       RowBox[{"[", "3", "]"}], "]"}]}]}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["Here is the animation.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
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
          RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], ",", " ", 
     RowBox[{"ws", " ", "=", " ", "1"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", " ", 
         RowBox[{"N", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{
              RowBox[{"pt", "[", 
               RowBox[{"[", "2", "]"}], "]"}], ",", "w"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "]"}]}], "}"}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"klm", " ", "=", 
           RowBox[{"implicitklm", "[", "m", "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"ContourPlot", "[", 
            RowBox[{
             RowBox[{"k2lmevaluate", "[", 
              RowBox[{"klm", ",", 
               RowBox[{"{", 
                RowBox[{"x", ",", "y", ",", "1"}], "}"}]}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", 
               RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"y", ",", 
               RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
             RowBox[{"ColorFunction", "\[Rule]", "\"\<BeachColors\>\""}], ",",
              " ", 
             RowBox[{"Frame", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{"p2e", "[", 
              RowBox[{
               RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
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
             RowBox[{"Dashed", ",", " ", 
              RowBox[{"Line", "[", 
               RowBox[{"Append", "[", 
                RowBox[{"pt", ",", 
                 RowBox[{"First", "[", "pt", "]"}]}], "]"}], "]"}]}], "}"}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", "\[IndentingNewLine]", 
            RowBox[{"Map", "[", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{
               RowBox[{"Module", "[", 
                RowBox[{
                 RowBox[{"{", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"t", " ", "=", " ", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
                   "\[IndentingNewLine]", 
                   RowBox[{"p1", " ", "=", " ", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
                   "\[IndentingNewLine]", 
                   RowBox[{"p2", " ", "=", " ", 
                    RowBox[{"#", "[", 
                    RowBox[{"[", "3", "]"}], "]"}]}]}], "}"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"Text", "[", 
                  RowBox[{
                   RowBox[{"Style", "[", 
                    RowBox[{"t", ",", 
                    RowBox[{"FontSize", "\[Rule]", "Large"}]}], "]"}], ",", 
                   " ", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"p1", "+", "p2"}], ")"}], "/", "2"}], " ", "+", 
                    " ", 
                    RowBox[{
                    RowBox[{"Cross", "[", 
                    RowBox[{"p1", "-", "p2"}], "]"}], "/", 
                    RowBox[{"Norm", "[", 
                    RowBox[{"Cross", "[", 
                    RowBox[{"p1", "-", "p2"}], "]"}], "]"}]}]}]}], "]"}]}], 
                "]"}], "&"}], ",", "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"\"\<\[ScriptK]\>\"", ",", " ", 
                  RowBox[{"pt", "[", 
                   RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
                  RowBox[{"pt", "[", 
                   RowBox[{"[", "3", "]"}], "]"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"\"\<\[ScriptL]\>\"", ",", " ", 
                  RowBox[{"pt", "[", 
                   RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
                  RowBox[{"pt", "[", 
                   RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"\"\<\[ScriptM]\>\"", ",", " ", 
                  RowBox[{"pt", "[", 
                   RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
                  RowBox[{"pt", "[", 
                   RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "}"}]}], "]"}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}]}], 
      "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w", ",", " ", "ws"}], "}"}], ",", "0", ",", " ", "10"}], 
      "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
    6, -3}}, $CellContext`w$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, 5}, {6, -3}}}, Automatic}, {{
       Hold[$CellContext`w$$], 1}, 0, 10}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`w$495$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
         6, -3}}, $CellContext`w$$ = 1}, "ControllerVariables" :> {
        Hold[$CellContext`w$$, $CellContext`w$495$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Module[{$CellContext`m$ = N[{
            $CellContext`e2p[
             Part[$CellContext`pt$$, 1]], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 2], $CellContext`w$$], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 3]]}]}, 
        Module[{$CellContext`klm$ = \
$CellContext`implicitklm[$CellContext`m$]}, 
         Show[
          ContourPlot[
           $CellContext`k2lmevaluate[$CellContext`klm$, {$CellContext`x, \
$CellContext`y, 1}], {$CellContext`x, -10, 10}, {$CellContext`y, -10, 10}, 
           ColorFunction -> "BeachColors", Frame -> False], 
          ParametricPlot[
           $CellContext`p2e[
            Dot[
             $CellContext`bb2[$CellContext`t], $CellContext`m$]], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Thick, Axes -> False], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], 
          Graphics[{Dashed, 
            Line[
             Append[$CellContext`pt$$, 
              First[$CellContext`pt$$]]]}], 
          Graphics[
           Map[
           Module[{$CellContext`t = Part[#, 1], $CellContext`p1 = 
              Part[#, 2], $CellContext`p2 = Part[#, 3]}, 
             Text[
              
              Style[$CellContext`t, FontSize -> 
               Large], ($CellContext`p1 + $CellContext`p2)/2 + 
              Cross[$CellContext`p1 - $CellContext`p2]/Norm[
                Cross[$CellContext`p1 - $CellContext`p2]]]]& , {{"\[ScriptK]", 
              Part[$CellContext`pt$$, 1], 
              Part[$CellContext`pt$$, 3]}, {"\[ScriptL]", 
              Part[$CellContext`pt$$, 2], 
              Part[$CellContext`pt$$, 1]}, {"\[ScriptM]", 
              Part[$CellContext`pt$$, 3], 
              Part[$CellContext`pt$$, 2]}}]], ImageSize -> Large]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, 5}, {6, -3}}}, 
         Automatic, ControlType -> Locator}, {{$CellContext`w$$, 1}, 0, 10}}, 
      "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}, 
         Optional[
          Pattern[$CellContext`w, 
           Blank[]], 
          1]] := {$CellContext`w $CellContext`x, $CellContext`w \
$CellContext`y, $CellContext`w}, $CellContext`implicitklm[
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
             Blank[]]}}]] := Dot[
         $CellContext`adjugate[$CellContext`m], {{0, 0, 1}, {1/2, 0, 0}, {0, 
          1, 0}}], $CellContext`adjugate[{{
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
$CellContext`e}}, $CellContext`k2lmevaluate[
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
         Part[$CellContext`klmp, 1]^2 - Part[$CellContext`klmp, 2] 
         Part[$CellContext`klmp, 3]], $CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, $CellContext`bb2[
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
Now, all we have to do is find the correct orientation for the implicit form. \
Assuming the segment has been monotonized, we evaluate the partial derivative \
relative to x at the segment midpoint. If it is positve, we are good. If it \
is negative, we flip the sign.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"klm", " ", "=", 
       RowBox[{"implicitklm", "[", 
        RowBox[{"ppoints", "[", "2", "]"}], "]"}]}], "}"}], ",", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pm", "=", 
         RowBox[{
          RowBox[{"bb2", "[", 
           RowBox[{"1", "/", "2"}], "]"}], ".", 
          RowBox[{"ppoints", "[", "2", "]"}]}]}], "}"}], ",", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"D", "[", 
          RowBox[{
           RowBox[{"k2lmevaluate", "[", 
            RowBox[{"klm", ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", "y", ",", "w"}], "}"}]}], "]"}], ",", "x"}], 
          "]"}], " ", "/.", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"x", "\[Rule]", 
            RowBox[{"pm", "[", 
             RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
           RowBox[{"y", "\[Rule]", 
            RowBox[{"pm", "[", 
             RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
           RowBox[{"w", "\[Rule]", 
            RowBox[{"pm", "[", 
             RowBox[{"[", "3", "]"}], "]"}]}]}], "}"}]}], ")"}]}], " ", 
      "]"}]}], "]"}], " ", "/.", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"x0", "\[Rule]", "0"}], ",", " ", 
     RowBox[{"y0", "\[Rule]", "0"}], ",", 
     RowBox[{"w0", "\[Rule]", "1"}], ",", " ", 
     RowBox[{"w2", "\[Rule]", "1"}]}], "}"}]}], "//", 
  "FullSimplify"}]], "Input"],

Cell[BoxData[
 RowBox[{
  FractionBox["1", "4"], " ", 
  RowBox[{"(", 
   RowBox[{"1", "+", "w1"}], ")"}], " ", "y2", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "x2"}], " ", "y1"}], "+", 
    RowBox[{"x1", " ", "y2"}]}], ")"}]}]], "Output"]
}, Open  ]],

Cell["\<\
There is a much more direct way for implicitizing a rational quadratic. We \
want a polynomial that is zero when there exists a t such that x(t)/w(t) = x\
\[CloseCurlyQuote] and y(t)/w(t) = y\[CloseCurlyQuote]. This means that the \
polynomials x(t) - x\[CloseCurlyQuote] w(t) and y(t) - y\[CloseCurlyQuote] \
w(t) have a common root for some value of t. This happens if and only if \
their resultant is zero. But the resultant is simply a quadratic polynomial \
in x\[CloseCurlyQuote],y\[CloseCurlyQuote]. It is the implicit equation for \
the rational quadratic polynomial.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"f", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", "y0_", ",", "w0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_", ",", "w1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_", ",", "w2_"}], "}"}]}], "}"}]}], "]"}], " ", 
  ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"p", " ", "=", " ", 
      RowBox[{
       RowBox[{"bb2", "[", "t", "]"}], ".", "m"}]}], "}"}], ",", " ", "p"}], 
   "]"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"f", "[", 
  RowBox[{"ppoints", "[", "2", "]"}], "]"}]], "Input"],

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
     SuperscriptBox["t", "2"], " ", "y2"}]}], ",", 
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "t"}], ")"}], "2"], " ", "w0"}], "+", 
    RowBox[{"2", " ", 
     RowBox[{"(", 
      RowBox[{"1", "-", "t"}], ")"}], " ", "t", " ", "w1"}], "+", 
    RowBox[{
     SuperscriptBox["t", "2"], " ", "w2"}]}]}], "}"}]], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicitresultant", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", "y0_", ",", "w0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_", ",", "w1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_", ",", "w2_"}], "}"}]}], "}"}]}], "]"}], " ", 
  ":=", " ", 
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
             RowBox[{"[", "1", "]"}], "]"}], "-", " ", 
            RowBox[{"x", " ", 
             RowBox[{"p", "[", 
              RowBox[{"[", "3", "]"}], "]"}]}]}], ",", " ", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"[", "2", "]"}], "]"}], "-", 
            RowBox[{"y", " ", 
             RowBox[{"p", "[", 
              RowBox[{"[", "3", "]"}], "]"}]}]}], ",", " ", "t"}], "]"}]}], 
        "]"}]}], "]"}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["Here is what this looks like", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"implicitresultant", "[", 
     RowBox[{"ppoints", "[", "2", "]"}], "]"}], "[", 
    RowBox[{"x", ",", "y"}], "]"}], " ", "/.", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"x0", "\[Rule]", "0"}], ",", " ", 
     RowBox[{"y0", "\[Rule]", "0"}], ",", 
     RowBox[{"w0", "\[Rule]", "1"}], ",", " ", 
     RowBox[{"w2", "\[Rule]", "1"}]}], "}"}]}], "//", 
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
        RowBox[{"4", " ", "w1", " ", "x1", " ", "x2"}], "+", 
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
        RowBox[{"4", " ", "w1", " ", "x2", " ", "y1"}], "+", 
        RowBox[{"4", " ", "w1", " ", "x1", " ", "y2"}], "-", 
        RowBox[{"2", " ", "x2", " ", "y2"}]}], ")"}]}], "+", 
     RowBox[{"x", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"4", " ", 
         SuperscriptBox["y1", "2"]}], "-", 
        RowBox[{"4", " ", "w1", " ", "y1", " ", "y2"}], "+", 
        SuperscriptBox["y2", "2"]}], ")"}]}]}], ")"}]}]}]], "Output"]
}, Open  ]],

Cell["And the sign test becomes", "Text"],

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
         RowBox[{"ppoints", "[", "2", "]"}]}]}], ",", " ", 
       RowBox[{"pm", "=", 
        RowBox[{
         RowBox[{"bb2", "[", 
          RowBox[{"1", "/", "2"}], "]"}], ".", 
         RowBox[{"ppoints", "[", "2", "]"}]}]}]}], "}"}], ",", " ", 
     RowBox[{
      RowBox[{"D", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"y", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"4", " ", 
                SuperscriptBox["x1", "2"]}], "-", 
               RowBox[{"4", " ", "w1", " ", "x1", " ", "x2"}], "+", 
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
               RowBox[{"4", " ", "w1", " ", "x2", " ", "y1"}], "+", 
               RowBox[{"4", " ", "w1", " ", "x1", " ", "y2"}], "-", 
               RowBox[{"2", " ", "x2", " ", "y2"}]}], ")"}]}], "+", 
            RowBox[{"x", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"4", " ", 
                SuperscriptBox["y1", "2"]}], "-", 
               RowBox[{"4", " ", "w1", " ", "y1", " ", "y2"}], "+", 
               SuperscriptBox["y2", "2"]}], ")"}]}]}], ")"}]}]}], ",", "x"}], 
       "]"}], "/.", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"x", "\[Rule]", 
         RowBox[{
          RowBox[{"pm", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "/", 
          RowBox[{"pm", "[", 
           RowBox[{"[", "3", "]"}], "]"}]}]}], ",", " ", 
        RowBox[{"y", "\[Rule]", 
         RowBox[{
          RowBox[{"pm", "[", 
           RowBox[{"[", "2", "]"}], "]"}], "/", 
          RowBox[{"pm", "[", 
           RowBox[{"[", "3", "]"}], "]"}]}]}]}], "}"}]}]}], "]"}], " ", "/.", 
   " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"x0", "\[Rule]", "0"}], ",", " ", 
     RowBox[{"y0", "\[Rule]", "0"}], ",", " ", 
     RowBox[{"w0", "\[Rule]", "1"}], ",", " ", 
     RowBox[{"w2", "\[Rule]", "1"}]}], "}"}]}], " ", "//", " ", 
  "FullSimplify"}]], "Input"],

Cell[BoxData[
 RowBox[{"2", " ", "y2", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "x2"}], " ", "y1"}], "+", 
    RowBox[{"x1", " ", "y2"}]}], ")"}]}]], "Output"]
}, Open  ]],

Cell["Here is the animation", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
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
          RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], ",", " ", 
     RowBox[{"ws", " ", "=", " ", "1"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", " ", 
         RowBox[{"N", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{
              RowBox[{"pt", "[", 
               RowBox[{"[", "2", "]"}], "]"}], ",", "w"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "3", "]"}], "]"}], "]"}]}], "}"}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", " ", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"f", " ", "=", " ", 
           RowBox[{"implicitresultant", "[", "m", "]"}]}], "}"}], ",", 
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
               RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
             RowBox[{"ColorFunction", "\[Rule]", "\"\<BeachColors\>\""}], ",",
              " ", 
             RowBox[{"Frame", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{"p2e", "[", 
              RowBox[{
               RowBox[{"bb2", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
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
           RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}]}], 
      "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w", ",", " ", "ws"}], "}"}], ",", "0", ",", " ", "10"}], 
      "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
    6, -3}}, $CellContext`w$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-6, -3}, {0, 5}, {6, -3}}}, Automatic}, {{
       Hold[$CellContext`w$$], 1}, 0, 10}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`w$715$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-6, -3}, {0, 5}, {
         6, -3}}, $CellContext`w$$ = 1}, "ControllerVariables" :> {
        Hold[$CellContext`w$$, $CellContext`w$715$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Module[{$CellContext`m$ = N[{
            $CellContext`e2p[
             Part[$CellContext`pt$$, 1]], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 2], $CellContext`w$$], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 3]]}]}, 
        Module[{$CellContext`f$ = \
$CellContext`implicitresultant[$CellContext`m$]}, 
         Show[
          ContourPlot[
           $CellContext`f$[$CellContext`x, $CellContext`y], {$CellContext`x, \
-10, 10}, {$CellContext`y, -10, 10}, ColorFunction -> "BeachColors", Frame -> 
           False], 
          ParametricPlot[
           $CellContext`p2e[
            Dot[
             $CellContext`bb2[$CellContext`t], $CellContext`m$]], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Thick, Axes -> False], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i - 1], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {0, 
              1}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]], ImageSize -> Large]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-6, -3}, {0, 5}, {6, -3}}}, 
         Automatic, ControlType -> Locator}, {{$CellContext`w$$, 1}, 0, 10}}, 
      "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}, 
         Optional[
          Pattern[$CellContext`w, 
           Blank[]], 
          1]] := {$CellContext`w $CellContext`x, $CellContext`w \
$CellContext`y, $CellContext`w}, $CellContext`implicitresultant[
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
             Blank[]]}}]] := Function[{$CellContext`x, $CellContext`y}, 
         Evaluate[
          Module[{$CellContext`t}, 
           Module[{$CellContext`p = Dot[
               $CellContext`bb2[$CellContext`t], $CellContext`m]}, 
            Resultant[
            Part[$CellContext`p, 1] - $CellContext`x Part[$CellContext`p, 3], 
             Part[$CellContext`p, 2] - $CellContext`y 
             Part[$CellContext`p, 3], $CellContext`t]]]]], $CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, \
$CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, Attributes[Subscript] = {NHoldRest}}; 
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
WindowSize->{1221, 1314},
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
Cell[2729, 79, 323, 9, 47, "Text"],
Cell[3055, 90, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[3332, 101, 274, 9, 48, "Input",
 InitializationCell->True],
Cell[3609, 112, 94, 2, 29, "Text"],
Cell[3706, 116, 774, 26, 48, "Input",
 InitializationCell->True],
Cell[4483, 144, 105, 3, 29, "Text"],
Cell[4591, 149, 711, 23, 48, "Input",
 InitializationCell->True],
Cell[5305, 174, 37, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[5367, 178, 538, 17, 32, "Input"],
Cell[5908, 197, 507, 14, 32, "Output"]
}, Open  ]],
Cell[6430, 214, 62, 0, 29, "Text"],
Cell[6495, 216, 183, 5, 48, "Input",
 InitializationCell->True],
Cell[6681, 223, 98, 2, 29, "Text"],
Cell[6782, 227, 294, 10, 48, "Input",
 InitializationCell->True],
Cell[7079, 239, 70, 0, 29, "Text"],
Cell[7152, 241, 343, 11, 48, "Input",
 InitializationCell->True],
Cell[7498, 254, 142, 3, 29, "Text"],
Cell[7643, 259, 611, 18, 48, "Input",
 InitializationCell->True],
Cell[8257, 279, 64, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[8346, 283, 103, 2, 32, "Input"],
Cell[8452, 287, 626, 18, 67, "Output"]
}, Open  ]],
Cell[9093, 308, 63, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[9181, 312, 5974, 151, 406, "Input",
 InitializationCell->True],
Cell[15158, 465, 4316, 98, 691, "Output"]
}, Open  ]],
Cell[19489, 566, 51, 0, 29, "Text"],
Cell[19543, 568, 4429, 100, 663, "Text"],
Cell[23975, 670, 950, 28, 287, "Text"],
Cell[24928, 700, 115, 3, 29, "Text"],
Cell[25046, 705, 3322, 118, 260, "Text"],
Cell[CellGroupData[{
Cell[28393, 827, 475, 16, 49, "Input"],
Cell[28871, 845, 281, 10, 35, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29189, 860, 327, 11, 49, "Input"],
Cell[29519, 873, 642, 19, 71, "Output"]
}, Open  ]],
Cell[30176, 895, 8976, 266, 343, "Text"],
Cell[39155, 1163, 182, 4, 29, "Text"],
Cell[39340, 1169, 1489, 52, 70, "Input",
 InitializationCell->True],
Cell[40832, 1223, 759, 24, 65, "Input",
 InitializationCell->True],
Cell[41594, 1249, 90, 2, 29, "Text"],
Cell[41687, 1253, 964, 31, 70, "Input",
 InitializationCell->True],
Cell[42654, 1286, 38, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[42717, 1290, 7063, 173, 448, "Input",
 InitializationCell->True],
Cell[49783, 1465, 7600, 181, 691, "Output"]
}, Open  ]],
Cell[57398, 1649, 292, 5, 47, "Text"],
Cell[CellGroupData[{
Cell[57715, 1658, 1512, 44, 75, "Input"],
Cell[59230, 1704, 262, 9, 48, "Output"]
}, Open  ]],
Cell[59507, 1716, 599, 9, 65, "Text"],
Cell[60109, 1727, 573, 19, 32, "Input"],
Cell[CellGroupData[{
Cell[60707, 1750, 88, 2, 32, "Input"],
Cell[60798, 1754, 965, 32, 35, "Output"]
}, Open  ]],
Cell[61778, 1789, 1415, 42, 70, "Input",
 InitializationCell->True],
Cell[63196, 1833, 44, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[63265, 1837, 561, 17, 32, "Input"],
Cell[63829, 1856, 1258, 36, 35, "Output"]
}, Open  ]],
Cell[65102, 1895, 41, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[65168, 1899, 2810, 77, 81, "Input"],
Cell[67981, 1978, 183, 6, 32, "Output"]
}, Open  ]],
Cell[68179, 1987, 37, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[68241, 1991, 3959, 104, 259, "Input",
 InitializationCell->True],
Cell[72203, 2097, 4809, 111, 691, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature mvptcHGZQ1qHgC1fSN9wJV2Y *)
