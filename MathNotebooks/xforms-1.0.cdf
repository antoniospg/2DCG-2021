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
NotebookDataLength[     82660,       2430]
NotebookOptionsPosition[     78637,       2278]
NotebookOutlinePosition[     79085,       2298]
CellTagsIndexPosition[     79042,       2295]
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

Cell["Here is a star with n sides.", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"star", "[", 
   RowBox[{"n_", ",", " ", "s_"}], "]"}], " ", ":=", " ", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Sin", "[", 
       RowBox[{"2", " ", "Pi", " ", "i", " ", 
        RowBox[{"s", " ", "/", " ", "n"}]}], "]"}], ",", " ", 
      RowBox[{"Cos", "[", 
       RowBox[{"2", " ", "Pi", " ", "i", " ", 
        RowBox[{"s", " ", "/", " ", "n"}]}], "]"}]}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"i", ",", " ", "1", ",", " ", "n"}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"star", "[", 
   RowBox[{"5", ",", "3"}], "]"}], " ", "//", "N"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.5877852522924731`"}], ",", 
     RowBox[{"-", "0.8090169943749475`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.9510565162951535`", ",", "0.30901699437494745`"}], "}"}], ",", 
   
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.9510565162951535`"}], ",", "0.30901699437494745`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.5877852522924731`", ",", 
     RowBox[{"-", "0.8090169943749475`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.`", ",", "1.`"}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", 
  RowBox[{"Graphics", "[", 
   RowBox[{"Polygon", "[", 
    RowBox[{"star", "[", 
     RowBox[{"5", ",", " ", "2"}], "]"}], "]"}], "]"}], "]"}]], "Input"],

Cell[BoxData[
 GraphicsBox[
  PolygonBox[
   NCache[{{(Rational[5, 8] + Rational[-1, 8] 5^Rational[1, 2])^
      Rational[1, 2], 
      Rational[1, 4] (-1 - 5^
       Rational[1, 2])}, {-(Rational[5, 8] + Rational[1, 8] 5^Rational[1, 2])^
       Rational[1, 2], 
      Rational[1, 4] (-1 + 5^Rational[1, 2])}, {(Rational[5, 8] + 
       Rational[1, 8] 5^Rational[1, 2])^Rational[1, 2], 
      Rational[1, 4] (-1 + 
       5^Rational[1, 2])}, {-(Rational[5, 8] + 
        Rational[-1, 8] 5^Rational[1, 2])^Rational[1, 2], 
      Rational[1, 4] (-1 - 5^Rational[1, 2])}, {0, 1}}, {{
     0.5877852522924731, -0.8090169943749475}, {-0.9510565162951535, 
     0.30901699437494745`}, {0.9510565162951535, 
     0.30901699437494745`}, {-0.5877852522924731, -0.8090169943749475}, {0, 
     1}}]]]], "Output"]
}, Open  ]],

Cell["\<\
Here are functions that move Euclidean points to Projective points and back.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"e2p", "[", 
   RowBox[{"{", 
    RowBox[{"x_", ",", " ", "y_"}], "}"}], "]"}], " ", ":=", " ", 
  RowBox[{"{", 
   RowBox[{"x", ",", " ", "y", ",", " ", "1"}], "}"}]}]], "Input",
 InitializationCell->True],

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

