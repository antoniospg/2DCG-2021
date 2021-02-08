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
NotebookDataLength[     80417,       2033]
NotebookOptionsPosition[     78844,       1963]
NotebookOutlinePosition[     79292,       1983]
CellTagsIndexPosition[     79249,       1980]
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

Cell["We want to develop an inside-outside test for the triangle. ", "Text"],

Cell["\<\
One alternative is to test that the sign of the point is the same relative to \
all oriented line segments forming the sides of the triangle. 

We have a primitive that gives the cos of the angle between two vectors. We \
wanted the sine. But the sin(\[Theta]) = cos(\[Theta]-\[Pi]/2).

So testing the sign of a point p3 relative to line segment p1, p2 is simple. \
We take the vector p2-p1 and rotate it by 90 degrees. Then we compute the dot \
product between this rotated vector and the vector p3-p1. This will give us a \
scalar with the same sign as the sine of the angle between the vectors.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"p21", " ", "=", " ", 
        RowBox[{"p2", "-", "p1"}]}], ",", " ", 
       RowBox[{"p31", "=", 
        RowBox[{"p3", "-", "p1"}]}]}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Show", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Graphics", "[", 
        RowBox[{
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{"Green", ",", " ", "Thick", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{"p1", ",", "p2"}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", "Red", ",", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{"p1", ",", " ", "p3"}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", "Dashed", ",", "Blue", ",", " ", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{"p1", ",", 
              RowBox[{"p1", "+", 
               RowBox[{"Cross", "[", "p21", "]"}]}]}], "}"}], "]"}], ",", " ",
            "\[IndentingNewLine]", "Green", ",", " ", 
           RowBox[{"Line", "[", 
            RowBox[{"{", 
             RowBox[{"p1", ",", " ", 
              RowBox[{"p1", "-", "p21"}]}], "}"}], "]"}], ",", " ", 
           "\[IndentingNewLine]", "Black", ",", " ", 
           RowBox[{"Text", "[", 
            RowBox[{
             RowBox[{"Style", "[", 
              RowBox[{
               RowBox[{"Dot", "[", 
                RowBox[{
                 RowBox[{"Cross", "[", "p21", "]"}], ",", "p31"}], "]"}], ",",
                " ", "Large"}], "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", 
               RowBox[{"-", "2"}]}], "}"}]}], "]"}]}], "}"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "3"}]}], "]"}], ",", " ", 
       "\[IndentingNewLine]", 
       RowBox[{"Graphics", "[", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"pt", "=", 
            RowBox[{"{", 
             RowBox[{"p1", ",", "p2", ",", "p3"}], "}"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"Subscript", "[", 
                 RowBox[{"p", ",", "i"}], "]"}], ",", " ", "Large"}], "]"}], 
              ",", 
              RowBox[{
               RowBox[{"pt", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "+", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"1", "/", "4"}]}], "}"}]}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}]}], "]"}], 
        "]"}]}], "]"}]}], "]"}], ",", " ", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p1", ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "1"}], ",", 
         RowBox[{"-", "1"}]}], "}"}]}], "}"}], ",", " ", "Locator"}], "}"}], 
   ",", " ", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p2", ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", 
         RowBox[{"-", "1"}]}], "}"}]}], "}"}], ",", " ", "Locator"}], "}"}], 
   ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p3", ",", 
       RowBox[{"{", 
        RowBox[{"1", ",", "1"}], "}"}]}], "}"}], ",", " ", "Locator"}], 
    "}"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p1$$ = {-1, -1}, $CellContext`p2$$ = {
    1, -1}, $CellContext`p3$$ = {1, 1}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p1$$], {-1, -1}}, Automatic}, {{
       Hold[$CellContext`p2$$], {1, -1}}, Automatic}, {{
       Hold[$CellContext`p3$$], {1, 1}}, Automatic}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p1$$ = {-1, -1}, $CellContext`p2$$ = {
         1, -1}, $CellContext`p3$$ = {1, 1}}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`p21$ = $CellContext`p2$$ - $CellContext`p1$$, \
$CellContext`p31$ = $CellContext`p3$$ - $CellContext`p1$$}, 
        Show[
         Graphics[{Green, Thick, 
           Line[{$CellContext`p1$$, $CellContext`p2$$}], Red, 
           Line[{$CellContext`p1$$, $CellContext`p3$$}], Dashed, Blue, 
           
           Line[{$CellContext`p1$$, $CellContext`p1$$ + 
             Cross[$CellContext`p21$]}], Green, 
           Line[{$CellContext`p1$$, $CellContext`p1$$ - $CellContext`p21$}], 
           Black, 
           Text[
            Style[
             Dot[
              Cross[$CellContext`p21$], $CellContext`p31$], Large], {0, -2}]},
           ImageSize -> Large, PlotRange -> 3], 
         Graphics[
          
          Module[{$CellContext`pt = {$CellContext`p1$$, $CellContext`p2$$, \
$CellContext`p3$$}}, 
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i], Large], 
             Part[$CellContext`pt, $CellContext`i] + {
              0, 1/4}], {$CellContext`i, 1, 
             Length[$CellContext`pt]}]]]]], 
      "Specifications" :> {{{$CellContext`p1$$, {-1, -1}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`p2$$, {1, -1}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`p3$$, {1, 1}}, Automatic, 
         ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {318., 324.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({Attributes[Subscript] = {NHoldRest}}; 
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
Now we can do this for all three edges and compare the signs.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"signtriangleinsidetest", "[", 
   RowBox[{"p1_", ",", " ", "p2_", ",", " ", "p3_", ",", " ", "p_"}], "]"}], 
  " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"p12", " ", "=", " ", 
       RowBox[{"Cross", "[", 
        RowBox[{"p1", "-", "p2"}], "]"}]}], ",", " ", 
      RowBox[{"p23", " ", "=", " ", 
       RowBox[{"Cross", "[", 
        RowBox[{"p2", "-", "p3"}], "]"}]}], ",", " ", 
      RowBox[{"p31", " ", "=", " ", 
       RowBox[{"Cross", "[", 
        RowBox[{"p3", "-", "p1"}], "]"}]}]}], "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"s12", " ", "=", " ", 
         RowBox[{"Sign", "[", 
          RowBox[{"Dot", "[", 
           RowBox[{
            RowBox[{"p", "-", "p2"}], ",", "p12"}], "]"}], "]"}]}], ",", " ", 
        
        RowBox[{"s23", " ", "=", " ", 
         RowBox[{"Sign", "[", 
          RowBox[{"Dot", "[", 
           RowBox[{
            RowBox[{"p", "-", "p3"}], ",", " ", "p23"}], "]"}], "]"}]}], ",", 
        " ", 
        RowBox[{"s31", "=", 
         RowBox[{"Sign", "[", 
          RowBox[{"Dot", "[", 
           RowBox[{
            RowBox[{"p", "-", "p1"}], ",", "p31"}], "]"}], "]"}]}]}], "}"}], 
      ",", " ", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"s12", "\[Equal]", "s23"}], " ", "&&", " ", 
         RowBox[{"s23", " ", "\[Equal]", " ", "s31"}]}], ",", "1", ",", "0"}],
        "]"}]}], "]"}]}], "]"}], " "}]], "Input",
 InitializationCell->True],

Cell["\<\
Here is what this looks like if we evaluate at the center of pixels.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"sp1", " ", "=", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1"}], ",", 
        RowBox[{"-", "1"}]}], "}"}]}], ",", 
     RowBox[{"sp2", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "1"}], "/", "2"}], ",", 
        RowBox[{"3", "/", "2"}]}], "}"}]}], ",", " ", 
     RowBox[{"sp3", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"1", ",", 
        RowBox[{"-", "1"}]}], "}"}]}], ",", " ", 
     RowBox[{"n", "=", "24"}]}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Show", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Graphics", "[", 
        RowBox[{"Raster", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"signtriangleinsidetest", "[", 
             RowBox[{"p1", ",", "p2", ",", "p3", ",", 
              RowBox[{"{", 
               RowBox[{"x", ",", "y"}], "}"}]}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"y", ",", " ", 
              RowBox[{
               RowBox[{"-", "3"}], "+", 
               RowBox[{"3", "/", "n"}]}], ",", 
              RowBox[{"3", "-", 
               RowBox[{"3", "/", "n"}]}], ",", 
              RowBox[{"6", "/", "n"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"x", ",", " ", 
              RowBox[{
               RowBox[{"-", "3"}], "+", 
               RowBox[{"3", "/", "n"}]}], ",", 
              RowBox[{"3", "-", 
               RowBox[{"3", "/", "n"}]}], ",", 
              RowBox[{"6", "/", "n"}]}], "}"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "3"}], ",", 
              RowBox[{"-", "3"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"3", ",", "3"}], "}"}]}], "}"}], ",", 
          RowBox[{"ColorFunction", "\[Rule]", "\"\<BeachColors\>\""}]}], 
         "]"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", 
         RowBox[{"Green", ",", " ", "Thick", ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{"p1", ",", "p2", ",", "p3", ",", "p1"}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", " ", "\[IndentingNewLine]", 
       RowBox[{"Graphics", "[", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"pt", "=", 
            RowBox[{"{", 
             RowBox[{"p1", ",", "p2", ",", "p3"}], "}"}]}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"Subscript", "[", 
                 RowBox[{"p", ",", "i"}], "]"}], ",", " ", "Large"}], "]"}], 
              ",", 
              RowBox[{
               RowBox[{"pt", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "+", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"1", "/", "4"}]}], "}"}]}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}]}], "]"}], 
        "]"}], ",", " ", 
       RowBox[{"PlotRange", "\[Rule]", "3"}], ",", " ", 
       RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p1", ",", "sp1"}], "}"}], ",", " ", "Locator"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p2", ",", "sp2"}], "}"}], ",", " ", "Locator"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p3", ",", "sp3"}], "}"}], ",", " ", "Locator"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p1$$ = {-1, -1}, $CellContext`p2$$ = {
     Rational[-1, 2], 
     Rational[3, 2]}, $CellContext`p3$$ = {1, -1}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p1$$], {-1, -1}}, Automatic}, {{
       Hold[$CellContext`p2$$], {
        Rational[-1, 2], 
        Rational[3, 2]}}, Automatic}, {{
       Hold[$CellContext`p3$$], {1, -1}}, Automatic}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p1$$ = {-1, -1}, $CellContext`p2$$ = {
          Rational[-1, 2], 
          Rational[3, 2]}, $CellContext`p3$$ = {1, -1}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[
         Raster[
          Table[
           $CellContext`signtriangleinsidetest[$CellContext`p1$$, \
$CellContext`p2$$, $CellContext`p3$$, {$CellContext`x, $CellContext`y}], \
{$CellContext`y, -3 + 3/24, 3 - 3/24, 6/24}, {$CellContext`x, -3 + 3/24, 3 - 
            3/24, 6/24}], {{-3, -3}, {3, 3}}, ColorFunction -> 
          "BeachColors"]], 
        Graphics[{Green, Thick, 
          
          Line[{$CellContext`p1$$, $CellContext`p2$$, $CellContext`p3$$, \
$CellContext`p1$$}]}], 
        Graphics[
         Module[{$CellContext`pt = {$CellContext`p1$$, $CellContext`p2$$, \
$CellContext`p3$$}}, 
          Table[
           Text[
            Style[
             Subscript[$CellContext`p, $CellContext`i], Large], 
            Part[$CellContext`pt, $CellContext`i] + {
             0, 1/4}], {$CellContext`i, 1, 
            Length[$CellContext`pt]}]]], PlotRange -> 3, ImageSize -> Large], 
      "Specifications" :> {{{$CellContext`p1$$, {-1, -1}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`p2$$, {
           Rational[-1, 2], 
           Rational[3, 2]}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`p3$$, {1, -1}}, Automatic, ControlType -> 
         Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {318., 324.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`signtriangleinsidetest[
         Pattern[$CellContext`p1, 
          Blank[]], 
         Pattern[$CellContext`p2, 
          Blank[]], 
         Pattern[$CellContext`p3, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := 
       Module[{$CellContext`p12 = 
          Cross[$CellContext`p1 - $CellContext`p2], $CellContext`p23 = 
          Cross[$CellContext`p2 - $CellContext`p3], $CellContext`p31 = 
          Cross[$CellContext`p3 - $CellContext`p1]}, 
         Module[{$CellContext`s12 = Sign[
             
             Dot[$CellContext`p - $CellContext`p2, $CellContext`p12]], \
$CellContext`s23 = Sign[
             
             Dot[$CellContext`p - $CellContext`p3, $CellContext`p23]], \
$CellContext`s31 = Sign[
             Dot[$CellContext`p - $CellContext`p1, $CellContext`p31]]}, 
          If[
           
           And[$CellContext`s12 == $CellContext`s23, $CellContext`s23 == \
$CellContext`s31], 1, 0]]], Attributes[Subscript] = {NHoldRest}}; 
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
Another alternative is to use barycentric coordinates. 

This is a key principle in analytic geometry: find a coordinate system in \
which it is easy to solve your problem.

The idea is to use two of the sides in the triangle as a coordinate system, \
and write the coordinates a,b of the query point in that system. Then, the \
point will be inside the triangle if a,b > 0 and a+b < 1 (The line a+b=1 is \
the other side of the triangle.)

The equations is  p - p1 = a (p2 - p1) + b (p3 - p1). (There is one for x and \
another for y). Solving the equations using Cramer\[CloseCurlyQuote]s rule, \
we get

a = det([p - p1    p3 - p1])/det([p2 - p1   p3 - p1])        and        b = \
det([p2 - p1    p - p1])/det([p2 - p1   p3 - p1])

We don\[CloseCurlyQuote]t want to use divisions (slow and dangerous!). Take \
the first test we need to perform. n/d = a < 0. There are three alternatives \
(d = 0, d < 0, d > 0). If d = 0, we want to fail, because this means the \
triangle is degenerate. If d > 0, we can simply test the numerator n > 0. If \
d < 0, we need to test for n < 0. If s = sign(d), then we can perform all \
tests at the same time using the expression s * n > 0. This greatly \
simplifies the test.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"baricentrictriangleinsidetest", "[", 
   RowBox[{"p1_", ",", " ", "p2_", ",", " ", "p3_", ",", " ", "p_"}], "]"}], 
  " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"p21", " ", "=", " ", 
       RowBox[{"p2", "-", "p1"}]}], ",", " ", 
      RowBox[{"p31", " ", "=", " ", 
       RowBox[{"p3", "-", "p1"}]}], ",", " ", 
      RowBox[{"q", " ", "=", " ", 
       RowBox[{"p", "-", "p1"}]}]}], "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"d", " ", "=", " ", 
         RowBox[{"Det", "[", 
          RowBox[{"{", 
           RowBox[{"p21", ",", "p31"}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"na", " ", "=", " ", 
         RowBox[{"Det", "[", 
          RowBox[{"{", 
           RowBox[{"q", ",", "p31"}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"nb", " ", "=", " ", 
         RowBox[{"Det", "[", 
          RowBox[{"{", 
           RowBox[{"p21", ",", "q"}], "}"}], "]"}]}]}], "}"}], ",", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"s", " ", "=", " ", 
          RowBox[{"Sign", "[", "d", "]"}]}], "}"}], ",", " ", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"s", " ", "na"}], " ", ">", " ", "0"}], " ", "&&", " ", 
           RowBox[{
            RowBox[{"s", " ", "nb"}], " ", ">", " ", "0"}], " ", "&&", " ", 
           RowBox[{
            RowBox[{"s", " ", 
             RowBox[{"(", 
              RowBox[{"na", "+", "nb"}], ")"}]}], " ", "\[LessEqual]", " ", 
            RowBox[{"s", " ", "d"}]}]}], ",", " ", "1", ",", " ", "0"}], 
         "]"}]}], "]"}]}], "]"}]}], "]"}], " "}]], "Input",
 InitializationCell->True],

Cell["Here is what the test looks like. Same results, of course.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"sp1", " ", "=", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1"}], ",", 
        RowBox[{"-", "1"}]}], "}"}]}], ",", 
     RowBox[{"sp2", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "1"}], "/", "2"}], ",", 
        RowBox[{"3", "/", "2"}]}], "}"}]}], ",", " ", 
     RowBox[{"sp3", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"1", ",", 
        RowBox[{"-", "1"}]}], "}"}]}], ",", " ", 
     RowBox[{"n", "=", "24"}]}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Show", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Graphics", "[", 
        RowBox[{"Raster", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"baricentrictriangleinsidetest", "[", 
             RowBox[{"p1", ",", "p2", ",", "p3", ",", 
              RowBox[{"{", 
               RowBox[{"x", ",", "y"}], "}"}]}], "]"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{"y", ",", " ", 
              RowBox[{
               RowBox[{"-", "3"}], "+", 
               RowBox[{"3", "/", "n"}]}], ",", 
              RowBox[{"3", "-", 
               RowBox[{"3", "/", "n"}]}], ",", 
              RowBox[{"6", "/", "n"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"x", ",", " ", 
              RowBox[{
               RowBox[{"-", "3"}], "+", 
               RowBox[{"3", "/", "n"}]}], ",", 
              RowBox[{"3", "-", 
               RowBox[{"3", "/", "n"}]}], ",", 
              RowBox[{"6", "/", "n"}]}], "}"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "3"}], ",", 
              RowBox[{"-", "3"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"3", ",", "3"}], "}"}]}], "}"}], ",", 
          RowBox[{"ColorFunction", "\[Rule]", "\"\<BeachColors\>\""}]}], 
         "]"}], "]"}], ",", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", 
         RowBox[{"Green", ",", " ", "Thick", ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{"p1", ",", "p2", ",", "p3", ",", "p1"}], "}"}], "]"}]}], 
         " ", "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Graphics", "[", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"pt", "=", 
            RowBox[{"{", 
             RowBox[{"p1", ",", "p2", ",", "p3"}], "}"}]}], "}"}], ",", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"Text", "[", 
             RowBox[{
              RowBox[{"Style", "[", 
               RowBox[{
                RowBox[{"Subscript", "[", 
                 RowBox[{"p", ",", "i"}], "]"}], ",", " ", "Large"}], "]"}], 
              ",", 
              RowBox[{
               RowBox[{"pt", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "+", 
               RowBox[{"{", 
                RowBox[{"0", ",", 
                 RowBox[{"1", "/", "4"}]}], "}"}]}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}]}], "]"}], 
        "]"}], ",", " ", 
       RowBox[{"PlotRange", "\[Rule]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "3"}], ",", "3"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "3"}], ",", "3"}], "}"}]}], "}"}]}], ",", " ", 
       RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p1", ",", "sp1"}], "}"}], ",", " ", "Locator"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p2", ",", "sp2"}], "}"}], ",", " ", "Locator"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p3", ",", "sp3"}], "}"}], ",", " ", "Locator"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p1$$ = {-1, -1}, $CellContext`p2$$ = {
     Rational[-1, 2], 
     Rational[3, 2]}, $CellContext`p3$$ = {1, -1}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p1$$], {-1, -1}}, Automatic}, {{
       Hold[$CellContext`p2$$], {
        Rational[-1, 2], 
        Rational[3, 2]}}, Automatic}, {{
       Hold[$CellContext`p3$$], {1, -1}}, Automatic}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p1$$ = {-1, -1}, $CellContext`p2$$ = {
          Rational[-1, 2], 
          Rational[3, 2]}, $CellContext`p3$$ = {1, -1}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[
         Raster[
          Table[
           $CellContext`baricentrictriangleinsidetest[$CellContext`p1$$, \
$CellContext`p2$$, $CellContext`p3$$, {$CellContext`x, $CellContext`y}], \
{$CellContext`y, -3 + 3/24, 3 - 3/24, 6/24}, {$CellContext`x, -3 + 3/24, 3 - 
            3/24, 6/24}], {{-3, -3}, {3, 3}}, ColorFunction -> 
          "BeachColors"]], 
        Graphics[{Green, Thick, 
          
          Line[{$CellContext`p1$$, $CellContext`p2$$, $CellContext`p3$$, \
$CellContext`p1$$}]}], 
        Graphics[
         Module[{$CellContext`pt = {$CellContext`p1$$, $CellContext`p2$$, \
$CellContext`p3$$}}, 
          Table[
           Text[
            Style[
             Subscript[$CellContext`p, $CellContext`i], Large], 
            Part[$CellContext`pt, $CellContext`i] + {
             0, 1/4}], {$CellContext`i, 1, 
            Length[$CellContext`pt]}]]], PlotRange -> {{-3, 3}, {-3, 3}}, 
        ImageSize -> Large], 
      "Specifications" :> {{{$CellContext`p1$$, {-1, -1}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`p2$$, {
           Rational[-1, 2], 
           Rational[3, 2]}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`p3$$, {1, -1}}, Automatic, ControlType -> 
         Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {318., 324.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`baricentrictriangleinsidetest[
         Pattern[$CellContext`p1, 
          Blank[]], 
         Pattern[$CellContext`p2, 
          Blank[]], 
         Pattern[$CellContext`p3, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := 
       Module[{$CellContext`p21 = $CellContext`p2 - $CellContext`p1, \
$CellContext`p31 = $CellContext`p3 - $CellContext`p1, $CellContext`q = \
$CellContext`p - $CellContext`p1}, 
         Module[{$CellContext`d = 
           Det[{$CellContext`p21, $CellContext`p31}], $CellContext`na = 
           Det[{$CellContext`q, $CellContext`p31}], $CellContext`nb = 
           Det[{$CellContext`p21, $CellContext`q}]}, 
          Module[{$CellContext`s = Sign[$CellContext`d]}, 
           If[
            
            And[$CellContext`s $CellContext`na > 
             0, $CellContext`s $CellContext`nb > 
             0, $CellContext`s ($CellContext`na + $CellContext`nb) <= \
$CellContext`s $CellContext`d], 1, 0]]]], $CellContext`s = 
       CompiledFunction[{10, 11., 5468}, {
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 0, 3}, {3, 0, 
         4}, {3, 0, 5}, {3, 0, 6}, {3, 0, 7}, {1, 0, 
         1}}, {{False, {1, 0, 2}}, {True, {1, 0, 4}}}, {5, 2, 12, 0, 
         0}, {{19, 2, 8}, {13, 0, 8, 9}, {19, 3, 8}, {13, 7, 8, 10}, {16, 9, 
          10, 9}, {19, 2, 10}, {13, 6, 10, 8}, {19, 1, 10}, {13, 10, 3, 10}, {
          16, 8, 10, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 0}, {19, 4, 
          9}, {13, 2, 9, 8}, {19, 5, 9}, {13, 7, 9, 10}, {16, 8, 10, 8}, {19, 
          4, 10}, {13, 6, 10, 9}, {19, 3, 10}, {13, 10, 5, 10}, {16, 9, 10, 
          9}, {13, 8, 9, 8}, {40, 44, 3, 0, 8, 2, 0, 1}, {24, 0, 1, 0}, {2, 0,
           28}, {19, 4, 8}, {13, 2, 8, 9}, {19, 5, 8}, {13, 7, 8, 10}, {16, 9,
           10, 9}, {19, 4, 10}, {13, 6, 10, 8}, {19, 3, 10}, {13, 10, 5, 
          10}, {16, 8, 10, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 0}, {19,
           0, 9}, {13, 9, 4, 9}, {19, 1, 8}, {13, 7, 8, 10}, {16, 9, 10, 9}, {
          19, 0, 10}, {13, 6, 10, 8}, {19, 5, 10}, {13, 1, 10, 11}, {16, 8, 
          11, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 1}, {24, 0, 1, 1}, {
          5, 1, 3}, {3, 2}, {5, 2, 3}, {2, 3, 3}, {5, 4, 1}, {3, 2}, {5, 2, 
          1}, {1}}, 
         Function[{$CellContext`x1, $CellContext`y1, $CellContext`x2, \
$CellContext`y2, $CellContext`x3, $CellContext`y3, $CellContext`x, \
$CellContext`y}, 
          If[
           And[
           Sign[($CellContext`x1 - $CellContext`x2) ($CellContext`y - \
$CellContext`y2) + ($CellContext`x - $CellContext`x2) (-$CellContext`y1 + \
$CellContext`y2)] == 
            Sign[($CellContext`x2 - $CellContext`x3) ($CellContext`y - \
$CellContext`y3) + ($CellContext`x - $CellContext`x3) (-$CellContext`y2 + \
$CellContext`y3)], 
            Sign[($CellContext`x2 - $CellContext`x3) ($CellContext`y - \
$CellContext`y3) + ($CellContext`x - $CellContext`x3) (-$CellContext`y2 + \
$CellContext`y3)] == 
            Sign[(-$CellContext`x1 + $CellContext`x3) ($CellContext`y - \
$CellContext`y1) + ($CellContext`x - $CellContext`x1) ($CellContext`y1 - \
$CellContext`y3)]], True, False]], Evaluate], 
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
A final alternative alternative is to count the number of intersections \
between a ray emanating from the point in the right direction and the \
segments of the triangle.  

For that, we need decide whether there is an intersection or not. The silly \
way of doing this is to try to compute the intersection and see if the point \
is to the left of the intersection. But we don\[CloseCurlyQuote]t care about \
the position of the intersection. We only care if our point is to its left.

A much better way is to use an implicit test. The implicit equation for a \
line through x1,y1 and x2,y2 is (x-x1)(y2-y1) - (y-y1)(x2-x1) == 0. This can \
be written as  a x + b y + c == 0, where a = y2-y1, b = -(x2-x1), c = - a x1 \
- b y1

Clearly, if we set x to infinity, the sign of the implicit equation depends \
on the sign of y2-y1. We want the sign to be positive at infinity, so we \
multiply {a, b, c} by sign of y2-y1.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicitline", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"x1_", ",", " ", "y1_"}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"x2_", ",", " ", "y2_"}], "}"}]}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"a", " ", "=", " ", 
       RowBox[{"y2", "-", "y1"}]}], ",", " ", 
      RowBox[{"b", " ", "=", " ", 
       RowBox[{"x1", "-", "x2"}]}]}], "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"c", " ", "=", " ", 
         RowBox[{"-", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"a", " ", "x1"}], " ", "+", " ", 
            RowBox[{"b", " ", "y1"}]}], ")"}]}]}], ",", " ", 
        RowBox[{"s", " ", "=", " ", 
         RowBox[{"Sign", "[", "a", "]"}]}]}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Sort", "[", 
         RowBox[{"{", 
          RowBox[{"y1", ",", "y2"}], "}"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"s", " ", "a"}], ",", " ", 
          RowBox[{"s", " ", "b"}], ",", " ", 
          RowBox[{"s", " ", "c"}], ",", " ", "s"}], "}"}]}], "}"}]}], "]"}]}],
    "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicitlinewindingnumber", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"ymin_", ",", " ", "ymax_"}], "}"}], ",", " ", 
      RowBox[{"el", ":", 
       RowBox[{"{", 
        RowBox[{"a_", ",", " ", "b_", ",", " ", "c_", ",", " ", "s_"}], 
        "}"}]}]}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"x_", ",", " ", "y_"}], "}"}]}], "]"}], " ", ":=", " ", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"y", " ", ">", " ", "ymin"}], " ", "&&", " ", 
     RowBox[{"y", " ", "\[LessEqual]", " ", "ymax"}], " ", "&&", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"a", " ", "x"}], " ", "+", " ", 
       RowBox[{"b", " ", "y"}], " ", "+", " ", "c"}], " ", "<", " ", "0"}]}], 
    ",", " ", "s", ",", " ", "0"}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["Here is what this implicit line primitive looks like.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"l", " ", "=", " ", 
        RowBox[{"implicitline", "[", 
         RowBox[{"p1", ",", "p2"}], "]"}]}], ",", " ", 
       RowBox[{"n", "=", "24"}], ",", " ", 
       RowBox[{"cf", " ", "=", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"ColorData", "[", 
            RowBox[{"2", ",", "\"\<ColorList\>\""}], "]"}], "[", 
           RowBox[{"[", 
            RowBox[{"#1", "+", "5"}], "]"}], "]"}], "&"}], ")"}]}]}], "}"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{"Show", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Graphics", "[", 
        RowBox[{
         RowBox[{"Raster", "[", 
          RowBox[{
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"implicitlinewindingnumber", "[", 
              RowBox[{"l", ",", 
               RowBox[{"{", 
                RowBox[{"x", ",", "y"}], "}"}]}], "]"}], ",", " ", 
             RowBox[{"{", 
              RowBox[{"y", ",", " ", 
               RowBox[{
                RowBox[{"-", "3"}], "+", 
                RowBox[{"3", "/", "n"}]}], ",", 
               RowBox[{"3", "-", 
                RowBox[{"3", "/", "n"}]}], ",", 
               RowBox[{"6", "/", "n"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"x", ",", " ", 
               RowBox[{
                RowBox[{"-", "3"}], "+", 
                RowBox[{"3", "/", "n"}]}], ",", 
               RowBox[{"3", "-", 
                RowBox[{"3", "/", "n"}]}], ",", 
               RowBox[{"6", "/", "n"}]}], "}"}]}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "3"}], ",", 
               RowBox[{"-", "3"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"3", ",", "3"}], "}"}]}], "}"}], ",", 
           RowBox[{"ColorFunctionScaling", "\[Rule]", "False"}], ",", 
           RowBox[{"ColorFunction", "\[Rule]", "cf"}]}], "]"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", "3"}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", 
         RowBox[{"Green", ",", " ", "Thick", ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{"p1", ",", "p2"}], "}"}], "]"}], ",", "Black", ",", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
             "\"\<\!\(\*SubscriptBox[\(p\), \(1\)]\)\>\"", ",", " ", 
              "Large"}], "]"}], ",", 
            RowBox[{"p1", "+", 
             RowBox[{"{", 
              RowBox[{"0", ",", 
               RowBox[{"1", "/", "4"}]}], "}"}]}]}], "]"}], ",", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
             "\"\<\!\(\*SubscriptBox[\(p\), \(2\)]\)\>\"", ",", " ", 
              "Large"}], "]"}], ",", 
            RowBox[{"p2", "+", 
             RowBox[{"{", 
              RowBox[{"0", ",", 
               RowBox[{"1", "/", "3"}]}], "}"}]}]}], "]"}]}], "}"}], "]"}]}], 
      "]"}]}], "]"}], ",", " ", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p1", ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "}"}], ",", " ", 
     "Locator"}], "}"}], ",", " ", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"p2", ",", " ", 
       RowBox[{"{", 
        RowBox[{"1", ",", " ", 
         RowBox[{"-", "1"}]}], "}"}]}], "}"}], ",", " ", "Locator"}], "}"}]}],
   "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p1$$ = {-1, 1}, $CellContext`p2$$ = {1, -1},
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p1$$], {-1, 1}}, Automatic}, {{
       Hold[$CellContext`p2$$], {1, -1}}, Automatic}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p1$$ = {-1, 1}, $CellContext`p2$$ = {
         1, -1}}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`l$ = $CellContext`implicitline[$CellContext`p1$$, \
$CellContext`p2$$], $CellContext`n$ = 24, $CellContext`cf$ = Part[
           ColorData[2, "ColorList"], # + 5]& }, 
        Show[
         Graphics[
          Raster[
           Table[
            $CellContext`implicitlinewindingnumber[$CellContext`l$, \
{$CellContext`x, $CellContext`y}], {$CellContext`y, -3 + 3/$CellContext`n$, 3 - 
             3/$CellContext`n$, 6/$CellContext`n$}, {$CellContext`x, -3 + 
             3/$CellContext`n$, 3 - 3/$CellContext`n$, 
             6/$CellContext`n$}], {{-3, -3}, {3, 3}}, ColorFunctionScaling -> 
           False, ColorFunction -> $CellContext`cf$], PlotRange -> 3, 
          ImageSize -> Large], 
         Graphics[{Green, Thick, 
           Line[{$CellContext`p1$$, $CellContext`p2$$}], Black, 
           Text[
            Style[
            "\!\(\*SubscriptBox[\(p\), \(1\)]\)", 
             Large], $CellContext`p1$$ + {0, 1/4}], 
           Text[
            Style[
            "\!\(\*SubscriptBox[\(p\), \(2\)]\)", 
             Large], $CellContext`p2$$ + {0, 1/3}]}]]], 
      "Specifications" :> {{{$CellContext`p1$$, {-1, 1}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`p2$$, {1, -1}}, Automatic, 
         ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {318., 324.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`implicitline[{
          Pattern[$CellContext`x1, 
           Blank[]], 
          Pattern[$CellContext`y1, 
           Blank[]]}, {
          Pattern[$CellContext`x2, 
           Blank[]], 
          Pattern[$CellContext`y2, 
           Blank[]]}] := 
       Module[{$CellContext`a = $CellContext`y2 - $CellContext`y1, \
$CellContext`b = $CellContext`x1 - $CellContext`x2}, 
         Module[{$CellContext`c = -($CellContext`a $CellContext`x1 + \
$CellContext`b $CellContext`y1), $CellContext`s = Sign[$CellContext`a]}, {
           
           Sort[{$CellContext`y1, $CellContext`y2}], {$CellContext`s \
$CellContext`a, $CellContext`s $CellContext`b, $CellContext`s $CellContext`c, \
$CellContext`s}}]], $CellContext`s = CompiledFunction[{10, 11., 5468}, {
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 0, 3}, {3, 0, 
         4}, {3, 0, 5}, {3, 0, 6}, {3, 0, 7}, {1, 0, 
         1}}, {{False, {1, 0, 2}}, {True, {1, 0, 4}}}, {5, 2, 12, 0, 
         0}, {{19, 2, 8}, {13, 0, 8, 9}, {19, 3, 8}, {13, 7, 8, 10}, {16, 9, 
          10, 9}, {19, 2, 10}, {13, 6, 10, 8}, {19, 1, 10}, {13, 10, 3, 10}, {
          16, 8, 10, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 0}, {19, 4, 
          9}, {13, 2, 9, 8}, {19, 5, 9}, {13, 7, 9, 10}, {16, 8, 10, 8}, {19, 
          4, 10}, {13, 6, 10, 9}, {19, 3, 10}, {13, 10, 5, 10}, {16, 9, 10, 
          9}, {13, 8, 9, 8}, {40, 44, 3, 0, 8, 2, 0, 1}, {24, 0, 1, 0}, {2, 0,
           28}, {19, 4, 8}, {13, 2, 8, 9}, {19, 5, 8}, {13, 7, 8, 10}, {16, 9,
           10, 9}, {19, 4, 10}, {13, 6, 10, 8}, {19, 3, 10}, {13, 10, 5, 
          10}, {16, 8, 10, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 0}, {19,
           0, 9}, {13, 9, 4, 9}, {19, 1, 8}, {13, 7, 8, 10}, {16, 9, 10, 9}, {
          19, 0, 10}, {13, 6, 10, 8}, {19, 5, 10}, {13, 1, 10, 11}, {16, 8, 
          11, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 1}, {24, 0, 1, 1}, {
          5, 1, 3}, {3, 2}, {5, 2, 3}, {2, 3, 3}, {5, 4, 1}, {3, 2}, {5, 2, 
          1}, {1}}, 
         Function[{$CellContext`x1, $CellContext`y1, $CellContext`x2, \
$CellContext`y2, $CellContext`x3, $CellContext`y3, $CellContext`x, \
$CellContext`y}, 
          If[
           And[
           Sign[($CellContext`x1 - $CellContext`x2) ($CellContext`y - \
$CellContext`y2) + ($CellContext`x - $CellContext`x2) (-$CellContext`y1 + \
$CellContext`y2)] == 
            Sign[($CellContext`x2 - $CellContext`x3) ($CellContext`y - \
$CellContext`y3) + ($CellContext`x - $CellContext`x3) (-$CellContext`y2 + \
$CellContext`y3)], 
            Sign[($CellContext`x2 - $CellContext`x3) ($CellContext`y - \
$CellContext`y3) + ($CellContext`x - $CellContext`x3) (-$CellContext`y2 + \
$CellContext`y3)] == 
            Sign[(-$CellContext`x1 + $CellContext`x3) ($CellContext`y - \
$CellContext`y1) + ($CellContext`x - $CellContext`x1) ($CellContext`y1 - \
$CellContext`y3)]], True, False]], 
         Evaluate], $CellContext`implicitlinewindingnumber[{{
           Pattern[$CellContext`ymin, 
            Blank[]], 
           Pattern[$CellContext`ymax, 
            Blank[]]}, 
          Pattern[$CellContext`el, {
            Pattern[$CellContext`a, 
             Blank[]], 
            Pattern[$CellContext`b, 
             Blank[]], 
            Pattern[$CellContext`c, 
             Blank[]], 
            Pattern[$CellContext`s, 
             Blank[]]}]}, {
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := If[
         And[$CellContext`y > $CellContext`ymin, $CellContext`y <= \
$CellContext`ymax, $CellContext`a $CellContext`x + $CellContext`b \
$CellContext`y + $CellContext`c < 0], $CellContext`s, 0]}; 
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
Given a triangle, we can generate one implicit line for each of its edges\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicittriangle", "[", 
   RowBox[{
    RowBox[{"p1", ":", 
     RowBox[{"{", 
      RowBox[{"x1_", ",", " ", "y1_"}], "}"}]}], ",", " ", 
    RowBox[{"p2", ":", 
     RowBox[{"{", 
      RowBox[{"x2_", ",", " ", "y2_"}], "}"}]}], ",", " ", 
    RowBox[{"p3", ":", 
     RowBox[{"{", 
      RowBox[{"x3_", ",", " ", "y3_"}], "}"}]}]}], "]"}], " ", ":=", " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"implicitline", "[", 
     RowBox[{"p1", ",", "p2"}], "]"}], ",", " ", 
    RowBox[{"implicitline", "[", 
     RowBox[{"p2", ",", "p3"}], "]"}], ",", " ", 
    RowBox[{"implicitline", "[", 
     RowBox[{"p3", ",", "p1"}], "]"}]}], "}"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
Given these three implicit lines, we can now count the number of \
intersections between a ray starting from a point and going to infinity on \
the right\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicittrianglewindingnumber", "[", 
   RowBox[{
    RowBox[{"it", ":", 
     RowBox[{"{", 
      RowBox[{"l1_", ",", " ", "l2_", ",", " ", "l3_"}], "}"}]}], ",", " ", 
    RowBox[{"p", ":", 
     RowBox[{"{", 
      RowBox[{"x_", ",", " ", "y_"}], "}"}]}]}], "]"}], " ", ":=", 
  RowBox[{"Sum", "[", 
   RowBox[{
    RowBox[{"implicitlinewindingnumber", "[", 
     RowBox[{"l", ",", "p"}], "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"l", ",", " ", "it"}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["Here is what the demo looks like. Same, again.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"sp1", " ", "=", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1"}], ",", 
        RowBox[{"-", "1"}]}], "}"}]}], ",", 
     RowBox[{"sp2", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "1"}], "/", "2"}], ",", 
        RowBox[{"3", "/", "2"}]}], "}"}]}], ",", " ", 
     RowBox[{"sp3", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"1", ",", 
        RowBox[{"-", "1"}]}], "}"}]}], ",", " ", 
     RowBox[{"n", "=", "24"}]}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"it", "=", 
          RowBox[{"implicittriangle", "[", 
           RowBox[{"p2", ",", "p1", ",", "p3"}], "]"}]}], ",", 
         RowBox[{"cf", " ", "=", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"ColorData", "[", 
              RowBox[{"2", ",", "\"\<ColorList\>\""}], "]"}], "[", 
             RowBox[{"[", 
              RowBox[{"#1", "+", "5"}], "]"}], "]"}], "&"}], ")"}]}]}], "}"}],
        ",", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Graphics", "[", 
          RowBox[{"Raster", "[", 
           RowBox[{
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"implicittrianglewindingnumber", "[", 
               RowBox[{"it", ",", 
                RowBox[{"{", 
                 RowBox[{"x", ",", "y"}], "}"}]}], "]"}], ",", " ", 
              RowBox[{"{", 
               RowBox[{"y", ",", " ", 
                RowBox[{
                 RowBox[{"-", "3"}], "+", 
                 RowBox[{"3", "/", "n"}]}], ",", 
                RowBox[{"3", "-", 
                 RowBox[{"3", "/", "n"}]}], ",", 
                RowBox[{"6", "/", "n"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"x", ",", " ", 
                RowBox[{
                 RowBox[{"-", "3"}], "+", 
                 RowBox[{"3", "/", "n"}]}], ",", 
                RowBox[{"3", "-", 
                 RowBox[{"3", "/", "n"}]}], ",", 
                RowBox[{"6", "/", "n"}]}], "}"}]}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{
                RowBox[{"-", "3"}], ",", 
                RowBox[{"-", "3"}]}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"3", ",", "3"}], "}"}]}], "}"}], ",", 
            RowBox[{"ColorFunctionScaling", "\[Rule]", "False"}], ",", 
            RowBox[{"ColorFunction", "\[Rule]", "cf"}]}], "]"}], "]"}], ",", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{"Green", ",", " ", "Thick", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{"p1", ",", "p2", ",", "p3", ",", "p1"}], "}"}], "]"}]}],
            "}"}], "]"}], ",", " ", "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"Module", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"pt", "=", 
              RowBox[{"{", 
               RowBox[{"p1", ",", "p2", ",", "p3"}], "}"}]}], "}"}], ",", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", "i"}], "]"}], ",", " ", "Large"}], "]"}],
                 ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", 
                   RowBox[{"1", "/", "4"}]}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}]}], "]"}],
           "]"}], ",", " ", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "3"}], ",", "3"}], "}"}], ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "3"}], ",", "3"}], "}"}]}], "}"}]}], ",", " ", 
         RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p1", ",", "sp1"}], "}"}], ",", " ", "Locator"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p2", ",", "sp2"}], "}"}], ",", " ", "Locator"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p3", ",", "sp3"}], "}"}], ",", " ", "Locator"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p1$$ = {-1, -1}, $CellContext`p2$$ = {
     Rational[-1, 2], 
     Rational[3, 2]}, $CellContext`p3$$ = {1, -1}, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p1$$], {-1, -1}}, Automatic}, {{
       Hold[$CellContext`p2$$], {
        Rational[-1, 2], 
        Rational[3, 2]}}, Automatic}, {{
       Hold[$CellContext`p3$$], {1, -1}}, Automatic}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p1$$ = {-1, -1}, $CellContext`p2$$ = {
          Rational[-1, 2], 
          Rational[3, 2]}, $CellContext`p3$$ = {1, -1}}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`it$ = \
$CellContext`implicittriangle[$CellContext`p2$$, $CellContext`p1$$, \
$CellContext`p3$$], $CellContext`cf$ = Part[
           ColorData[2, "ColorList"], # + 5]& }, 
        Show[
         Graphics[
          Raster[
           Table[
            $CellContext`implicittrianglewindingnumber[$CellContext`it$, \
{$CellContext`x, $CellContext`y}], {$CellContext`y, -3 + 3/24, 3 - 3/24, 6/
             24}, {$CellContext`x, -3 + 3/24, 3 - 3/24, 6/24}], {{-3, -3}, {3,
            3}}, ColorFunctionScaling -> False, 
           ColorFunction -> $CellContext`cf$]], 
         Graphics[{Green, Thick, 
           
           Line[{$CellContext`p1$$, $CellContext`p2$$, $CellContext`p3$$, \
$CellContext`p1$$}]}], 
         Graphics[
          
          Module[{$CellContext`pt = {$CellContext`p1$$, $CellContext`p2$$, \
$CellContext`p3$$}}, 
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i], Large], 
             Part[$CellContext`pt, $CellContext`i] + {
              0, 1/4}], {$CellContext`i, 1, 
             Length[$CellContext`pt]}]]], PlotRange -> {{-3, 3}, {-3, 3}}, 
         ImageSize -> Large]], 
      "Specifications" :> {{{$CellContext`p1$$, {-1, -1}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`p2$$, {
           Rational[-1, 2], 
           Rational[3, 2]}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`p3$$, {1, -1}}, Automatic, ControlType -> 
         Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {318., 324.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      Attributes[$CellContext`it$] = {
        Temporary}, $CellContext`implicittriangle[
         Pattern[$CellContext`p1, {
           Pattern[$CellContext`x1, 
            Blank[]], 
           Pattern[$CellContext`y1, 
            Blank[]]}], 
         Pattern[$CellContext`p2, {
           Pattern[$CellContext`x2, 
            Blank[]], 
           Pattern[$CellContext`y2, 
            Blank[]]}], 
         Pattern[$CellContext`p3, {
           Pattern[$CellContext`x3, 
            Blank[]], 
           Pattern[$CellContext`y3, 
            Blank[]]}]] := {
         $CellContext`implicitline[$CellContext`p1, $CellContext`p2], 
         $CellContext`implicitline[$CellContext`p2, $CellContext`p3], 
         $CellContext`implicitline[$CellContext`p3, $CellContext`p1]}, \
$CellContext`implicitline[{
          Pattern[$CellContext`x1, 
           Blank[]], 
          Pattern[$CellContext`y1, 
           Blank[]]}, {
          Pattern[$CellContext`x2, 
           Blank[]], 
          Pattern[$CellContext`y2, 
           Blank[]]}] := 
       Module[{$CellContext`a = $CellContext`y2 - $CellContext`y1, \
$CellContext`b = $CellContext`x1 - $CellContext`x2}, 
         Module[{$CellContext`c = -($CellContext`a $CellContext`x1 + \
$CellContext`b $CellContext`y1), $CellContext`s = Sign[$CellContext`a]}, {
           
           Sort[{$CellContext`y1, $CellContext`y2}], {$CellContext`s \
$CellContext`a, $CellContext`s $CellContext`b, $CellContext`s $CellContext`c, \
$CellContext`s}}]], $CellContext`s = CompiledFunction[{10, 11., 5468}, {
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 0, 3}, {3, 0, 
         4}, {3, 0, 5}, {3, 0, 6}, {3, 0, 7}, {1, 0, 
         1}}, {{False, {1, 0, 2}}, {True, {1, 0, 4}}}, {5, 2, 12, 0, 
         0}, {{19, 2, 8}, {13, 0, 8, 9}, {19, 3, 8}, {13, 7, 8, 10}, {16, 9, 
          10, 9}, {19, 2, 10}, {13, 6, 10, 8}, {19, 1, 10}, {13, 10, 3, 10}, {
          16, 8, 10, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 0}, {19, 4, 
          9}, {13, 2, 9, 8}, {19, 5, 9}, {13, 7, 9, 10}, {16, 8, 10, 8}, {19, 
          4, 10}, {13, 6, 10, 9}, {19, 3, 10}, {13, 10, 5, 10}, {16, 9, 10, 
          9}, {13, 8, 9, 8}, {40, 44, 3, 0, 8, 2, 0, 1}, {24, 0, 1, 0}, {2, 0,
           28}, {19, 4, 8}, {13, 2, 8, 9}, {19, 5, 8}, {13, 7, 8, 10}, {16, 9,
           10, 9}, {19, 4, 10}, {13, 6, 10, 8}, {19, 3, 10}, {13, 10, 5, 
          10}, {16, 8, 10, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 0}, {19,
           0, 9}, {13, 9, 4, 9}, {19, 1, 8}, {13, 7, 8, 10}, {16, 9, 10, 9}, {
          19, 0, 10}, {13, 6, 10, 8}, {19, 5, 10}, {13, 1, 10, 11}, {16, 8, 
          11, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 1}, {24, 0, 1, 1}, {
          5, 1, 3}, {3, 2}, {5, 2, 3}, {2, 3, 3}, {5, 4, 1}, {3, 2}, {5, 2, 
          1}, {1}}, 
         Function[{$CellContext`x1, $CellContext`y1, $CellContext`x2, \
$CellContext`y2, $CellContext`x3, $CellContext`y3, $CellContext`x, \
$CellContext`y}, 
          If[
           And[
           Sign[($CellContext`x1 - $CellContext`x2) ($CellContext`y - \
$CellContext`y2) + ($CellContext`x - $CellContext`x2) (-$CellContext`y1 + \
$CellContext`y2)] == 
            Sign[($CellContext`x2 - $CellContext`x3) ($CellContext`y - \
$CellContext`y3) + ($CellContext`x - $CellContext`x3) (-$CellContext`y2 + \
$CellContext`y3)], 
            Sign[($CellContext`x2 - $CellContext`x3) ($CellContext`y - \
$CellContext`y3) + ($CellContext`x - $CellContext`x3) (-$CellContext`y2 + \
$CellContext`y3)] == 
            Sign[(-$CellContext`x1 + $CellContext`x3) ($CellContext`y - \
$CellContext`y1) + ($CellContext`x - $CellContext`x1) ($CellContext`y1 - \
$CellContext`y3)]], True, False]], 
         Evaluate], $CellContext`implicittrianglewindingnumber[
         Pattern[$CellContext`it, {
           Pattern[$CellContext`l1, 
            Blank[]], 
           Pattern[$CellContext`l2, 
            Blank[]], 
           Pattern[$CellContext`l3, 
            Blank[]]}], 
         Pattern[$CellContext`p, {
           Pattern[$CellContext`x, 
            Blank[]], 
           Pattern[$CellContext`y, 
            Blank[]]}]] := Sum[
         $CellContext`implicitlinewindingnumber[$CellContext`l, \
$CellContext`p], {$CellContext`l, $CellContext`it}], \
$CellContext`implicitlinewindingnumber[{{
           Pattern[$CellContext`ymin, 
            Blank[]], 
           Pattern[$CellContext`ymax, 
            Blank[]]}, 
          Pattern[$CellContext`el, {
            Pattern[$CellContext`a, 
             Blank[]], 
            Pattern[$CellContext`b, 
             Blank[]], 
            Pattern[$CellContext`c, 
             Blank[]], 
            Pattern[$CellContext`s, 
             Blank[]]}]}, {
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := If[
         And[$CellContext`y > $CellContext`ymin, $CellContext`y <= \
$CellContext`ymax, $CellContext`a $CellContext`x + $CellContext`b \
$CellContext`y + $CellContext`c < 0], $CellContext`s, 0], 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["What about polygons? We generalize the procedure we used. ", "Text"],

Cell["\<\
The first step is to create one implicit line test for each edge in the \
polygon.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicitpolygon", "[", 
   RowBox[{"pt", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"_", ",", "_"}], "}"}], "..."}], "}"}]}], "]"}], " ", ":=", 
  " ", 
  RowBox[{"Map", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Apply", "[", 
      RowBox[{"implicitline", ",", " ", "#"}], "]"}], "&"}], ",", " ", 
    RowBox[{"Partition", "[", 
     RowBox[{
      RowBox[{"Append", "[", 
       RowBox[{"pt", ",", 
        RowBox[{"First", "[", "pt", "]"}]}], "]"}], ",", " ", "2", ",", " ", 
      "1"}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["\<\
Given the list of implicit lines, all we have to do is add the sign of the \
point relative to all of them.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"implicitpolygonwindingnumber", "[", 
   RowBox[{"ip_", ",", " ", "p_"}], "]"}], " ", ":=", " ", 
  RowBox[{"Sum", "[", 
   RowBox[{
    RowBox[{"implicitlinewindingnumber", "[", 
     RowBox[{"l", ",", "p"}], "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"l", ",", " ", "ip"}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["Here is a star with n sides.", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"star", "[", 
   RowBox[{"n_", ",", " ", "s_"}], "]"}], " ", ":=", 
  RowBox[{"N", "[", " ", 
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
      RowBox[{"i", ",", " ", "1", ",", " ", "n"}], "}"}]}], "]"}], 
   "]"}]}]], "Input",
 InitializationCell->True],