Cell["Here is the rotation matrix", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"rotate", "[", "a_", "]"}], " ", ":=", "  ", 
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       RowBox[{"Cos", "[", "a", "]"}], 
       RowBox[{"-", 
        RowBox[{"Sin", "[", "a", "]"}]}], "0"},
      {
       RowBox[{"Sin", "[", "a", "]"}], 
       RowBox[{"Cos", "[", "a", "]"}], "0"},
      {"0", "0", "1"}
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
    MatrixForm[BoxForm`e$]]]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Show", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Graphics", "[", 
      RowBox[{
       RowBox[{"Polygon", "[", 
        RowBox[{"Map", "[", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"p2e", "[", 
            RowBox[{
             RowBox[{"rotate", "[", "a", "]"}], ".", 
             RowBox[{"e2p", "[", "#", "]"}]}], "]"}], "&"}], ",", 
          RowBox[{"star", "[", 
           RowBox[{"5", ",", "2"}], "]"}]}], "]"}], "]"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"2", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", " ", "1"}], "}"}]}], "}"}]}]}]}], "]"}],
      ",", 
     RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a", ",", "0"}], "}"}], ",", " ", "0", ",", " ", 
     RowBox[{"2", "Pi"}]}], "}"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`a$$], 0}, 0, 2 Pi}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`a$812$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`a$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$812$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[
         Polygon[
          Map[$CellContext`p2e[
            Dot[
             $CellContext`rotate[$CellContext`a$$], 
             $CellContext`e2p[#]]]& , 
           $CellContext`star[5, 2]]], PlotRange -> 2 {{-1, 1}, {-1, 1}}], 
        ImageSize -> Large], 
      "Specifications" :> {{{$CellContext`a$$, 0}, 0, 2 Pi}}, "Options" :> {},
       "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{621., {331., 337.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, $CellContext`rotate[
         Pattern[$CellContext`a, 
          Blank[]]] := {{
          Cos[$CellContext`a], -Sin[$CellContext`a], 0}, {
          Sin[$CellContext`a], 
          Cos[$CellContext`a], 0}, {0, 0, 1}}, $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 
         1}, $CellContext`star[
         Pattern[$CellContext`n, 
          Blank[]], 
         Pattern[$CellContext`s, 
          Blank[]]] := Table[{
          Sin[2 Pi $CellContext`i ($CellContext`s/$CellContext`n)], 
          Cos[
          2 Pi $CellContext`i ($CellContext`s/$CellContext`n)]}, \
{$CellContext`i, 1, $CellContext`n}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["Here is the translation matrix", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"translate", "[", 
   RowBox[{"{", 
    RowBox[{"tx_", ",", " ", "ty_"}], "}"}], "]"}], " ", ":=", "  ", 
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"1", "0", "tx"},
      {"0", "1", "ty"},
      {"0", "0", "1"}
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
    MatrixForm[BoxForm`e$]]]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Show", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Graphics", "[", 
      RowBox[{
       RowBox[{"Polygon", "[", 
        RowBox[{"Map", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"p2e", "[", 
            RowBox[{
             RowBox[{"translate", "[", "p", "]"}], ".", 
             RowBox[{"e2p", "[", "#", "]"}]}], "]"}], "&"}], ",", 
          RowBox[{"star", "[", 
           RowBox[{"5", ",", "2"}], "]"}]}], "]"}], "]"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"2", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", " ", "1"}], "}"}]}], "}"}]}]}]}], "]"}],
      ",", 
     RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0"}], "}"}]}], "}"}], ",", " ", "Locator"}], 
    "}"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = {0, 0}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p$$], {0, 0}}, Automatic}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`p$$ = {0, 0}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[
         Polygon[
          Map[$CellContext`p2e[
            Dot[
             $CellContext`translate[$CellContext`p$$], 
             $CellContext`e2p[#]]]& , 
           $CellContext`star[5, 2]]], PlotRange -> 2 {{-1, 1}, {-1, 1}}], 
        ImageSize -> Large], 
      "Specifications" :> {{{$CellContext`p$$, {0, 0}}, Automatic, 
         ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {318., 324.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, $CellContext`translate[{
          Pattern[$CellContext`tx, 
           Blank[]], 
          Pattern[$CellContext`ty, 
           Blank[]]}] := {{1, 0, $CellContext`tx}, {0, 1, $CellContext`ty}, {
         0, 0, 1}}, $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 
         1}, $CellContext`star[
         Pattern[$CellContext`n, 
          Blank[]], 
         Pattern[$CellContext`s, 
          Blank[]]] := Table[{
          Sin[2 Pi $CellContext`i ($CellContext`s/$CellContext`n)], 
          Cos[
          2 Pi $CellContext`i ($CellContext`s/$CellContext`n)]}, \
{$CellContext`i, 1, $CellContext`n}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["Here is the scaling matrix", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"scale", "[", 
   RowBox[{"{", 
    RowBox[{"sx_", ",", " ", "sy_"}], "}"}], "]"}], " ", ":=", "  ", 
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"sx", "0", "0"},
      {"0", "sy", "0"},
      {"0", "0", "1"}
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
    MatrixForm[BoxForm`e$]]]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"Graphics", "[", 
       RowBox[{
        RowBox[{"Polygon", "[", 
         RowBox[{"Map", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"p2e", "[", 
             RowBox[{
              RowBox[{"scale", "[", 
               RowBox[{"{", 
                RowBox[{"sx", ",", " ", "sy"}], "}"}], "]"}], ".", 
              RowBox[{"e2p", "[", "#", "]"}]}], "]"}], "&"}], ",", 
           RowBox[{"star", "[", 
            RowBox[{"5", ",", "2"}], "]"}]}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"2", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "1"}], ",", " ", "1"}], "}"}]}], "}"}]}]}]}], 
       "]"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"sx", ",", "1"}], "}"}], ",", " ", 
      RowBox[{"1", "/", "2"}], ",", " ", "2"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"sy", ",", "1"}], "}"}], ",", " ", 
      RowBox[{"1", "/", "2"}], ",", " ", "2"}], "}"}]}], " ", "]"}], 
  "\[IndentingNewLine]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`sx$$ = 1, $CellContext`sy$$ = 1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`sx$$], 1}, 
      Rational[1, 2], 2}, {{
       Hold[$CellContext`sy$$], 1}, 
      Rational[1, 2], 2}}, Typeset`size$$ = {576., {286., 290.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`sx$863$$ = 0, $CellContext`sy$864$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`sx$$ = 1, $CellContext`sy$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`sx$$, $CellContext`sx$863$$, 0], 
        Hold[$CellContext`sy$$, $CellContext`sy$864$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[
         Polygon[
          Map[$CellContext`p2e[
            Dot[
             $CellContext`scale[{$CellContext`sx$$, $CellContext`sy$$}], 
             $CellContext`e2p[#]]]& , 
           $CellContext`star[5, 2]]], PlotRange -> 2 {{-1, 1}, {-1, 1}}], 
        ImageSize -> Large], "Specifications" :> {{{$CellContext`sx$$, 1}, 
         Rational[1, 2], 2}, {{$CellContext`sy$$, 1}, 
         Rational[1, 2], 2}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{621., {345., 351.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, $CellContext`scale[{
          Pattern[$CellContext`sx, 
           Blank[]], 
          Pattern[$CellContext`sy, 
           Blank[]]}] := {{$CellContext`sx, 0, 0}, {0, $CellContext`sy, 0}, {
         0, 0, 1}}, $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 
         1}, $CellContext`star[
         Pattern[$CellContext`n, 
          Blank[]], 
         Pattern[$CellContext`s, 
          Blank[]]] := Table[{
          Sin[2 Pi $CellContext`i ($CellContext`s/$CellContext`n)], 
          Cos[
          2 Pi $CellContext`i ($CellContext`s/$CellContext`n)]}, \
{$CellContext`i, 1, $CellContext`n}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
How do we rotate relative to a given point? We first translate the point to \
the origin, rotate around the origin, and then translate the origin back to \
the point. Here is what the matrix looks like:\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"translate", "[", 
    RowBox[{"{", 
     RowBox[{"tx", ",", " ", "ty"}], "}"}], "]"}], ".", 
   RowBox[{"rotate", "[", "a", "]"}], ".", 
   RowBox[{"translate", "[", 
    RowBox[{"-", 
     RowBox[{"{", 
      RowBox[{"tx", ",", " ", "ty"}], "}"}]}], "]"}]}], " ", "//", " ", 
  "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{"Cos", "[", "a", "]"}], 
      RowBox[{"-", 
       RowBox[{"Sin", "[", "a", "]"}]}], 
      RowBox[{"tx", "-", 
       RowBox[{"tx", " ", 
        RowBox[{"Cos", "[", "a", "]"}]}], "+", 
       RowBox[{"ty", " ", 
        RowBox[{"Sin", "[", "a", "]"}]}]}]},
     {
      RowBox[{"Sin", "[", "a", "]"}], 
      RowBox[{"Cos", "[", "a", "]"}], 
      RowBox[{"ty", "-", 
       RowBox[{"ty", " ", 
        RowBox[{"Cos", "[", "a", "]"}]}], "-", 
       RowBox[{"tx", " ", 
        RowBox[{"Sin", "[", "a", "]"}]}]}]},
     {"0", "0", "1"}
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
The matrix doesn\[CloseCurlyQuote]t look so bad. Here is an animation using \
this idea.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Show", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Graphics", "[", 
      RowBox[{
       RowBox[{"Polygon", "[", 
        RowBox[{"Map", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"p2e", "[", 
            RowBox[{
             RowBox[{"translate", "[", "p", "]"}], ".", 
             RowBox[{"rotate", "[", "a", "]"}], ".", 
             RowBox[{"translate", "[", 
              RowBox[{"-", "p"}], "]"}], ".", 
             RowBox[{"e2p", "[", "#", "]"}]}], "]"}], "&"}], ",", 
          RowBox[{"star", "[", 
           RowBox[{"5", ",", "2"}], "]"}]}], "]"}], "]"}], ",", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"2", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", " ", "1"}], "}"}]}], "}"}]}]}]}], "]"}],
      ",", 
     RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a", ",", "0"}], "}"}], ",", " ", "0", ",", " ", 
     RowBox[{"2", "Pi"}]}], "}"}], ",", 
   RowBox[{"{", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0"}], "}"}]}], "}"}], ",", " ", "Locator"}], 
    "}"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 0, $CellContext`p$$ = {0, 0}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`a$$], 0}, 0, 2 Pi}, {{
       Hold[$CellContext`p$$], {0, 0}}, Automatic}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`a$892$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 0, $CellContext`p$$ = {0, 0}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$892$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[
         Polygon[
          Map[$CellContext`p2e[
            Dot[
             $CellContext`translate[$CellContext`p$$], 
             $CellContext`rotate[$CellContext`a$$], 
             $CellContext`translate[-$CellContext`p$$], 
             $CellContext`e2p[#]]]& , 
           $CellContext`star[5, 2]]], PlotRange -> 2 {{-1, 1}, {-1, 1}}], 
        ImageSize -> Large], 
      "Specifications" :> {{{$CellContext`a$$, 0}, 0, 2 
         Pi}, {{$CellContext`p$$, {0, 0}}, Automatic, ControlType -> 
         Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {334., 340.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, $CellContext`translate[{
          Pattern[$CellContext`tx, 
           Blank[]], 
          Pattern[$CellContext`ty, 
           Blank[]]}] := {{1, 0, $CellContext`tx}, {0, 1, $CellContext`ty}, {
         0, 0, 1}}, $CellContext`rotate[
         Pattern[$CellContext`a, 
          Blank[]]] := {{
          Cos[$CellContext`a], -Sin[$CellContext`a], 0}, {
          Sin[$CellContext`a], 
          Cos[$CellContext`a], 0}, {0, 0, 1}}, $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 
         1}, $CellContext`star[
         Pattern[$CellContext`n, 
          Blank[]], 
         Pattern[$CellContext`s, 
          Blank[]]] := Table[{
          Sin[2 Pi $CellContext`i ($CellContext`s/$CellContext`n)], 
          Cos[
          2 Pi $CellContext`i ($CellContext`s/$CellContext`n)]}, \
{$CellContext`i, 1, $CellContext`n}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
How do we scale in a given direction? We first rotate so that direction is \
parallel to the x axis, then scale in the x direction, then rotate the x axis \
back to the original angle.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"rotate", "[", "a", "]"}], ".", 
   RowBox[{"scale", "[", 
    RowBox[{"{", 
     RowBox[{"sx", ",", " ", "sy"}], "}"}], "]"}], ".", 
   RowBox[{"rotate", "[", 
    RowBox[{"-", "a"}], "]"}]}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{"sx", " ", 
        SuperscriptBox[
         RowBox[{"Cos", "[", "a", "]"}], "2"]}], "+", 
       RowBox[{"sy", " ", 
        SuperscriptBox[
         RowBox[{"Sin", "[", "a", "]"}], "2"]}]}], 
      RowBox[{
       RowBox[{"sx", " ", 
        RowBox[{"Cos", "[", "a", "]"}], " ", 
        RowBox[{"Sin", "[", "a", "]"}]}], "-", 
       RowBox[{"sy", " ", 
        RowBox[{"Cos", "[", "a", "]"}], " ", 
        RowBox[{"Sin", "[", "a", "]"}]}]}], "0"},
     {
      RowBox[{
       RowBox[{"sx", " ", 
        RowBox[{"Cos", "[", "a", "]"}], " ", 
        RowBox[{"Sin", "[", "a", "]"}]}], "-", 
       RowBox[{"sy", " ", 
        RowBox[{"Cos", "[", "a", "]"}], " ", 
        RowBox[{"Sin", "[", "a", "]"}]}]}], 
      RowBox[{
       RowBox[{"sy", " ", 
        SuperscriptBox[
         RowBox[{"Cos", "[", "a", "]"}], "2"]}], "+", 
       RowBox[{"sx", " ", 
        SuperscriptBox[
         RowBox[{"Sin", "[", "a", "]"}], "2"]}]}], "0"},
     {"0", "0", "1"}
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
It doesn't look very pretty. But note that, in practice, you don\
\[CloseCurlyQuote]t ever need to form these expressions: you can simply form \
the rotation and scaling matrices and then multiply them (numerically, not \
algebraically).\
\>", "Text"],

Cell["\<\
Here is the corresponding animation. The red line shows the axis u. The blue \
shows axis v.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", " ", 
  RowBox[{
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"Graphics", "[", 
      RowBox[{"Polygon", "[", 
       RowBox[{"Map", "[", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"p2e", "[", 
           RowBox[{
            RowBox[{"rotate", "[", "a", "]"}], ".", 
            RowBox[{"scale", "[", 
             RowBox[{"{", 
              RowBox[{"su", ",", " ", "sv"}], "}"}], "]"}], ".", 
            RowBox[{"rotate", "[", 
             RowBox[{"-", "a"}], "]"}], ".", 
            RowBox[{"e2p", "[", "#", "]"}]}], "]"}], "&"}], ",", 
         RowBox[{"star", "[", 
          RowBox[{"5", ",", "2"}], "]"}]}], "]"}], "]"}], "]"}], ",", " ", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"u", " ", "=", " ", 
          RowBox[{"p2e", "[", 
           RowBox[{
            RowBox[{"rotate", "[", "a", "]"}], ".", 
            RowBox[{"{", 
             RowBox[{"1", ",", "0", ",", "1"}], "}"}]}], "]"}]}], ",", " ", 
         RowBox[{"v", " ", "=", " ", 
          RowBox[{"p2e", "[", 
           RowBox[{
            RowBox[{"rotate", "[", "a", "]"}], ".", 
            RowBox[{"{", 
             RowBox[{"0", ",", "1", ",", "1"}], "}"}]}], "]"}]}]}], "}"}], 
       ",", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<u\>\"", ",", "Large"}], "]"}], ",", 
            RowBox[{"1.1", " ", "u"}]}], "]"}], ",", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{"\"\<v\>\"", ",", "Large"}], "]"}], ",", " ", 
            RowBox[{"1.1", " ", "v"}]}], "]"}], ",", "Red", ",", " ", "Thick",
           ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}], ",", "u"}], "}"}], "]"}], ",", 
          " ", "Blue", ",", " ", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"0", ",", "0"}], "}"}], ",", "v"}], "}"}], "]"}]}], 
         "}"}], "]"}]}], "]"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"2", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", " ", "1"}], "}"}]}], "}"}]}]}]}], "]"}], 
   ",", " ", 
   RowBox[{"{", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a", ",", "0"}], "}"}], ",", " ", "0", ",", " ", 
     RowBox[{"2", "Pi"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"su", ",", "1"}], "}"}], ",", " ", 
     RowBox[{"1", "/", "2"}], ",", " ", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"sv", ",", "1"}], "}"}], ",", " ", 
     RowBox[{"1", "/", "2"}], ",", " ", "2"}], "}"}]}], " ", "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 0, $CellContext`su$$ = 
    1, $CellContext`sv$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`a$$], 0}, 0, 2 Pi}, {{
       Hold[$CellContext`su$$], 1}, 
      Rational[1, 2], 2}, {{
       Hold[$CellContext`sv$$], 1}, 
      Rational[1, 2], 2}}, Typeset`size$$ = {576., {286., 290.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`a$917$$ = 0, $CellContext`su$918$$ = 
    0, $CellContext`sv$919$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 0, $CellContext`su$$ = 
        1, $CellContext`sv$$ = 1}, "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$917$$, 0], 
        Hold[$CellContext`su$$, $CellContext`su$918$$, 0], 
        Hold[$CellContext`sv$$, $CellContext`sv$919$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[
         Polygon[
          Map[$CellContext`p2e[
            Dot[
             $CellContext`rotate[$CellContext`a$$], 
             $CellContext`scale[{$CellContext`su$$, $CellContext`sv$$}], 
             $CellContext`rotate[-$CellContext`a$$], 
             $CellContext`e2p[#]]]& , 
           $CellContext`star[5, 2]]]], 
        Module[{$CellContext`u = $CellContext`p2e[
            Dot[
             $CellContext`rotate[$CellContext`a$$], {1, 0, 
             1}]], $CellContext`v = $CellContext`p2e[
            Dot[
             $CellContext`rotate[$CellContext`a$$], {0, 1, 1}]]}, 
         Graphics[{
           Text[
            Style["u", Large], 1.1 $CellContext`u], 
           Text[
            Style["v", Large], 1.1 $CellContext`v], Red, Thick, 
           Line[{{0, 0}, $CellContext`u}], Blue, 
           Line[{{0, 0}, $CellContext`v}]}]], ImageSize -> Large, PlotRange -> 
        2 {{-1, 1}, {-1, 1}}], 
      "Specifications" :> {{{$CellContext`a$$, 0}, 0, 2 
         Pi}, {{$CellContext`su$$, 1}, 
         Rational[1, 2], 2}, {{$CellContext`sv$$, 1}, 
         Rational[1, 2], 2}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{621., {359., 365.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, $CellContext`rotate[
         Pattern[$CellContext`a, 
          Blank[]]] := {{
          Cos[$CellContext`a], -Sin[$CellContext`a], 0}, {
          Sin[$CellContext`a], 
          Cos[$CellContext`a], 0}, {0, 0, 1}}, $CellContext`scale[{
          Pattern[$CellContext`sx, 
           Blank[]], 
          Pattern[$CellContext`sy, 
           Blank[]]}] := {{$CellContext`sx, 0, 0}, {0, $CellContext`sy, 0}, {
         0, 0, 1}}, $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 
         1}, $CellContext`star[
         Pattern[$CellContext`n, 
          Blank[]], 
         Pattern[$CellContext`s, 
          Blank[]]] := Table[{
          Sin[2 Pi $CellContext`i ($CellContext`s/$CellContext`n)], 
          Cos[
          2 Pi $CellContext`i ($CellContext`s/$CellContext`n)]}, \
{$CellContext`i, 1, $CellContext`n}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
How do we select a rectangle to view?  Imagine we are interested in the \
window rectangle with corners {wxmin, wymin}, {wxmax, wymax}, and we want to \
make it appear at the screen viewport rectangle with corners {vxmin, vymin}, \
{vxmax, vymax}. What do we do? We first translate the window rectangle center \
to the origin. Then we scale it so that the sides match the sides of the \
viewport rectangle. Then, we translate this new rectangle, that has the \
correct size, so that it has the same center as the viewport rectangle.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"windowviewport", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"p", ":", 
       RowBox[{"{", 
        RowBox[{"wxmin_", ",", " ", "wymin_"}], "}"}]}], ",", " ", 
      RowBox[{"q", ":", 
       RowBox[{"{", 
        RowBox[{"wxmax_", ",", " ", "wymax_"}], "}"}]}]}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"P", ":", 
       RowBox[{"{", 
        RowBox[{"vxmin_", ",", " ", "vymin_"}], "}"}]}], ",", " ", 
      RowBox[{"Q", ":", 
       RowBox[{"{", 
        RowBox[{"vxmax_", ",", " ", "vymax_"}], "}"}]}]}], "}"}]}], "]"}], 
  " ", ":=", 
  RowBox[{
   RowBox[{"translate", "[", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"P", "+", "Q"}], ")"}], "/", "2"}], "]"}], ".", 
   RowBox[{"scale", "[", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"Q", "-", "P"}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{"q", "-", "p"}], ")"}]}], "]"}], ".", 
   RowBox[{"translate", "[", 
    RowBox[{
     RowBox[{"-", 
      RowBox[{"(", 
       RowBox[{"p", "+", "q"}], ")"}]}], "/", "2"}], "]"}], " "}]}]], "Input",\

 InitializationCell->True],

Cell["Here is what the matrix looks like", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"windowviewport", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"wxmin", ",", " ", "wymin"}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"wxmax", ",", " ", "wymax"}], "}"}]}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"vxmin", ",", " ", "vymin"}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"vxmax", ",", " ", "vymax"}], "}"}]}], "}"}]}], "]"}], " ", "//",
   " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      FractionBox[
       RowBox[{"vxmax", "-", "vxmin"}], 
       RowBox[{"wxmax", "-", "wxmin"}]], "0", 
      RowBox[{
       FractionBox[
        RowBox[{"vxmax", "+", "vxmin"}], "2"], "+", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{"vxmax", "-", "vxmin"}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "wxmax"}], "-", "wxmin"}], ")"}]}], 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{"wxmax", "-", "wxmin"}], ")"}]}]]}]},
     {"0", 
      FractionBox[
       RowBox[{"vymax", "-", "vymin"}], 
       RowBox[{"wymax", "-", "wymin"}]], 
      RowBox[{
       FractionBox[
        RowBox[{"vymax", "+", "vymin"}], "2"], "+", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{"vymax", "-", "vymin"}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "wymax"}], "-", "wymin"}], ")"}]}], 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{"wymax", "-", "wymin"}], ")"}]}]]}]},
     {"0", "0", "1"}
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
Doesn\[CloseCurlyQuote]t look so bad, but it is again much easier to create \
the transformation from its components. 
Here is the animation. Select the region of the world that you want displayed \
in the viewport by dragging the corner controls. \
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", " ", 
  RowBox[{
   RowBox[{"Row", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Show", "[", 
        RowBox[{
         RowBox[{"Graphics", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Polygon", "[", 
              RowBox[{"star", "[", 
               RowBox[{"5", ",", "2"}], "]"}], "]"}], ",", " ", "Red", ",", 
             " ", "Thick", ",", 
             RowBox[{"Line", "[", 
              RowBox[{"{", 
               RowBox[{"p", ",", " ", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"p", "[", 
                   RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
                  RowBox[{"q", "[", 
                   RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", " ", "q", 
                ",", " ", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"q", "[", 
                   RowBox[{"[", "1", "]"}], "]"}], ",", 
                  RowBox[{"p", "[", 
                   RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", " ", "p"}], 
               "}"}], "]"}]}], "}"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"2", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "}"}]}]}], ",", 
           RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", " ", 
           RowBox[{"Frame", "\[Rule]", "True"}], ",", 
           RowBox[{"FrameTicks", "\[Rule]", "None"}]}], "]"}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", "\"\<World\>\""}]}], "]"}], ",", 
       RowBox[{"Show", "[", 
        RowBox[{
         RowBox[{"Graphics", "[", 
          RowBox[{
           RowBox[{"Polygon", "[", 
            RowBox[{"Map", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"p2e", "[", 
                RowBox[{
                 RowBox[{"windowviewport", "[", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"p", ",", "q"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "1"}], ",", 
                    RowBox[{"-", "1"}]}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"1", ",", "1"}], "}"}]}], "}"}]}], "]"}], ".", 
                 RowBox[{"e2p", "[", "#", "]"}]}], "]"}], "&"}], ",", 
              RowBox[{"star", "[", 
               RowBox[{"5", ",", "2"}], "]"}]}], "]"}], "]"}], ",", 
           RowBox[{"PlotRange", "\[Rule]", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"Frame", "\[Rule]", "True"}], ",", 
           RowBox[{"FrameTicks", "\[Rule]", "None"}], ",", " ", 
           RowBox[{"FrameStyle", "\[Rule]", 
            RowBox[{"Directive", "[", 
             RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", 
           RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "]"}], ",", 
         RowBox[{"PlotLabel", "\[Rule]", "\"\<Viewport\>\""}], ",", " ", 
         RowBox[{"PlotRangeClipping", "\[Rule]", "True"}]}], "]"}]}], "}"}], 
     ",", 
     RowBox[{"Spacer", "[", "30", "]"}]}], "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p", ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "1"}], ",", " ", 
         RowBox[{"-", "1"}]}], "}"}]}], "}"}], ",", " ", "Locator"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"q", ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "1"}], "}"}]}], "}"}], ",", " ", "Locator"}], 
    "}"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = {-1, -1}, $CellContext`q$$ = {1, 1}, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p$$], {-1, -1}}, Automatic}, {{
       Hold[$CellContext`q$$], {1, 1}}, Automatic}}, Typeset`size$$ = {
    792., {292., 297.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p$$ = {-1, -1}, $CellContext`q$$ = {1, 1}},
       "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Row[{
         Show[
          Graphics[{
            Polygon[
             $CellContext`star[5, 2]], Red, Thick, 
            Line[{$CellContext`p$$, {
               Part[$CellContext`p$$, 1], 
               Part[$CellContext`q$$, 2]}, $CellContext`q$$, {
               Part[$CellContext`q$$, 1], 
               Part[$CellContext`p$$, 2]}, $CellContext`p$$}]}, PlotRange -> 
           2 {{-1, 1}, {-1, 1}}, ImageSize -> Large, Frame -> True, 
           FrameTicks -> None], PlotLabel -> "World"], 
         Show[
          Graphics[
           Polygon[
            Map[$CellContext`p2e[
              Dot[
               $CellContext`windowviewport[{$CellContext`p$$, \
$CellContext`q$$}, {{-1, -1}, {1, 1}}], 
               $CellContext`e2p[#]]]& , 
             $CellContext`star[5, 2]]], PlotRange -> {{-1, 1}, {-1, 1}}, 
           Frame -> True, FrameTicks -> None, FrameStyle -> 
           Directive[Thick, Red], ImageSize -> Small], PlotLabel -> 
          "Viewport", PlotRangeClipping -> True]}, 
        Spacer[30]], 
      "Specifications" :> {{{$CellContext`p$$, {-1, -1}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`q$$, {1, 1}}, Automatic, 
         ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{843., {325., 330.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`star[
         Pattern[$CellContext`n, 
          Blank[]], 
         Pattern[$CellContext`s, 
          Blank[]]] := Table[{
          Sin[2 Pi $CellContext`i ($CellContext`s/$CellContext`n)], 
          Cos[
          2 Pi $CellContext`i ($CellContext`s/$CellContext`n)]}, \
{$CellContext`i, 1, $CellContext`n}], $CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, $CellContext`windowviewport[{
          Pattern[$CellContext`p, {
            Pattern[$CellContext`wxmin, 
             Blank[]], 
            Pattern[$CellContext`wymin, 
             Blank[]]}], 
          Pattern[$CellContext`q, {
            Pattern[$CellContext`wxmax, 
             Blank[]], 
            Pattern[$CellContext`wymax, 
             Blank[]]}]}, {
          Pattern[$CellContext`P, {
            Pattern[$CellContext`vxmin, 
             Blank[]], 
            Pattern[$CellContext`vymin, 
             Blank[]]}], 
          Pattern[$CellContext`Q, {
            Pattern[$CellContext`vxmax, 
             Blank[]], 
            Pattern[$CellContext`vymax, 
             Blank[]]}]}] := Dot[
         $CellContext`translate[($CellContext`P + $CellContext`Q)/2], 
         $CellContext`scale[($CellContext`Q - $CellContext`P)/($CellContext`q - \
$CellContext`p)], 
         $CellContext`translate[-($CellContext`p + $CellContext`q)/
          2]], $CellContext`translate[{
          Pattern[$CellContext`tx, 
           Blank[]], 
          Pattern[$CellContext`ty, 
           Blank[]]}] := {{1, 0, $CellContext`tx}, {0, 1, $CellContext`ty}, {
         0, 0, 1}}, $CellContext`scale[{
          Pattern[$CellContext`sx, 
           Blank[]], 
          Pattern[$CellContext`sy, 
           Blank[]]}] := {{$CellContext`sx, 0, 0}, {0, $CellContext`sy, 0}, {
         0, 0, 1}}, $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 1}}; 
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
There still one type of transformation we want to perform. It is called \
foreshortening. This is the type of effect you see when you use GPS \
navigation and the map looks as though seen from a certain elevation in \
perspective. A particular type of transformation like this maps a square into \
a trapezoid.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", " ", 
  RowBox[{
   RowBox[{"Show", "[", 
    RowBox[{"Graphics", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Line", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", " ", 
             RowBox[{"-", "1"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"1", ",", " ", 
             RowBox[{"-", "1"}]}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"1", ",", " ", "1"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", " ", 
             RowBox[{"-", "1"}]}], "}"}]}], "}"}], "]"}], ",", "Red", ",", 
        " ", "Thick", ",", 
        RowBox[{"Line", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "1"}], "-", "d"}], ",", 
             RowBox[{"-", "1"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"1", "+", "d"}], ",", 
             RowBox[{"-", "1"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"1", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "1"}], "-", "d"}], ",", 
             RowBox[{"-", "1"}]}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
      RowBox[{"PlotRange", "\[Rule]", 
       RowBox[{"2", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "1"}], ",", " ", "1"}], "}"}]}], "}"}]}]}]}], "]"}], 
    "]"}], ",", 
   RowBox[{"{", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"d", ",", "0"}], "}"}], ",", " ", 
     RowBox[{"-", "0.5"}], ",", " ", "0.5"}], "}"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`d$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`d$$], 0}, -0.5, 0.5}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`d$979$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`d$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`d$$, $CellContext`d$979$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[{
          Line[{{-1, -1}, {1, -1}, {1, 1}, {-1, 1}, {-1, -1}}], Red, Thick, 
          
          Line[{{-1 - $CellContext`d$$, -1}, {1 + $CellContext`d$$, -1}, {1, 
            1}, {-1, 1}, {-1 - $CellContext`d$$, -1}}]}, ImageSize -> Large, 
         PlotRange -> 2 {{-1, 1}, {-1, 1}}]], 
      "Specifications" :> {{{$CellContext`d$$, 0}, -0.5, 0.5}}, 
      "Options" :> {}, "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{621., {331., 337.}},
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
We know this is not an affine transformation because affine transformations \
preserve parallelism.\
\>", "Text"],

Cell["\<\
We will find the projective transformation that maps the canonical lines \
(projective points) {1, 0, 0}, {0, 1, 0}, {0, 0, 1} into the arbitrary lines \
(projective points) {a1, a2, a3}, {b1, b2, b3}, {c1, c2, c3}. This is easy to \
do since\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Transpose", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a1", ",", "a2", ",", "a3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"b1", ",", "b2", ",", "b3"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"c1", ",", "c2", ",", "c3"}], "}"}]}], "}"}], "]"}], " ", "//", 
  " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"a1", "b1", "c1"},
     {"a2", "b2", "c2"},
     {"a3", "b3", "c3"}
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
  TagBox[
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"a1", "b1", "c1"},
       {"a2", "b2", "c2"},
       {"a3", "b3", "c3"}
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
     MatrixForm[BoxForm`e$]]],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], ".", 
  RowBox[{"{", 
   RowBox[{"1", ",", " ", "0", ",", "0"}], "}"}], " "}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"a1", ",", "a2", ",", "a3"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  TagBox[
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"a1", "b1", "c1"},
       {"a2", "b2", "c2"},
       {"a3", "b3", "c3"}
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
     MatrixForm[BoxForm`e$]]],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], ".", 
  RowBox[{"{", 
   RowBox[{"0", ",", " ", "1", ",", "0"}], "}"}], " "}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"b1", ",", "b2", ",", "b3"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  TagBox[
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"a1", "b1", "c1"},
       {"a2", "b2", "c2"},
       {"a3", "b3", "c3"}
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
     MatrixForm[BoxForm`e$]]],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]], ".", 
  RowBox[{"{", 
   RowBox[{"0", ",", " ", "0", ",", "1"}], "}"}], " "}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"c1", ",", "c2", ",", "c3"}], "}"}]], "Output"]
}, Open  ]],

Cell["\<\
But the output lines can be each rewritten as u {a1, a2, a3}, v {b1, b2, b3}, \
w {c1, c2, c3}. So this transformation matrix really can be written as  \
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"a1", "b1", "c1"},
       {"a2", "b2", "c2"},
       {"a3", "b3", "c3"}
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
     MatrixForm[BoxForm`e$]]], ".", 
   RowBox[{"DiagonalMatrix", "[", 
    RowBox[{"{", 
     RowBox[{"u", ",", " ", "v", ",", " ", "w"}], "}"}], "]"}]}], " ", "//", 
  " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{"a1", " ", "u"}], 
      RowBox[{"b1", " ", "v"}], 
      RowBox[{"c1", " ", "w"}]},
     {
      RowBox[{"a2", " ", "u"}], 
      RowBox[{"b2", " ", "v"}], 
      RowBox[{"c2", " ", "w"}]},
     {
      RowBox[{"a3", " ", "u"}], 
      RowBox[{"b3", " ", "v"}], 
      RowBox[{"c3", " ", "w"}]}
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
and it will still map the lines {1, 0, 0}, {0, 1, 0}, {0, 0, 1} into the \
arbitrary lines  {a1, a2, a3}, {b1, b2, b3}, {c1, c2, c3}. Different choices \
for {u, v, w} will change the way *other* lines are transformed. So we need \
an additional mapping to fix the projective transformation.\
\>", "Text"],