Cell["And here is the demo.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"n", "=", "24"}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"opt", " ", "=", " ", 
         RowBox[{"orientation", "[", "pt", "]"}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"ip", " ", "=", " ", 
            RowBox[{"implicitpolygon", "[", "opt", "]"}]}], ",", 
           RowBox[{"cf", " ", "=", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"ColorData", "[", 
                RowBox[{"2", ",", "\"\<ColorList\>\""}], "]"}], "[", 
               RowBox[{"[", 
                RowBox[{"#1", "+", "5"}], "]"}], "]"}], "&"}], ")"}]}]}], 
          "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Show", "[", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"Graphics", "[", 
            RowBox[{
             RowBox[{"Raster", "[", 
              RowBox[{
               RowBox[{"Table", "[", 
                RowBox[{
                 RowBox[{"test", "[", 
                  RowBox[{"implicitpolygonwindingnumber", "[", 
                   RowBox[{"ip", ",", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", "y"}], "}"}]}], "]"}], "]"}], ",", " ", 
                 
                 RowBox[{"{", 
                  RowBox[{"y", ",", " ", 
                   RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"3", "/", "n"}]}], ",", 
                   RowBox[{"3", "-", 
                    RowBox[{"3", "/", "n"}]}], ",", 
                   RowBox[{"6", "/", "n"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"x", ",", " ", 
                   RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"3", "/", "n"}]}], ",", 
                   RowBox[{"3", "-", 
                    RowBox[{"3", "/", "n"}]}], ",", 
                   RowBox[{"6", "/", "n"}]}], "}"}]}], "]"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"-", "3"}], ",", 
                   RowBox[{"-", "3"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"3", ",", "3"}], "}"}]}], "}"}], ",", 
               RowBox[{"ColorFunctionScaling", "\[Rule]", "False"}], ",", 
               RowBox[{"ColorFunction", "\[Rule]", "cf"}]}], "]"}], ",", 
             RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "3"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Green", ",", 
              RowBox[{"Line", "[", 
               RowBox[{"Append", "[", 
                RowBox[{"pt", ",", 
                 RowBox[{"First", "[", "pt", "]"}]}], "]"}], "]"}]}], "}"}], 
            "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"Table", "[", 
             RowBox[{
              RowBox[{"Text", "[", 
               RowBox[{
                RowBox[{"Style", "[", 
                 RowBox[{
                  RowBox[{"Subscript", "[", 
                   RowBox[{"p", ",", "i"}], "]"}], ",", " ", "Large"}], "]"}],
                 ",", 
                RowBox[{
                 RowBox[{"pt", "[", 
                  RowBox[{"[", "i", "]"}], "]"}], "+", 
                 RowBox[{"{", 
                  RowBox[{"0", ",", 
                   RowBox[{"1", "/", "4"}]}], "}"}]}]}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"i", ",", "1", ",", 
                RowBox[{"Length", "[", "pt", "]"}]}], "}"}]}], "]"}], "]"}]}],
           "]"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", 
         RowBox[{"2.5", 
          RowBox[{"star", "[", 
           RowBox[{"5", ",", "2"}], "]"}]}]}], "}"}], ",", "Locator", ",", 
       RowBox[{"LocatorAutoCreate", "\[Rule]", "True"}]}], "}"}], ",", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"test", ",", "Identity"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Identity", "\[Rule]", "\"\<count\>\""}], ",", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"OddQ", "[", "#", "]"}], ",", "1", ",", "0"}], "]"}], 
            "&"}], ")"}], "\[Rule]", "\"\<even-odd\>\""}], ",", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"#", "\[NotEqual]", " ", "0"}], " ", ",", "1", ",", " ",
               "0"}], "]"}], "&"}], ")"}], " ", "\[Rule]", " ", 
          "\"\<non-zero\>\""}]}], "}"}]}], "}"}], ",", "\[IndentingNewLine]", 
     
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"orientation", ",", " ", "Identity"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Identity", "\[Rule]", "\"\<right\>\""}], ",", " ", 
         RowBox[{"Reverse", "\[Rule]", "\"\<left\>\""}]}], "}"}]}], "}"}]}], 
    " ", "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`orientation$$ = 
    Identity, $CellContext`pt$$ = {{
    1.469463130731183, -2.0225424859373686`}, {-2.3776412907378837`, 
    0.7725424859373686}, {2.3776412907378837`, 
    0.7725424859373686}, {-1.469463130731183, -2.0225424859373686`}, {0., 
    2.5}}, $CellContext`test$$ = Identity, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{
       1.469463130731183, -2.0225424859373686`}, {-2.3776412907378837`, 
       0.7725424859373686}, {2.3776412907378837`, 
       0.7725424859373686}, {-1.469463130731183, -2.0225424859373686`}, {0., 
       2.5}}}, Automatic}, {{
       Hold[$CellContext`test$$], Identity}, {Identity -> "count", (If[
         OddQ[#], 1, 0]& ) -> "even-odd", (If[# != 0, 1, 0]& ) -> 
       "non-zero"}}, {{
       Hold[$CellContext`orientation$$], Identity}, {
      Identity -> "right", Reverse -> "left"}}}, Typeset`size$$ = {
    576., {286., 290.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`test$301410$$ = 
    False, $CellContext`orientation$301411$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`orientation$$ = 
        Identity, $CellContext`pt$$ = {{
         1.469463130731183, -2.0225424859373686`}, {-2.3776412907378837`, 
         0.7725424859373686}, {2.3776412907378837`, 
         0.7725424859373686}, {-1.469463130731183, -2.0225424859373686`}, {0.,
          2.5}}, $CellContext`test$$ = Identity}, "ControllerVariables" :> {
        Hold[$CellContext`test$$, $CellContext`test$301410$$, False], 
        Hold[$CellContext`orientation$$, $CellContext`orientation$301411$$, 
         False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`opt$ = \
$CellContext`orientation$$[$CellContext`pt$$]}, 
        Module[{$CellContext`ip$ = \
$CellContext`implicitpolygon[$CellContext`opt$], $CellContext`cf$ = Part[
            ColorData[2, "ColorList"], # + 5]& }, 
         Show[
          Graphics[
           Raster[
            Table[
             $CellContext`test$$[
              $CellContext`implicitpolygonwindingnumber[$CellContext`ip$, \
{$CellContext`x, $CellContext`y}]], {$CellContext`y, -3 + 3/24, 3 - 3/24, 6/
              24}, {$CellContext`x, -3 + 3/24, 3 - 3/24, 6/24}], {{-3, -3}, {
            3, 3}}, ColorFunctionScaling -> False, 
            ColorFunction -> $CellContext`cf$], ImageSize -> Large, PlotRange -> 
           3], 
          Graphics[{Thick, Green, 
            Line[
             Append[$CellContext`pt$$, 
              First[$CellContext`pt$$]]]}], 
          Graphics[
           Table[
            Text[
             Style[
              Subscript[$CellContext`p, $CellContext`i], Large], 
             Part[$CellContext`pt$$, $CellContext`i] + {
              0, 1/4}], {$CellContext`i, 1, 
             Length[$CellContext`pt$$]}]]]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{
          1.469463130731183, -2.0225424859373686`}, {-2.3776412907378837`, 
          0.7725424859373686}, {2.3776412907378837`, 
          0.7725424859373686}, {-1.469463130731183, -2.0225424859373686`}, {
          0., 2.5}}}, Automatic, ControlType -> Locator, LocatorAutoCreate -> 
         True}, {{$CellContext`test$$, Identity}, {Identity -> "count", (If[
            OddQ[#], 1, 0]& ) -> "even-odd", (If[# != 0, 1, 0]& ) -> 
          "non-zero"}}, {{$CellContext`orientation$$, Identity}, {
         Identity -> "right", Reverse -> "left"}}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {345., 351.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({
      Attributes[$CellContext`opt$] = {Temporary}, 
       Attributes[$CellContext`ip$] = {
        Temporary}, $CellContext`implicitpolygon[
         Pattern[$CellContext`pt, {
           RepeatedNull[{
             Blank[], 
             Blank[]}]}]] := Map[Apply[$CellContext`implicitline, #]& , 
         Partition[
          Append[$CellContext`pt, 
           First[$CellContext`pt]], 2, 1]], $CellContext`implicitline[{
          Pattern[$CellContext`x1, 
           Blank[]], 
          Pattern[$CellContext`y1, 
           Blank[]]}, {
          Pattern[$CellContext`x2, 
           Blank[]], 
          Pattern[$CellContext`y2, 
           Blank[]]}] := 
       Module[{$CellContext`a = $CellContext`y2 - $CellContext`y1, \
$CellContext`b = $CellContext`x1 - $CellContext`x2}, 
         Module[{$CellContext`c = -($CellContext`a $CellContext`x1 + \
$CellContext`b $CellContext`y1), $CellContext`s = Sign[$CellContext`a]}, {
           
           Sort[{$CellContext`y1, $CellContext`y2}], {$CellContext`s \
$CellContext`a, $CellContext`s $CellContext`b, $CellContext`s $CellContext`c, \
$CellContext`s}}]], $CellContext`s = CompiledFunction[{10, 11., 5468}, {
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real], 
          Blank[Real]}, {{3, 0, 0}, {3, 0, 1}, {3, 0, 2}, {3, 0, 3}, {3, 0, 
         4}, {3, 0, 5}, {3, 0, 6}, {3, 0, 7}, {1, 0, 
         1}}, {{False, {1, 0, 2}}, {True, {1, 0, 4}}}, {5, 2, 12, 0, 
         0}, {{19, 2, 8}, {13, 0, 8, 9}, {19, 3, 8}, {13, 7, 8, 10}, {16, 9, 
          10, 9}, {19, 2, 10}, {13, 6, 10, 8}, {19, 1, 10}, {13, 10, 3, 10}, {
          16, 8, 10, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 0}, {19, 4, 
          9}, {13, 2, 9, 8}, {19, 5, 9}, {13, 7, 9, 10}, {16, 8, 10, 8}, {19, 
          4, 10}, {13, 6, 10, 9}, {19, 3, 10}, {13, 10, 5, 10}, {16, 9, 10, 
          9}, {13, 8, 9, 8}, {40, 44, 3, 0, 8, 2, 0, 1}, {24, 0, 1, 0}, {2, 0,
           28}, {19, 4, 8}, {13, 2, 8, 9}, {19, 5, 8}, {13, 7, 8, 10}, {16, 9,
           10, 9}, {19, 4, 10}, {13, 6, 10, 8}, {19, 3, 10}, {13, 10, 5, 
          10}, {16, 8, 10, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 0}, {19,
           0, 9}, {13, 9, 4, 9}, {19, 1, 8}, {13, 7, 8, 10}, {16, 9, 10, 9}, {
          19, 0, 10}, {13, 6, 10, 8}, {19, 5, 10}, {13, 1, 10, 11}, {16, 8, 
          11, 8}, {13, 9, 8, 9}, {40, 44, 3, 0, 9, 2, 0, 1}, {24, 0, 1, 1}, {
          5, 1, 3}, {3, 2}, {5, 2, 3}, {2, 3, 3}, {5, 4, 1}, {3, 2}, {5, 2, 
          1}, {1}}, 
         Function[{$CellContext`x1, $CellContext`y1, $CellContext`x2, \
$CellContext`y2, $CellContext`x3, $CellContext`y3, $CellContext`x, \
$CellContext`y}, 
          If[
           And[
           Sign[($CellContext`x1 - $CellContext`x2) ($CellContext`y - \
$CellContext`y2) + ($CellContext`x - $CellContext`x2) (-$CellContext`y1 + \
$CellContext`y2)] == 
            Sign[($CellContext`x2 - $CellContext`x3) ($CellContext`y - \
$CellContext`y3) + ($CellContext`x - $CellContext`x3) (-$CellContext`y2 + \
$CellContext`y3)], 
            Sign[($CellContext`x2 - $CellContext`x3) ($CellContext`y - \
$CellContext`y3) + ($CellContext`x - $CellContext`x3) (-$CellContext`y2 + \
$CellContext`y3)] == 
            Sign[(-$CellContext`x1 + $CellContext`x3) ($CellContext`y - \
$CellContext`y1) + ($CellContext`x - $CellContext`x1) ($CellContext`y1 - \
$CellContext`y3)]], True, False]], 
         Evaluate], $CellContext`implicitpolygonwindingnumber[
         Pattern[$CellContext`ip, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := Sum[
         $CellContext`implicitlinewindingnumber[$CellContext`l, \
$CellContext`p], {$CellContext`l, $CellContext`ip}], \
$CellContext`implicitlinewindingnumber[{{
           Pattern[$CellContext`ymin, 
            Blank[]], 
           Pattern[$CellContext`ymax, 
            Blank[]]}, 
          Pattern[$CellContext`el, {
            Pattern[$CellContext`a, 
             Blank[]], 
            Pattern[$CellContext`b, 
             Blank[]], 
            Pattern[$CellContext`c, 
             Blank[]], 
            Pattern[$CellContext`s, 
             Blank[]]}]}, {
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := If[
         And[$CellContext`y > $CellContext`ymin, $CellContext`y <= \
$CellContext`ymax, $CellContext`a $CellContext`x + $CellContext`b \
$CellContext`y + $CellContext`c < 0], $CellContext`s, 0], 
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
WindowSize->{1666, 1234},
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
Cell[1714, 43, 76, 0, 29, "Text"],
Cell[1793, 45, 621, 11, 119, "Text"],
Cell[CellGroupData[{
Cell[2439, 60, 3744, 101, 322, "Input",
 InitializationCell->True],
Cell[6186, 163, 3109, 66, 659, "Output"]
}, Open  ]],
Cell[9310, 232, 85, 2, 29, "Text"],
Cell[9398, 236, 1591, 46, 70, "Input",
 InitializationCell->True],
Cell[10992, 284, 92, 2, 29, "Text"],
Cell[CellGroupData[{
Cell[11109, 290, 4068, 112, 238, "Input",
 InitializationCell->True],
Cell[15180, 404, 4061, 92, 659, "Output"]
}, Open  ]],
Cell[19256, 499, 1237, 25, 227, "Text"],
Cell[20496, 526, 1795, 49, 70, "Input",
 InitializationCell->True],
Cell[22294, 577, 74, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[22393, 581, 4264, 119, 217, "Input",
 InitializationCell->True],
Cell[26660, 702, 6473, 133, 659, "Output"]
}, Open  ]],
Cell[33148, 838, 943, 18, 155, "Text"],
Cell[34094, 858, 1286, 39, 48, "Input",
 InitializationCell->True],
Cell[35383, 899, 856, 24, 48, "Input",
 InitializationCell->True],
Cell[36242, 925, 69, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[36336, 929, 3836, 104, 196, "Input",
 InitializationCell->True],
Cell[40175, 1035, 6720, 138, 659, "Output"]
}, Open  ]],
Cell[46910, 1176, 97, 2, 29, "Text"],
Cell[47010, 1180, 712, 21, 48, "Input",
 InitializationCell->True],
Cell[47725, 1203, 177, 4, 29, "Text"],
Cell[47905, 1209, 553, 16, 48, "Input",
 InitializationCell->True],
Cell[48461, 1227, 62, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[48548, 1231, 5028, 135, 238, "Input",
 InitializationCell->True],
Cell[53579, 1368, 8551, 189, 659, "Output"]
}, Open  ]],
Cell[62145, 1560, 74, 0, 29, "Text"],
Cell[62222, 1562, 106, 3, 29, "Text"],
Cell[62331, 1567, 613, 20, 48, "Input",
 InitializationCell->True],
Cell[62947, 1589, 131, 3, 29, "Text"],
Cell[63081, 1594, 370, 10, 48, "Input",
 InitializationCell->True],
Cell[63454, 1606, 44, 0, 29, "Text"],
Cell[63501, 1608, 625, 18, 48, "Input",
 InitializationCell->True],
Cell[64129, 1628, 37, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[64191, 1632, 5547, 140, 280, "Input",
 InitializationCell->True],
Cell[69741, 1774, 9087, 186, 713, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 3upUxKmSeFXt6B1Dc#ztI7O5 *)