Cell["\<\
We can do that by defining the transformation of line (projective point) {1, \
1, 1} to {d1, d2, d3}. This gives the additional constraint\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"a1", "b1", "c1"},
       {"a2", "b2", "c2"},
       {"a3", "b3", "c3"}
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
     MatrixForm[BoxForm`e$]]], ".", 
   RowBox[{"DiagonalMatrix", "[", 
    RowBox[{"{", 
     RowBox[{"u", ",", " ", "v", ",", " ", "w"}], "}"}], "]"}], ".", 
   RowBox[{"{", 
    RowBox[{"1", ",", "1", ",", "1"}], "}"}]}], " ", "\[Equal]", " ", 
  RowBox[{"{", 
   RowBox[{"d1", ",", " ", "d2", " ", ",", "d3"}], "}"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"a1", " ", "u"}], "+", 
     RowBox[{"b1", " ", "v"}], "+", 
     RowBox[{"c1", " ", "w"}]}], ",", 
    RowBox[{
     RowBox[{"a2", " ", "u"}], "+", 
     RowBox[{"b2", " ", "v"}], "+", 
     RowBox[{"c2", " ", "w"}]}], ",", 
    RowBox[{
     RowBox[{"a3", " ", "u"}], "+", 
     RowBox[{"b3", " ", "v"}], "+", 
     RowBox[{"c3", " ", "w"}]}]}], "}"}], "\[Equal]", 
  RowBox[{"{", 
   RowBox[{"d1", ",", "d2", ",", "d3"}], "}"}]}]], "Output"]
}, Open  ]],

Cell["This is just a linear system.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"a1", "b1", "c1"},
       {"a2", "b2", "c2"},
       {"a3", "b3", "c3"}
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
     MatrixForm[BoxForm`e$]]], " ", ".", " ", 
   RowBox[{"{", 
    RowBox[{"u", ",", " ", "v", ",", " ", "w"}], "}"}]}], " ", "\[Equal]", 
  " ", 
  RowBox[{"{", 
   RowBox[{"d1", ",", " ", "d2", ",", " ", "d3"}], "}"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"a1", " ", "u"}], "+", 
     RowBox[{"b1", " ", "v"}], "+", 
     RowBox[{"c1", " ", "w"}]}], ",", 
    RowBox[{
     RowBox[{"a2", " ", "u"}], "+", 
     RowBox[{"b2", " ", "v"}], "+", 
     RowBox[{"c2", " ", "w"}]}], ",", 
    RowBox[{
     RowBox[{"a3", " ", "u"}], "+", 
     RowBox[{"b3", " ", "v"}], "+", 
     RowBox[{"c3", " ", "w"}]}]}], "}"}], "\[Equal]", 
  RowBox[{"{", 
   RowBox[{"d1", ",", "d2", ",", "d3"}], "}"}]}]], "Output"]
}, Open  ]],

Cell[TextData[{
 "So all we have to do is solve this system for u, v, w. We can then return \
any multiple of the matrix ",
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       RowBox[{"a1", " ", "u"}], 
       RowBox[{"b1", " ", "v"}], 
       RowBox[{"c1", " ", "w"}]},
      {
       RowBox[{"a2", " ", "u"}], 
       RowBox[{"b2", " ", "v"}], 
       RowBox[{"c2", " ", "w"}]},
      {
       RowBox[{"a3", " ", "u"}], 
       RowBox[{"b3", " ", "v"}], 
       RowBox[{"c3", " ", "w"}]}
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
  CellChangeTimes->{3.629635901940199*^9}],
 ". This is because really any multiple of {u, v, w} gives the same result."
}], "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"projection", "[", 
   RowBox[{"p1_", ",", " ", "p2_", ",", " ", "p3_", ",", " ", "p4_"}], "]"}], 
  " ", ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"m", "=", " ", 
      RowBox[{"Transpose", "[", 
       RowBox[{"{", 
        RowBox[{"p1", ",", " ", "p2", ",", " ", "p3"}], "}"}], "]"}]}], "}"}],
     ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"uvw", " ", "=", " ", 
        RowBox[{"LinearSolve", "[", 
         RowBox[{"m", ",", "p4"}], "]"}]}], "}"}], ",", " ", 
      RowBox[{"m", " ", ".", " ", 
       RowBox[{"DiagonalMatrix", "[", "uvw", "]"}]}]}], "]"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True],

Cell["Let\[CloseCurlyQuote]s check that this works.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Module", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"P", " ", "=", " ", 
     RowBox[{"projection", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"a1", ",", " ", "a2", ",", " ", "a3"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"b1", ",", " ", "b2", ",", " ", "b3"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"c1", ",", " ", "c2", ",", " ", "c3"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"d1", ",", " ", "d2", ",", " ", "d3"}], "}"}]}], "]"}]}], 
    "}"}], ",", " ", 
   RowBox[{"Map", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Simplify", "[", 
       RowBox[{"p2e", "[", 
        RowBox[{"P", ".", "#"}], "]"}], "]"}], "&"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "1", ",", " ", "1"}], "}"}]}], "}"}]}], 
    "]"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     FractionBox["a1", "a3"], ",", 
     FractionBox["a2", "a3"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["b1", "b3"], ",", 
     FractionBox["b2", "b3"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["c1", "c3"], ",", 
     FractionBox["c2", "c3"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     FractionBox["d1", "d3"], ",", 
     FractionBox["d2", "d3"]}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell["So it does work.", "Text"],

Cell["\<\
With this, we can create a projection matrix that maps any four lines to any \
other four lines. Assume we have the A that maps e1, e2, e3, e4 to  p1, p2, \
p3, p4 and a matrix B that maps the same points e1, e2, e3, e4  to P1, P2, \
P3, P4. Inverse[A] maps points p1, p2, p3, p4 to P1, P2, P3, P4. So \
B.Inverse[A] is the matrix we are looking for.\
\>", "Text"],

Cell["\<\
From this, it is easy to create the projective transformation we need, that \
maps the square into the trapezoid. Here is what the matrix looks like\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"projection", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "1"}], "-", "d"}], ",", 
       RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"1", "+", "d"}], ",", 
       RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "1", ",", " ", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "1"}], ",", "1", ",", " ", "1"}], "}"}]}], "]"}], ".", 
   RowBox[{"Inverse", "[", 
    RowBox[{"projection", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1"}], ",", 
        RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1", ",", 
        RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1", ",", "1", ",", " ", "1"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1"}], ",", "1", ",", " ", "1"}], "}"}]}], "]"}], 
    "]"}]}], "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       FractionBox["1", "2"], "-", 
       FractionBox[
        RowBox[{
         RowBox[{"-", "1"}], "-", "d"}], 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", "d"}], ")"}]}]]}], "0", 
      RowBox[{
       FractionBox["1", "2"], "+", 
       FractionBox[
        RowBox[{
         RowBox[{"-", "1"}], "-", "d"}], 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", "d"}], ")"}]}]]}]},
     {"0", 
      RowBox[{
       FractionBox["1", "2"], "+", 
       FractionBox["1", 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", "d"}], ")"}]}]]}], 
      RowBox[{
       FractionBox["1", "2"], "-", 
       FractionBox["1", 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", "d"}], ")"}]}]]}]},
     {"0", 
      RowBox[{
       FractionBox["1", "2"], "-", 
       FractionBox["1", 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", "d"}], ")"}]}]]}], 
      RowBox[{
       FractionBox["1", "2"], "+", 
       FractionBox["1", 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{"1", "+", "d"}], ")"}]}]]}]}
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
Since we any multiple of it will do, we can multiply by 2 (1 + d)\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"%", " ", "2", " ", 
    RowBox[{"(", 
     RowBox[{"1", "+", "d"}], ")"}]}], " ", "//", " ", "Simplify"}], " ", "//",
   " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{"1", "+", "d"}], ")"}]}], "0", "0"},
     {"0", 
      RowBox[{"2", "+", "d"}], "d"},
     {"0", "d", 
      RowBox[{"2", "+", "d"}]}
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

Cell["It doesn't look that bad! ", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"foreshorten", "[", "d_", "]"}], " ", ":=", " ", 
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", "d"}], ")"}]}], "0", "0"},
      {"0", 
       RowBox[{"2", "+", "d"}], "d"},
      {"0", "d", 
       RowBox[{"2", "+", "d"}]}
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
    MatrixForm[BoxForm`e$]]]}]], "Input",
 InitializationCell->True],

Cell["Here is the demo.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", " ", 
  RowBox[{
   RowBox[{"Show", "[", 
    RowBox[{"Graphics", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Polygon", "[", 
         RowBox[{"Map", "[", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"p2e", "[", 
             RowBox[{
              RowBox[{"foreshorten", "[", "d", "]"}], ".", 
              RowBox[{"e2p", "[", "#", "]"}]}], "]"}], "&"}], ",", 
           RowBox[{"star", "[", 
            RowBox[{"5", ",", "2"}], "]"}]}], "]"}], "]"}], ",", "Red", ",", 
        " ", "Thick", ",", 
        RowBox[{"Line", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "1"}], "-", "d"}], ",", 
             RowBox[{"-", "1"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"1", "+", "d"}], ",", 
             RowBox[{"-", "1"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"1", ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "1"}], "-", "d"}], ",", 
             RowBox[{"-", "1"}]}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
      RowBox[{"PlotRange", "\[Rule]", 
       RowBox[{"2", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "1"}], ",", " ", "1"}], "}"}]}], "}"}]}]}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], "]"}], ",", 
   RowBox[{"{", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"d", ",", "0"}], "}"}], ",", " ", 
     RowBox[{
      RowBox[{"-", "3"}], "/", "4"}], ",", " ", "1"}], "}"}]}], 
  "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`d$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`d$$], 0}, 
      Rational[-3, 4], 1}}, Typeset`size$$ = {576., {286., 290.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`d$1003$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`d$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`d$$, $CellContext`d$1003$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[{
          Polygon[
           Map[$CellContext`p2e[
             Dot[
              $CellContext`foreshorten[$CellContext`d$$], 
              $CellContext`e2p[#]]]& , 
            $CellContext`star[5, 2]]], Red, Thick, 
          
          Line[{{-1 - $CellContext`d$$, -1}, {1 + $CellContext`d$$, -1}, {1, 
            1}, {-1, 1}, {-1 - $CellContext`d$$, -1}}]}, PlotRange -> 
         2 {{-1, 1}, {-1, 1}}, ImageSize -> Large]], 
      "Specifications" :> {{{$CellContext`d$$, 0}, 
         Rational[-3, 4], 1}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{621., {331., 337.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, $CellContext`foreshorten[
         Pattern[$CellContext`d, 
          Blank[]]] := {{2 (1 + $CellContext`d), 0, 0}, {
         0, 2 + $CellContext`d, $CellContext`d}, {
         0, $CellContext`d, 2 + $CellContext`d}}, $CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 
         1}, $CellContext`star[
         Pattern[$CellContext`n, 
          Blank[]], 
         Pattern[$CellContext`s, 
          Blank[]]] := Table[{
          Sin[2 Pi $CellContext`i ($CellContext`s/$CellContext`n)], 
          Cos[
          2 Pi $CellContext`i ($CellContext`s/$CellContext`n)]}, \
{$CellContext`i, 1, $CellContext`n}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]]
},
WindowSize->{1706, 1088},
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
Cell[1714, 43, 44, 0, 29, "Text"],
Cell[1761, 45, 581, 16, 48, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[2367, 65, 110, 3, 32, "Input"],
Cell[2480, 70, 591, 18, 32, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3108, 93, 191, 5, 32, "Input"],
Cell[3302, 100, 801, 17, 358, "Output"]
}, Open  ]],
Cell[4118, 120, 100, 2, 29, "Text"],
Cell[4221, 124, 240, 7, 48, "Input",
 InitializationCell->True],
Cell[4464, 133, 294, 10, 48, "Input",
 InitializationCell->True],
Cell[4761, 145, 43, 0, 29, "Text"],
Cell[4807, 147, 893, 26, 81, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[5725, 177, 1169, 34, 91, "Input",
 InitializationCell->True],
Cell[6897, 213, 2859, 66, 685, "Output"]
}, Open  ]],
Cell[9771, 282, 46, 0, 29, "Text"],
Cell[9820, 284, 791, 23, 81, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[10636, 311, 1198, 36, 91, "Input",
 InitializationCell->True],
Cell[11837, 349, 2836, 66, 659, "Output"]
}, Open  ]],
Cell[14688, 418, 42, 0, 29, "Text"],
Cell[14733, 420, 787, 23, 81, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[15545, 447, 1471, 43, 91, "Input",
 InitializationCell->True],
Cell[17019, 492, 3172, 72, 713, "Output"]
}, Open  ]],
Cell[20206, 567, 226, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[20457, 575, 351, 11, 32, "Input"],
Cell[20811, 588, 1112, 33, 65, "Output"]
}, Open  ]],
Cell[21938, 624, 112, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[22075, 631, 1530, 45, 112, "Input",
 InitializationCell->True],
Cell[23608, 678, 3390, 77, 691, "Output"]
}, Open  ]],
Cell[27013, 758, 208, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[27246, 766, 281, 8, 32, "Input"],
Cell[27530, 776, 1553, 46, 69, "Output"]
}, Open  ]],
Cell[29098, 825, 261, 5, 29, "Text"],
Cell[29362, 832, 116, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[29503, 839, 3174, 91, 91, "Input",
 InitializationCell->True],
Cell[32680, 932, 4272, 98, 741, "Output"]
}, Open  ]],
Cell[36967, 1033, 556, 8, 65, "Text"],
Cell[37526, 1043, 1120, 38, 48, "Input",
 InitializationCell->True],
Cell[38649, 1083, 50, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[38724, 1087, 526, 16, 32, "Input"],
Cell[39253, 1105, 1627, 50, 87, "Output"]
}, Open  ]],
Cell[40895, 1158, 272, 5, 47, "Text"],
Cell[CellGroupData[{
Cell[41192, 1167, 4112, 108, 133, "Input",
 InitializationCell->True],
Cell[45307, 1277, 4957, 115, 672, "Output"]
}, Open  ]],
Cell[50279, 1395, 334, 6, 47, "Text"],
Cell[CellGroupData[{
Cell[50638, 1405, 2243, 67, 70, "Input",
 InitializationCell->True],
Cell[52884, 1474, 1838, 37, 685, "Output"]
}, Open  ]],
Cell[54737, 1514, 123, 3, 29, "Text"],
Cell[54863, 1519, 266, 5, 29, "Text"],
Cell[CellGroupData[{
Cell[55154, 1528, 365, 11, 32, "Input"],
Cell[55522, 1541, 626, 18, 67, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[56185, 1564, 815, 24, 67, "Input"],
Cell[57003, 1590, 86, 2, 32, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[57126, 1597, 815, 24, 67, "Input"],
Cell[57944, 1623, 86, 2, 32, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[58067, 1630, 815, 24, 67, "Input"],
Cell[58885, 1656, 86, 2, 32, "Output"]
}, Open  ]],
Cell[58986, 1661, 176, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[59187, 1668, 842, 24, 67, "Input"],
Cell[60032, 1694, 869, 27, 67, "Output"]
}, Open  ]],
Cell[60916, 1724, 315, 5, 47, "Text"],
Cell[61234, 1731, 162, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[61421, 1738, 975, 27, 67, "Input"],
Cell[62399, 1767, 522, 17, 32, "Output"]
}, Open  ]],
Cell[62936, 1787, 45, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[63006, 1791, 875, 25, 67, "Input"],
Cell[63884, 1818, 522, 17, 32, "Output"]
}, Open  ]],
Cell[64421, 1838, 1144, 33, 67, "Text"],
Cell[65568, 1873, 729, 22, 48, "Input",
 InitializationCell->True],
Cell[66300, 1897, 61, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[66386, 1901, 1149, 32, 32, "Input"],
Cell[67538, 1935, 497, 18, 50, "Output"]
}, Open  ]],
Cell[68050, 1956, 32, 0, 29, "Text"],
Cell[68085, 1958, 374, 6, 47, "Text"],
Cell[68462, 1966, 172, 3, 29, "Text"],
Cell[CellGroupData[{
Cell[68659, 1973, 1092, 34, 32, "Input"],
Cell[69754, 2009, 1739, 58, 95, "Output"]
}, Open  ]],
Cell[71508, 2070, 89, 2, 29, "Text"],
Cell[CellGroupData[{
Cell[71622, 2076, 198, 6, 32, "Input"],
Cell[71823, 2084, 755, 23, 67, "Output"]
}, Open  ]],
Cell[72593, 2110, 42, 0, 29, "Text"],
Cell[72638, 2112, 876, 26, 83, "Input",
 InitializationCell->True],
Cell[73517, 2140, 33, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[73575, 2144, 1971, 59, 70, "Input",
 InitializationCell->True],
Cell[75549, 2205, 3072, 70, 685, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature awpjg086ekABeB1qzRSj5Psx *)
