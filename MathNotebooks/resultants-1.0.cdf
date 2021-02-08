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
NotebookDataLength[    104648,       3529]
NotebookOptionsPosition[    101273,       3400]
NotebookOutlinePosition[    101701,       3419]
CellTagsIndexPosition[    101658,       3416]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["\<\
Let's first define functions that output a cofficient list and the power basis\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"c", "[", 
   RowBox[{"s_Symbol", ",", " ", "d_"}], "]"}], " ", ":=", " ", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"Subscript", "[", 
     RowBox[{"s", ",", " ", "i"}], "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"i", ",", " ", "0", ",", " ", "d"}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"p", "[", 
   RowBox[{"t_", ",", " ", "d_"}], "]"}], " ", ":=", " ", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"t", "^", "i"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"i", ",", " ", "0", ",", " ", "d"}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"c", "[", 
   RowBox[{"a", ",", "3"}], "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       SubscriptBox["a", "0"]},
      {
       SubscriptBox["a", "1"]},
      {
       SubscriptBox["a", "2"]},
      {
       SubscriptBox["a", "3"]}
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

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"p", "[", 
   RowBox[{"t", ",", "3"}], "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {"1"},
      {"t"},
      {
       SuperscriptBox["t", "2"]},
      {
       SuperscriptBox["t", "3"]}
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

Cell["Writing a polynomial is a matter of performing a dot product", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"c", "[", 
   RowBox[{"a", ",", "3"}], "]"}], ".", 
  RowBox[{"p", "[", 
   RowBox[{"t", ",", "3"}], "]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  SubscriptBox["a", "0"], "+", 
  RowBox[{"t", " ", 
   SubscriptBox["a", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "2"], " ", 
   SubscriptBox["a", "2"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "3"], " ", 
   SubscriptBox["a", "3"]}]}]], "Output"]
}, Open  ]],

Cell[TextData[{
 "If the roots of two polynomials f(t) and g(t) are ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Alpha]", "i"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Beta]", "j"], TraditionalForm]]],
 ", respectively, it is easy to create a formula that vanishes if and only if \
the polynomials have a common root.\n\nSimply take "
}], "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"r", "[", 
   RowBox[{"f", ",", "g"}], "]"}], " ", "=", " ", 
  RowBox[{
   UnderoverscriptBox["\[Product]", 
    RowBox[{"i", "=", "1"}], 
    RowBox[{"d", 
     RowBox[{"(", "f", ")"}]}]], 
   RowBox[{
    UnderoverscriptBox["\[Product]", 
     RowBox[{"j", "=", "1"}], 
     RowBox[{"d", 
      RowBox[{"(", "g", ")"}]}]], 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["\[Alpha]", "i"], "-", 
      SubscriptBox["\[Beta]", "j"]}], ")"}]}]}]}]], "Input"],

Cell[TextData[{
 "This is called the ",
 StyleBox["resultant",
  FontSlant->"Italic"],
 " of the two polynomials, and the trick is finding a formula that does not \
require us to know the roots themselves. Here is how we can accomplish this."
}], "Text"],

Cell[TextData[{
 "Two polynomials f(t), g(t) have a common root if and only if they have a \
non-constant common factor. So we can write \n    \n    f(t) = h(t) r(t)      \
and\n    g(t) = h(t) s(t)\n    \nwith the d(r) = d(f)-d(h) <= d(f)-1 and d(s) \
= d(g)-d(h) <= d(g)-1.\n\nWe can eliminate h from the equation by writing\n\n \
  f(t) s(t) = h(t) r(t) s(t) = h(t) s(t) r(t) = g(t) r(t)\n   \nSo \n \n   \
f(t) s(t) = g(t) r(t)\n   \nWe have an equation between two polynomials that \
must hold for all t. \nThese polynomials must be ",
 StyleBox["identical",
  FontSlant->"Italic"],
 ".\nSo there are d(f)+1+d(g)+1-d(h)-d(h) equations on the coefficients of \
these polynomials.\nWe know the coefficients of f and of g. Each equation is \
linear on the coefficients of r and s. There are exactly as many coefficients \
as equations.\nLet\[CloseCurlyQuote]s find the matrix for this linear \
system."
}], "Text"],

Cell["\<\
As an example, let\[CloseCurlyQuote]s start with d(f) = 5, d(g) = 3, and d(h) \
= 1\
\>", "Text"],

Cell["Here is what f(t) s(t), looks like", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    RowBox[{"p", "[", 
     RowBox[{"t", ",", "5"}], "]"}], ".", 
    RowBox[{"c", "[", 
     RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
  RowBox[{"(", " ", 
   RowBox[{
    RowBox[{"p", "[", 
     RowBox[{"t", ",", "2"}], "]"}], ".", 
    RowBox[{"c", "[", 
     RowBox[{"s", ",", "2"}], "]"}]}], ")"}], " "}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    SubscriptBox["f", "0"], "+", 
    RowBox[{"t", " ", 
     SubscriptBox["f", "1"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "2"], " ", 
     SubscriptBox["f", "2"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "3"], " ", 
     SubscriptBox["f", "3"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "4"], " ", 
     SubscriptBox["f", "4"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "5"], " ", 
     SubscriptBox["f", "5"]}]}], ")"}], " ", 
  RowBox[{"(", 
   RowBox[{
    SubscriptBox["s", "0"], "+", 
    RowBox[{"t", " ", 
     SubscriptBox["s", "1"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "2"], " ", 
     SubscriptBox["s", "2"]}]}], ")"}]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"%", "//", "Expand"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["f", "0"], " ", 
   SubscriptBox["s", "0"]}], "+", 
  RowBox[{"t", " ", 
   SubscriptBox["f", "1"], " ", 
   SubscriptBox["s", "0"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "2"], " ", 
   SubscriptBox["f", "2"], " ", 
   SubscriptBox["s", "0"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "3"], " ", 
   SubscriptBox["f", "3"], " ", 
   SubscriptBox["s", "0"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "4"], " ", 
   SubscriptBox["f", "4"], " ", 
   SubscriptBox["s", "0"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "5"], " ", 
   SubscriptBox["f", "5"], " ", 
   SubscriptBox["s", "0"]}], "+", 
  RowBox[{"t", " ", 
   SubscriptBox["f", "0"], " ", 
   SubscriptBox["s", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "2"], " ", 
   SubscriptBox["f", "1"], " ", 
   SubscriptBox["s", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "3"], " ", 
   SubscriptBox["f", "2"], " ", 
   SubscriptBox["s", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "4"], " ", 
   SubscriptBox["f", "3"], " ", 
   SubscriptBox["s", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "5"], " ", 
   SubscriptBox["f", "4"], " ", 
   SubscriptBox["s", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "6"], " ", 
   SubscriptBox["f", "5"], " ", 
   SubscriptBox["s", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "2"], " ", 
   SubscriptBox["f", "0"], " ", 
   SubscriptBox["s", "2"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "3"], " ", 
   SubscriptBox["f", "1"], " ", 
   SubscriptBox["s", "2"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "4"], " ", 
   SubscriptBox["f", "2"], " ", 
   SubscriptBox["s", "2"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "5"], " ", 
   SubscriptBox["f", "3"], " ", 
   SubscriptBox["s", "2"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "6"], " ", 
   SubscriptBox["f", "4"], " ", 
   SubscriptBox["s", "2"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "7"], " ", 
   SubscriptBox["f", "5"], " ", 
   SubscriptBox["s", "2"]}]}]], "Output"]
}, Open  ]],

Cell["And the coefficients", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"CoefficientList", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"p", "[", 
        RowBox[{"t", ",", "5"}], "]"}], ".", 
       RowBox[{"c", "[", 
        RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
     RowBox[{"(", " ", 
      RowBox[{
       RowBox[{"p", "[", 
        RowBox[{"t", ",", "2"}], "]"}], ".", 
       RowBox[{"c", "[", 
        RowBox[{"s", ",", "2"}], "]"}]}], ")"}]}], ",", "t"}], "]"}], "//", 
  " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["s", "0"]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "1"], " ", 
         SubscriptBox["s", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["s", "1"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "2"], " ", 
         SubscriptBox["s", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "1"], " ", 
         SubscriptBox["s", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["s", "2"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["s", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "2"], " ", 
         SubscriptBox["s", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "1"], " ", 
         SubscriptBox["s", "2"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["s", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["s", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "2"], " ", 
         SubscriptBox["s", "2"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["s", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["s", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["s", "2"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["s", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["s", "2"]}]}]},
      {
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["s", "2"]}]}
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

Cell["Same for g(t) r(t),", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    RowBox[{"p", "[", 
     RowBox[{"t", ",", "3"}], "]"}], ".", 
    RowBox[{"c", "[", 
     RowBox[{"g", ",", "3"}], "]"}]}], ")"}], 
  RowBox[{"(", " ", 
   RowBox[{
    RowBox[{"p", "[", 
     RowBox[{"t", ",", "4"}], "]"}], ".", 
    RowBox[{"c", "[", 
     RowBox[{"r", ",", "4"}], "]"}]}], ")"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{
    SubscriptBox["g", "0"], "+", 
    RowBox[{"t", " ", 
     SubscriptBox["g", "1"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "2"], " ", 
     SubscriptBox["g", "2"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "3"], " ", 
     SubscriptBox["g", "3"]}]}], ")"}], " ", 
  RowBox[{"(", 
   RowBox[{
    SubscriptBox["r", "0"], "+", 
    RowBox[{"t", " ", 
     SubscriptBox["r", "1"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "2"], " ", 
     SubscriptBox["r", "2"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "3"], " ", 
     SubscriptBox["r", "3"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "4"], " ", 
     SubscriptBox["r", "4"]}]}], ")"}]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"%", "//", "Expand"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["b", "0"], " ", 
   SubscriptBox["r", "0"]}], "+", 
  RowBox[{"t", " ", 
   SubscriptBox["b", "1"], " ", 
   SubscriptBox["r", "0"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "2"], " ", 
   SubscriptBox["b", "2"], " ", 
   SubscriptBox["r", "0"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "3"], " ", 
   SubscriptBox["b", "3"], " ", 
   SubscriptBox["r", "0"]}], "+", 
  RowBox[{"t", " ", 
   SubscriptBox["b", "0"], " ", 
   SubscriptBox["r", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "2"], " ", 
   SubscriptBox["b", "1"], " ", 
   SubscriptBox["r", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "3"], " ", 
   SubscriptBox["b", "2"], " ", 
   SubscriptBox["r", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "4"], " ", 
   SubscriptBox["b", "3"], " ", 
   SubscriptBox["r", "1"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "2"], " ", 
   SubscriptBox["b", "0"], " ", 
   SubscriptBox["r", "2"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "3"], " ", 
   SubscriptBox["b", "1"], " ", 
   SubscriptBox["r", "2"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "4"], " ", 
   SubscriptBox["b", "2"], " ", 
   SubscriptBox["r", "2"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "5"], " ", 
   SubscriptBox["b", "3"], " ", 
   SubscriptBox["r", "2"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "3"], " ", 
   SubscriptBox["b", "0"], " ", 
   SubscriptBox["r", "3"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "4"], " ", 
   SubscriptBox["b", "1"], " ", 
   SubscriptBox["r", "3"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "5"], " ", 
   SubscriptBox["b", "2"], " ", 
   SubscriptBox["r", "3"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "6"], " ", 
   SubscriptBox["b", "3"], " ", 
   SubscriptBox["r", "3"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "4"], " ", 
   SubscriptBox["b", "0"], " ", 
   SubscriptBox["r", "4"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "5"], " ", 
   SubscriptBox["b", "1"], " ", 
   SubscriptBox["r", "4"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "6"], " ", 
   SubscriptBox["b", "2"], " ", 
   SubscriptBox["r", "4"]}], "+", 
  RowBox[{
   SuperscriptBox["t", "7"], " ", 
   SubscriptBox["b", "3"], " ", 
   SubscriptBox["r", "4"]}]}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"CoefficientList", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"p", "[", 
        RowBox[{"t", ",", "3"}], "]"}], ".", 
       RowBox[{"c", "[", 
        RowBox[{"g", ",", "3"}], "]"}]}], ")"}], 
     RowBox[{"(", " ", 
      RowBox[{
       RowBox[{"p", "[", 
        RowBox[{"t", ",", "4"}], "]"}], ".", 
       RowBox[{"c", "[", 
        RowBox[{"r", ",", "4"}], "]"}]}], ")"}]}], ",", "t"}], "]"}], " ", "//",
   " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        SubscriptBox["g", "0"], " ", 
        SubscriptBox["r", "0"]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["g", "1"], " ", 
         SubscriptBox["r", "0"]}], "+", 
        RowBox[{
         SubscriptBox["g", "0"], " ", 
         SubscriptBox["r", "1"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["g", "2"], " ", 
         SubscriptBox["r", "0"]}], "+", 
        RowBox[{
         SubscriptBox["g", "1"], " ", 
         SubscriptBox["r", "1"]}], "+", 
        RowBox[{
         SubscriptBox["g", "0"], " ", 
         SubscriptBox["r", "2"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["g", "3"], " ", 
         SubscriptBox["r", "0"]}], "+", 
        RowBox[{
         SubscriptBox["g", "2"], " ", 
         SubscriptBox["r", "1"]}], "+", 
        RowBox[{
         SubscriptBox["g", "1"], " ", 
         SubscriptBox["r", "2"]}], "+", 
        RowBox[{
         SubscriptBox["g", "0"], " ", 
         SubscriptBox["r", "3"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["g", "3"], " ", 
         SubscriptBox["r", "1"]}], "+", 
        RowBox[{
         SubscriptBox["g", "2"], " ", 
         SubscriptBox["r", "2"]}], "+", 
        RowBox[{
         SubscriptBox["g", "1"], " ", 
         SubscriptBox["r", "3"]}], "+", 
        RowBox[{
         SubscriptBox["g", "0"], " ", 
         SubscriptBox["r", "4"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["g", "3"], " ", 
         SubscriptBox["r", "2"]}], "+", 
        RowBox[{
         SubscriptBox["g", "2"], " ", 
         SubscriptBox["r", "3"]}], "+", 
        RowBox[{
         SubscriptBox["g", "1"], " ", 
         SubscriptBox["r", "4"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["g", "3"], " ", 
         SubscriptBox["r", "3"]}], "+", 
        RowBox[{
         SubscriptBox["g", "2"], " ", 
         SubscriptBox["r", "4"]}]}]},
      {
       RowBox[{
        SubscriptBox["g", "3"], " ", 
        SubscriptBox["r", "4"]}]}
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
And here is the coefficient list of f(t)s(t) - g(t)r(t), which we know must \
be identically zero \
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"CoefficientList", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"p", "[", 
         RowBox[{"t", ",", "5"}], "]"}], ".", 
        RowBox[{"c", "[", 
         RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
      RowBox[{"(", " ", 
       RowBox[{
        RowBox[{"p", "[", 
         RowBox[{"t", ",", "2"}], "]"}], ".", 
        RowBox[{"c", "[", 
         RowBox[{"s", ",", "2"}], "]"}]}], ")"}]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"p", "[", 
         RowBox[{"t", ",", "3"}], "]"}], ".", 
        RowBox[{"c", "[", 
         RowBox[{"g", ",", "3"}], "]"}]}], ")"}], 
      RowBox[{"(", " ", 
       RowBox[{
        RowBox[{"p", "[", 
         RowBox[{"t", ",", "4"}], "]"}], ".", 
        RowBox[{"c", "[", 
         RowBox[{"r", ",", "4"}], "]"}]}], ")"}]}]}], ",", "t"}], "]"}], "  ",
   "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["g", "0"]}], " ", 
         SubscriptBox["r", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["s", "0"]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["g", "1"]}], " ", 
         SubscriptBox["r", "0"]}], "-", 
        RowBox[{
         SubscriptBox["g", "0"], " ", 
         SubscriptBox["r", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "1"], " ", 
         SubscriptBox["s", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["s", "1"]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["g", "2"]}], " ", 
         SubscriptBox["r", "0"]}], "-", 
        RowBox[{
         SubscriptBox["g", "1"], " ", 
         SubscriptBox["r", "1"]}], "-", 
        RowBox[{
         SubscriptBox["g", "0"], " ", 
         SubscriptBox["r", "2"]}], "+", 
        RowBox[{
         SubscriptBox["f", "2"], " ", 
         SubscriptBox["s", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "1"], " ", 
         SubscriptBox["s", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["s", "2"]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["g", "3"]}], " ", 
         SubscriptBox["r", "0"]}], "-", 
        RowBox[{
         SubscriptBox["g", "2"], " ", 
         SubscriptBox["r", "1"]}], "-", 
        RowBox[{
         SubscriptBox["g", "1"], " ", 
         SubscriptBox["r", "2"]}], "-", 
        RowBox[{
         SubscriptBox["g", "0"], " ", 
         SubscriptBox["r", "3"]}], "+", 
        RowBox[{
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["s", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "2"], " ", 
         SubscriptBox["s", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "1"], " ", 
         SubscriptBox["s", "2"]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["g", "3"]}], " ", 
         SubscriptBox["r", "1"]}], "-", 
        RowBox[{
         SubscriptBox["g", "2"], " ", 
         SubscriptBox["r", "2"]}], "-", 
        RowBox[{
         SubscriptBox["g", "1"], " ", 
         SubscriptBox["r", "3"]}], "-", 
        RowBox[{
         SubscriptBox["g", "0"], " ", 
         SubscriptBox["r", "4"]}], "+", 
        RowBox[{
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["s", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["s", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "2"], " ", 
         SubscriptBox["s", "2"]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["g", "3"]}], " ", 
         SubscriptBox["r", "2"]}], "-", 
        RowBox[{
         SubscriptBox["g", "2"], " ", 
         SubscriptBox["r", "3"]}], "-", 
        RowBox[{
         SubscriptBox["g", "1"], " ", 
         SubscriptBox["r", "4"]}], "+", 
        RowBox[{
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["s", "0"]}], "+", 
        RowBox[{
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["s", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["s", "2"]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["g", "3"]}], " ", 
         SubscriptBox["r", "3"]}], "-", 
        RowBox[{
         SubscriptBox["g", "2"], " ", 
         SubscriptBox["r", "4"]}], "+", 
        RowBox[{
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["s", "1"]}], "+", 
        RowBox[{
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["s", "2"]}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubscriptBox["g", "3"]}], " ", 
         SubscriptBox["r", "4"]}], "+", 
        RowBox[{
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["s", "2"]}]}]}
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
Now we can find the matrix for the system of equations. First, the vector of \
unknowns\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"c", "[", 
    RowBox[{"s", ",", "2"}], "]"}], " ", "~", " ", "Join", " ", "~", " ", 
   RowBox[{"c", "[", 
    RowBox[{"r", ",", "4"}], "]"}]}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       SubscriptBox["s", "0"]},
      {
       SubscriptBox["s", "1"]},
      {
       SubscriptBox["s", "2"]},
      {
       SubscriptBox["r", "0"]},
      {
       SubscriptBox["r", "1"]},
      {
       SubscriptBox["r", "2"]},
      {
       SubscriptBox["r", "3"]},
      {
       SubscriptBox["r", "4"]}
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

Cell["And now the matrix ", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Map", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Coefficient", "[", 
      RowBox[{"#", ",", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"s", ",", "2"}], "]"}], " ", "~", " ", "Join", " ", "~", " ", 
        RowBox[{"c", "[", 
         RowBox[{"r", ",", "4"}], "]"}]}]}], "]"}], "&"}], ",", "   ", 
    RowBox[{"CoefficientList", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "5"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
        RowBox[{"(", " ", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "2"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"s", ",", "2"}], "]"}]}], ")"}]}], "-", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "3"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"g", ",", "3"}], "]"}]}], ")"}], 
        RowBox[{"(", " ", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "4"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"r", ",", "4"}], "]"}]}], ")"}]}]}], ",", "t"}], "]"}]}], 
   "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      SubscriptBox["f", "0"], "0", "0", 
      RowBox[{"-", 
       SubscriptBox["g", "0"]}], "0", "0", "0", "0"},
     {
      SubscriptBox["f", "1"], 
      SubscriptBox["f", "0"], "0", 
      RowBox[{"-", 
       SubscriptBox["g", "1"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "0"]}], "0", "0", "0"},
     {
      SubscriptBox["f", "2"], 
      SubscriptBox["f", "1"], 
      SubscriptBox["f", "0"], 
      RowBox[{"-", 
       SubscriptBox["g", "2"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "1"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "0"]}], "0", "0"},
     {
      SubscriptBox["f", "3"], 
      SubscriptBox["f", "2"], 
      SubscriptBox["f", "1"], 
      RowBox[{"-", 
       SubscriptBox["g", "3"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "2"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "1"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "0"]}], "0"},
     {
      SubscriptBox["f", "4"], 
      SubscriptBox["f", "3"], 
      SubscriptBox["f", "2"], "0", 
      RowBox[{"-", 
       SubscriptBox["g", "3"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "2"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "1"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "0"]}]},
     {
      SubscriptBox["f", "5"], 
      SubscriptBox["f", "4"], 
      SubscriptBox["f", "3"], "0", "0", 
      RowBox[{"-", 
       SubscriptBox["g", "3"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "2"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "1"]}]},
     {"0", 
      SubscriptBox["f", "5"], 
      SubscriptBox["f", "4"], "0", "0", "0", 
      RowBox[{"-", 
       SubscriptBox["g", "3"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "2"]}]},
     {"0", "0", 
      SubscriptBox["f", "5"], "0", "0", "0", "0", 
      RowBox[{"-", 
       SubscriptBox["g", "3"]}]}
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

Cell["The linear system is", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {
        SubscriptBox["f", "0"], "0", "0", 
        RowBox[{"-", 
         SubscriptBox["g", "0"]}], "0", "0", "0", "0"},
       {
        SubscriptBox["f", "1"], 
        SubscriptBox["f", "0"], "0", 
        RowBox[{"-", 
         SubscriptBox["g", "1"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "0"]}], "0", "0", "0"},
       {
        SubscriptBox["f", "2"], 
        SubscriptBox["f", "1"], 
        SubscriptBox["f", "0"], 
        RowBox[{"-", 
         SubscriptBox["g", "2"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "1"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "0"]}], "0", "0"},
       {
        SubscriptBox["f", "3"], 
        SubscriptBox["f", "2"], 
        SubscriptBox["f", "1"], 
        RowBox[{"-", 
         SubscriptBox["g", "3"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "2"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "1"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "0"]}], "0"},
       {
        SubscriptBox["f", "4"], 
        SubscriptBox["f", "3"], 
        SubscriptBox["f", "2"], "0", 
        RowBox[{"-", 
         SubscriptBox["g", "3"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "2"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "1"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "0"]}]},
       {
        SubscriptBox["f", "5"], 
        SubscriptBox["f", "4"], 
        SubscriptBox["f", "3"], "0", "0", 
        RowBox[{"-", 
         SubscriptBox["g", "3"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "2"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "1"]}]},
       {"0", 
        SubscriptBox["f", "5"], 
        SubscriptBox["f", "4"], "0", "0", "0", 
        RowBox[{"-", 
         SubscriptBox["g", "3"]}], 
        RowBox[{"-", 
         SubscriptBox["g", "2"]}]},
       {"0", "0", 
        SubscriptBox["f", "5"], "0", "0", "0", "0", 
        RowBox[{"-", 
         SubscriptBox["g", "3"]}]}
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
   TagBox[
    RowBox[{"(", "\[NoBreak]", 
     TagBox[GridBox[{
        {
         SubscriptBox["s", "0"]},
        {
         SubscriptBox["s", "1"]},
        {
         SubscriptBox["s", "2"]},
        {
         SubscriptBox["r", "0"]},
        {
         SubscriptBox["r", "1"]},
        {
         SubscriptBox["r", "2"]},
        {
         SubscriptBox["r", "3"]},
        {
         SubscriptBox["r", "4"]}
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
     MatrixForm[BoxForm`e$]]]}], " ", "=", " ", 
  TagBox[
   RowBox[{"(", "\[NoBreak]", 
    TagBox[GridBox[{
       {"0"},
       {"0"},
       {"0"},
       {"0"},
       {"0"},
       {"0"},
       {"0"},
       {"0"}
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
    MatrixForm[BoxForm`e$]]]}]], "Input"],

Cell["\<\
This is a square matrix of size d(f) + d(g). The columns of this matrix are \
divided into two groups. The first group is associated to the s unknowns and \
contains shifts of the coefficients of f. The second group is associated to \
the r unknowns and contains shifts of the coefficients of g. \
\>", "Text"],

Cell["\<\
Each row of this matrix corresponds to the coefficient of terms of increasing \
degree in f(t)s(t) - g(t)r(t). The columns associated to the s and r unknowns \
give the coefficient of the corresponding unknown in the term of increasing \
degrees in f(t)s(t) - g(t)r(t).\
\>", "Text"],

Cell["\<\
There is a non-trivial solution for this linear system if and only if the \
determinant of the matrix is singular, which happens if and only if the \
determinant is zero.\
\>", "Text"],

Cell[TextData[{
 "So, the two polynomials have a common root if and only if this determinant \
is zero. The value of this determinant is the resultant of the polynomials. \n\
\nWe can flip the sign of all g columns without changing the fact that the \
resultant is zero if and only if the two polynomials have a common root. \n\n\
The particular matrix we have shown is called the ",
 StyleBox["Sylvester matrix",
  FontSlant->"Italic"],
 ". It\[CloseCurlyQuote]s determinant is the resultant."
}], "Text"],

Cell["Here is what the matrix looks like for two cubics", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Map", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Coefficient", "[", 
      RowBox[{"#", ",", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"s", ",", "2"}], "]"}], " ", "~", " ", "Join", " ", "~", " ", 
        RowBox[{"c", "[", 
         RowBox[{"r", ",", "2"}], "]"}]}]}], "]"}], "&"}], ",", "   ", 
    RowBox[{"CoefficientList", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "3"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"f", ",", "3"}], "]"}]}], ")"}], 
        RowBox[{"(", " ", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "2"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"s", ",", "2"}], "]"}]}], ")"}]}], "-", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "3"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"g", ",", "3"}], "]"}]}], ")"}], 
        RowBox[{"(", " ", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "2"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"r", ",", "2"}], "]"}]}], ")"}]}]}], ",", "t"}], "]"}]}], 
   "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      SubscriptBox["f", "0"], "0", "0", 
      RowBox[{"-", 
       SubscriptBox["g", "0"]}], "0", "0"},
     {
      SubscriptBox["f", "1"], 
      SubscriptBox["f", "0"], "0", 
      RowBox[{"-", 
       SubscriptBox["g", "1"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "0"]}], "0"},
     {
      SubscriptBox["f", "2"], 
      SubscriptBox["f", "1"], 
      SubscriptBox["f", "0"], 
      RowBox[{"-", 
       SubscriptBox["g", "2"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "1"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "0"]}]},
     {
      SubscriptBox["f", "3"], 
      SubscriptBox["f", "2"], 
      SubscriptBox["f", "1"], 
      RowBox[{"-", 
       SubscriptBox["g", "3"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "2"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "1"]}]},
     {"0", 
      SubscriptBox["f", "3"], 
      SubscriptBox["f", "2"], "0", 
      RowBox[{"-", 
       SubscriptBox["g", "3"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "2"]}]},
     {"0", "0", 
      SubscriptBox["f", "3"], "0", "0", 
      RowBox[{"-", 
       SubscriptBox["g", "3"]}]}
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

Cell["And for two quadratics", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Map", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Coefficient", "[", 
      RowBox[{"#", ",", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"s", ",", "1"}], "]"}], " ", "~", " ", "Join", " ", "~", " ", 
        RowBox[{"c", "[", 
         RowBox[{"r", ",", "1"}], "]"}]}]}], "]"}], "&"}], ",", "   ", 
    RowBox[{"CoefficientList", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "2"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"f", ",", "2"}], "]"}]}], ")"}], 
        RowBox[{"(", " ", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "1"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"s", ",", "1"}], "]"}]}], ")"}]}], "-", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "2"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"g", ",", "2"}], "]"}]}], ")"}], 
        RowBox[{"(", " ", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "1"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"r", ",", "1"}], "]"}]}], ")"}]}]}], ",", "t"}], "]"}]}], 
   "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      SubscriptBox["f", "0"], "0", 
      RowBox[{"-", 
       SubscriptBox["g", "0"]}], "0"},
     {
      SubscriptBox["f", "1"], 
      SubscriptBox["f", "0"], 
      RowBox[{"-", 
       SubscriptBox["g", "1"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "0"]}]},
     {
      SubscriptBox["f", "2"], 
      SubscriptBox["f", "1"], 
      RowBox[{"-", 
       SubscriptBox["g", "2"]}], 
      RowBox[{"-", 
       SubscriptBox["g", "1"]}]},
     {"0", 
      SubscriptBox["f", "2"], "0", 
      RowBox[{"-", 
       SubscriptBox["g", "2"]}]}
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
Here is another interesting way of computing the resultant of f and g. It \
starts by considering the polynomial

  q(t, a) = f(t)g(a) - g(t)f(a)
  
Clearly, q(t, a) has a root at t=a. So we can factor this root out to reach

  r(t, a) = q(t,a)/(t-a)\
\>", "Text"],

Cell["\<\
As an example, let' s start with d (f) = 5, d (g) = 3, and d (h) = 1. Here is \
q(t,a)\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"t", ",", "5"}], "]"}], ".", 
     RowBox[{"c", "[", 
      RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"a", ",", "3"}], "]"}], ".", 
     RowBox[{"c", "[", 
      RowBox[{"g", ",", "3"}], "]"}]}], ")"}]}], " ", "-", " ", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"a", ",", "5"}], "]"}], ".", 
     RowBox[{"c", "[", 
      RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"p", "[", 
      RowBox[{"t", ",", "3"}], "]"}], ".", 
     RowBox[{"c", "[", 
      RowBox[{"g", ",", "3"}], "]"}]}], ")"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["f", "0"], "+", 
     RowBox[{"t", " ", 
      SubscriptBox["f", "1"]}], "+", 
     RowBox[{
      SuperscriptBox["t", "2"], " ", 
      SubscriptBox["f", "2"]}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", 
      SubscriptBox["f", "3"]}], "+", 
     RowBox[{
      SuperscriptBox["t", "4"], " ", 
      SubscriptBox["f", "4"]}], "+", 
     RowBox[{
      SuperscriptBox["t", "5"], " ", 
      SubscriptBox["f", "5"]}]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["g", "0"], "+", 
     RowBox[{"a", " ", 
      SubscriptBox["g", "1"]}], "+", 
     RowBox[{
      SuperscriptBox["a", "2"], " ", 
      SubscriptBox["g", "2"]}], "+", 
     RowBox[{
      SuperscriptBox["a", "3"], " ", 
      SubscriptBox["g", "3"]}]}], ")"}]}], "-", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["f", "0"], "+", 
     RowBox[{"a", " ", 
      SubscriptBox["f", "1"]}], "+", 
     RowBox[{
      SuperscriptBox["a", "2"], " ", 
      SubscriptBox["f", "2"]}], "+", 
     RowBox[{
      SuperscriptBox["a", "3"], " ", 
      SubscriptBox["f", "3"]}], "+", 
     RowBox[{
      SuperscriptBox["a", "4"], " ", 
      SubscriptBox["f", "4"]}], "+", 
     RowBox[{
      SuperscriptBox["a", "5"], " ", 
      SubscriptBox["f", "5"]}]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     SubscriptBox["g", "0"], "+", 
     RowBox[{"t", " ", 
      SubscriptBox["g", "1"]}], "+", 
     RowBox[{
      SuperscriptBox["t", "2"], " ", 
      SubscriptBox["g", "2"]}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", 
      SubscriptBox["g", "3"]}]}], ")"}]}]}]], "Output"]
}, Open  ]],

Cell["Here is r(t, a) and check the remainder really is zero", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"PolynomialQuotientRemainder", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"p", "[", 
        RowBox[{"t", ",", "5"}], "]"}], ".", 
       RowBox[{"c", "[", 
        RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"p", "[", 
        RowBox[{"a", ",", "3"}], "]"}], ".", 
       RowBox[{"c", "[", 
        RowBox[{"g", ",", "3"}], "]"}]}], ")"}]}], " ", "-", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"p", "[", 
        RowBox[{"a", ",", "5"}], "]"}], ".", 
       RowBox[{"c", "[", 
        RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"p", "[", 
        RowBox[{"t", ",", "3"}], "]"}], ".", 
       RowBox[{"c", "[", 
        RowBox[{"g", ",", "3"}], "]"}]}], ")"}]}]}], ",", 
   RowBox[{"(", 
    RowBox[{"t", "-", "a"}], ")"}], ",", "t"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["f", "1"], " ", 
     SubscriptBox["g", "0"]}], "+", 
    RowBox[{"a", " ", 
     SubscriptBox["f", "2"], " ", 
     SubscriptBox["g", "0"]}], "+", 
    RowBox[{
     SuperscriptBox["a", "2"], " ", 
     SubscriptBox["f", "3"], " ", 
     SubscriptBox["g", "0"]}], "+", 
    RowBox[{
     SuperscriptBox["a", "3"], " ", 
     SubscriptBox["f", "4"], " ", 
     SubscriptBox["g", "0"]}], "+", 
    RowBox[{
     SuperscriptBox["a", "4"], " ", 
     SubscriptBox["f", "5"], " ", 
     SubscriptBox["g", "0"]}], "-", 
    RowBox[{
     SubscriptBox["f", "0"], " ", 
     SubscriptBox["g", "1"]}], "-", 
    RowBox[{"a", " ", 
     SubscriptBox["f", "0"], " ", 
     SubscriptBox["g", "2"]}], "-", 
    RowBox[{
     SuperscriptBox["a", "2"], " ", 
     SubscriptBox["f", "0"], " ", 
     SubscriptBox["g", "3"]}], "+", 
    RowBox[{
     SuperscriptBox["t", "4"], " ", 
     SubscriptBox["f", "5"], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["g", "0"], "+", 
       RowBox[{"a", " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "2"], " ", 
        SubscriptBox["g", "2"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "3"], " ", 
        SubscriptBox["g", "3"]}]}], ")"}]}], "+", 
    RowBox[{"t", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{"a", " ", 
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "2"], " ", 
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "3"], " ", 
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{"a", " ", 
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "2"], " ", 
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "3"], " ", 
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "4"], " ", 
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{"a", " ", 
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{"a", " ", 
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}], "-", 
       RowBox[{
        SuperscriptBox["a", "2"], " ", 
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], ")"}]}], "+", 
    RowBox[{
     SuperscriptBox["t", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{"a", " ", 
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "2"], " ", 
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{"a", " ", 
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "2"], " ", 
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "3"], " ", 
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "2"], " ", 
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "2"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "3"], " ", 
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "2"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "4"], " ", 
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}], "-", 
       RowBox[{"a", " ", 
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}], "-", 
       RowBox[{
        SuperscriptBox["a", "2"], " ", 
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "3"]}]}], ")"}]}], "+", 
    RowBox[{
     SuperscriptBox["t", "3"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{"a", " ", 
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{"a", " ", 
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "2"], " ", 
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "2"], " ", 
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "2"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "3"], " ", 
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "2"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "3"], " ", 
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "3"]}], "+", 
       RowBox[{
        SuperscriptBox["a", "4"], " ", 
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "3"]}]}], ")"}]}]}], ",", "0"}], "}"}]], "Output"]
}, Open  ]],

Cell["Now collect the coefficients of r(t, a) as a polynomial in a", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"CoefficientList", "[", 
   RowBox[{
    RowBox[{"PolynomialQuotient", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "5"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"a", ",", "3"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"g", ",", "3"}], "]"}]}], ")"}]}], " ", "-", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"a", ",", "5"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"p", "[", 
           RowBox[{"t", ",", "3"}], "]"}], ".", 
          RowBox[{"c", "[", 
           RowBox[{"g", ",", "3"}], "]"}]}], ")"}]}]}], ",", 
      RowBox[{"(", 
       RowBox[{"t", "-", "a"}], ")"}], ",", "t"}], "]"}], ",", "a"}], "]"}], 
  " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "1"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "2"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "3"], " ", 
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "4"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "0"]}], "-", 
        RowBox[{
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["g", "1"]}], "-", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["g", "2"]}], "-", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["g", "3"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "2"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "3"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "2"], " ", 
         SubscriptBox["g", "1"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["g", "1"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "3"], " ", 
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["g", "1"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "4"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "1"]}], "-", 
        RowBox[{
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["g", "2"]}], "-", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "1"], " ", 
         SubscriptBox["g", "2"]}], "-", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["g", "3"]}], "-", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "1"], " ", 
         SubscriptBox["g", "3"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["g", "1"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["g", "1"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "3"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "1"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "3"], " ", 
         SubscriptBox["g", "2"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "3"], " ", 
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["g", "2"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "4"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "2"]}], "-", 
        RowBox[{
         SubscriptBox["f", "0"], " ", 
         SubscriptBox["g", "3"]}], "-", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "1"], " ", 
         SubscriptBox["g", "3"]}], "-", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "2"], " ", 
         SubscriptBox["g", "3"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["g", "1"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "1"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["g", "2"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "3"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "2"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "3"], " ", 
         SubscriptBox["f", "4"], " ", 
         SubscriptBox["g", "3"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "4"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "3"]}]}]},
      {
       RowBox[{
        RowBox[{
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "0"]}], "+", 
        RowBox[{"t", " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "1"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "2"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "2"]}], "+", 
        RowBox[{
         SuperscriptBox["t", "3"], " ", 
         SubscriptBox["f", "5"], " ", 
         SubscriptBox["g", "3"]}]}]}
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
Now look at each of them as a polynomial in t and collect the coefficients.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Map", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"Coefficient", "[", 
        RowBox[{"#", ",", "t", ",", "i"}], "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", " ", "0", ",", " ", "4"}], "}"}]}], "]"}], "&"}], 
    ",", " ", 
    RowBox[{"CoefficientList", "[", 
     RowBox[{
      RowBox[{"PolynomialQuotient", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"t", ",", "5"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"a", ",", "3"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"g", ",", "3"}], "]"}]}], ")"}]}], " ", "-", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"a", ",", "5"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"f", ",", "5"}], "]"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"t", ",", "3"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"g", ",", "3"}], "]"}]}], ")"}]}]}], ",", 
        RowBox[{"(", 
         RowBox[{"t", "-", "a"}], ")"}], ",", "t"}], "]"}], ",", "a"}], 
     "]"}]}], "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       SubscriptBox["f", "4"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "0"]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "1"]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "2"]}]},
     {
      RowBox[{
       SubscriptBox["f", "4"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "2"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "3"]}]},
     {
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "1"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "2"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "3"]}], "0"}
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
 "This is a matrix of size max(d(f),d(g)). It is called the ",
 StyleBox["Cayley-B\[EAcute]zout matrix",
  FontSlant->"Italic"],
 ". \n\n",
 Cell[BoxData[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       SubscriptBox["f", "4"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "0"]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "1"]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "2"]}]},
     {
      RowBox[{
       SubscriptBox["f", "4"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "2"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "3"]}]},
     {
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "1"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "2"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "3"]}], "0"}
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
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]],
  CellChangeTimes->{{3.632403994087308*^9, 3.6324039996850224`*^9}}],
 "\n\nThe polynomial r(t,a) can be written as \n\nr(t,a) = (f(t)g(a) - \
g(t)f(a) / (t-a)) = ",
 Cell[BoxData[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "a", 
      SuperscriptBox["a", "2"], 
      SuperscriptBox["a", "3"], 
      SuperscriptBox["a", "4"], 
      SuperscriptBox["a", "5"]}
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
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]],
  CellChangeTimes->{{3.6947064341918983`*^9, 3.694706451159082*^9}}],
 Cell[BoxData[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       SubscriptBox["f", "4"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "0"]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "1"]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "2"]}]},
     {
      RowBox[{
       SubscriptBox["f", "4"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "2"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "3"]}]},
     {
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "1"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "2"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "3"]}], "0"}
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
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]],
  CellChangeTimes->{{3.632403994087308*^9, 3.6324039996850224`*^9}}],
 Cell[BoxData[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1"},
     {"t"},
     {
      SuperscriptBox["t", "2"]},
     {
      SuperscriptBox["t", "3"]},
     {
      SuperscriptBox["t", "4"]},
     {
      SuperscriptBox["t", "5"]}
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
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]],
  CellChangeTimes->{3.69470624795842*^9}],
 "\nIf f,g have a common root at t, then r(t,a) is identically zero as a \
polynomial in a. This is equivalent to the condition\n\n",
 Cell[BoxData[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       SubscriptBox["f", "4"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "0"]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "1"]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "2"]}]},
     {
      RowBox[{
       SubscriptBox["f", "4"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "1"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "5"], " ", 
        SubscriptBox["g", "2"]}], "+", 
       RowBox[{
        SubscriptBox["f", "4"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "3"]}]},
     {
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "0"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "1"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "2"]}], 
      RowBox[{
       SubscriptBox["f", "5"], " ", 
       SubscriptBox["g", "3"]}], "0"}
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
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]],
  CellChangeTimes->{{3.632403994087308*^9, 3.6324039996850224`*^9}}],
 Cell[BoxData[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1"},
     {"t"},
     {
      SuperscriptBox["t", "2"]},
     {
      SuperscriptBox["t", "3"]},
     {
      SuperscriptBox["t", "4"]},
     {
      SuperscriptBox["t", "5"]}
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
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]],
  CellChangeTimes->{3.69470624795842*^9}],
 "=",
 Cell[BoxData[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0"},
     {"0"},
     {"0"},
     {"0"},
     {"0"},
     {"0"}
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
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]],
  CellChangeTimes->{3.69470624795842*^9}],
 "\n\nThis is a homogeneous linear system and any common root t produces a \
non-trivial solution. The matrix must therefore be singular and its \
determinant must vanish.\n\nThe converse is also true. I.e., if the \
determinant is zero, then the polynomials f and g have a common root. \n\nA \
simple proof starts by rewriting each of the coefficients of f as a function \
of the roots ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Alpha]", "i"], TraditionalForm]]],
 " of f, and each of the coefficients of g as a function of the roots ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Beta]", "j"], " "}], TraditionalForm]]],
 "of g, using Vieta\[CloseCurlyQuote]s formulas.\nThen, we can look at the \
determinant of the Cayley-B\[EAcute]zout matrix as a polynomial on these \
roots. After some work, we can prove that this polynomial has degree ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"d", "(", "f", ")"}], " ", 
    RowBox[{
     RowBox[{"d", "(", "g", ")"}], "."}]}], TraditionalForm]]],
 " We already know that the determinant vanishes whenever f and g have a \
common root. So, if ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Alpha]", "i"], "=", 
    SubscriptBox["\[Beta]", "j"]}], TraditionalForm]]],
 ", then (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["\[Alpha]", "i"], "-", 
     SubscriptBox["\[Beta]", "j"]}], ")"}], TraditionalForm]]],
 " must divide the polynomial. This is true for all choices of i and j. In \
other words, the polynomial must be a multiple of\n\n",
 Cell[BoxData[
  RowBox[{
   RowBox[{"r", "[", 
    RowBox[{"f", ",", "g"}], "]"}], " ", "=", " ", 
   RowBox[{
    UnderoverscriptBox["\[Product]", 
     RowBox[{"i", "=", "1"}], 
     RowBox[{"d", 
      RowBox[{"(", "f", ")"}]}]], 
    RowBox[{
     UnderoverscriptBox["\[Product]", 
      RowBox[{"j", "=", "1"}], 
      RowBox[{"d", 
       RowBox[{"(", "g", ")"}]}]], 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["\[Alpha]", "i"], "-", 
       SubscriptBox["\[Beta]", "j"]}], ")"}]}]}]}]],
  CellChangeTimes->{{3.6323285537803583`*^9, 3.632328603692762*^9}, {
   3.694707783286083*^9, 3.694707788231387*^9}}],
 "\n\nSee \n \n\[OpenCurlyDoubleQuote]The Cayley method in computer aided \
geometric design\[CloseCurlyDoubleQuote], de Montaudouin and Tiller, Computer \
Aided Geometric Design, 1(4):309-326, 1984\n\nfor more details."
}], "Text"],

Cell["Here is what it looks like for two cubics.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Map", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"Coefficient", "[", 
        RowBox[{"#", ",", "t", ",", "i"}], "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", " ", "0", ",", " ", "2"}], "}"}]}], "]"}], "&"}], 
    ",", " ", 
    RowBox[{"CoefficientList", "[", 
     RowBox[{
      RowBox[{"PolynomialQuotient", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"t", ",", "3"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"f", ",", "3"}], "]"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"a", ",", "3"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"g", ",", "3"}], "]"}]}], ")"}]}], " ", "-", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"a", ",", "3"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"f", ",", "3"}], "]"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"t", ",", "3"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"g", ",", "3"}], "]"}]}], ")"}]}]}], ",", 
        RowBox[{"(", 
         RowBox[{"t", "-", "a"}], ")"}], ",", "t"}], "]"}], ",", "a"}], 
     "]"}]}], "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "3"]}]}]}
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

Cell["Here is the result for two quadratics.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Map", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"Coefficient", "[", 
        RowBox[{"#", ",", "t", ",", "i"}], "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], "&"}], 
    ",", " ", 
    RowBox[{"CoefficientList", "[", 
     RowBox[{
      RowBox[{"PolynomialQuotient", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"t", ",", "2"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"f", ",", "2"}], "]"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"a", ",", "2"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"g", ",", "2"}], "]"}]}], ")"}]}], " ", "-", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"a", ",", "2"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"f", ",", "2"}], "]"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"p", "[", 
             RowBox[{"t", ",", "2"}], "]"}], ".", 
            RowBox[{"c", "[", 
             RowBox[{"g", ",", "2"}], "]"}]}], ")"}]}]}], ",", 
        RowBox[{"(", 
         RowBox[{"t", "-", "a"}], ")"}], ",", "t"}], "]"}], ",", "a"}], 
     "]"}]}], "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "2"]}]}]}
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
Comparing the sizes of the Cayley-Bezout and Sylvester matrices, we see that \
the former is smaller. 
Its determinant therefore produces a more factored expression for the \
resultant of the two polynomials.\
\>", "Text"],

Cell["\<\
Here is a function that returns the Bezout matrix. Using the explicit formula \
would be much faster (see de Montaudouin\[CloseCurlyQuote]s paper!) , but we \
don\[CloseCurlyQuote]t care about speed here.\
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
         "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input"],

Cell["Here is a test for the cubic", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"bezoutmatrix", "[", 
   RowBox[{
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"Subscript", "[", 
       RowBox[{"f", ",", "i"}], "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"i", ",", " ", "0", ",", " ", "3"}], "}"}]}], "]"}], ",", " ", 
    
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"Subscript", "[", 
       RowBox[{"g", ",", "i"}], "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"i", ",", " ", "0", ",", " ", "3"}], "}"}]}], "]"}]}], "]"}], 
  " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "+", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "3"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "3"], " ", 
        SubscriptBox["g", "2"]}], "-", 
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "3"]}]}]}
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
   MatrixForm[BoxForm`e$]]]], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False]
}, Open  ]],

Cell["And a test for the quadratic", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"bezoutmatrix", "[", 
   RowBox[{
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"Subscript", "[", 
       RowBox[{"f", ",", "i"}], "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"i", ",", " ", "0", ",", " ", "2"}], "}"}]}], "]"}], ",", " ", 
    
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"Subscript", "[", 
       RowBox[{"g", ",", "i"}], "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"i", ",", " ", "0", ",", " ", "2"}], "}"}]}], "]"}]}], "]"}], 
  " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "1"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}]},
     {
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "0"]}], "-", 
       RowBox[{
        SubscriptBox["f", "0"], " ", 
        SubscriptBox["g", "2"]}]}], 
      RowBox[{
       RowBox[{
        SubscriptBox["f", "2"], " ", 
        SubscriptBox["g", "1"]}], "-", 
       RowBox[{
        SubscriptBox["f", "1"], " ", 
        SubscriptBox["g", "2"]}]}]}
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
}, Open  ]]
},
WindowSize->{1247, 1278},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.0 for Linux x86 (64-bit) (July 28, 2016)",
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
Cell[1464, 33, 102, 2, 38, "Text"],
Cell[1569, 37, 353, 10, 64, "Input",
 InitializationCell->True],
Cell[1925, 49, 303, 9, 64, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[2253, 62, 121, 3, 38, "Input"],
Cell[2377, 67, 761, 25, 113, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3175, 97, 121, 3, 40, "Input"],
Cell[3299, 102, 711, 23, 119, "Output"]
}, Open  ]],
Cell[4025, 128, 76, 0, 38, "Text"],
Cell[CellGroupData[{
Cell[4126, 132, 153, 5, 40, "Input"],
Cell[4282, 139, 280, 10, 42, "Output"]
}, Open  ]],
Cell[4577, 152, 384, 11, 116, "Text"],
Cell[4964, 165, 496, 17, 84, "Input"],
Cell[5463, 184, 254, 6, 63, "Text"],
Cell[5720, 192, 916, 15, 525, "Text"],
Cell[6639, 209, 107, 3, 38, "Text"],
Cell[6749, 214, 50, 0, 38, "Text"],
Cell[CellGroupData[{
Cell[6824, 218, 372, 13, 40, "Input"],
Cell[7199, 233, 727, 26, 46, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7963, 264, 55, 1, 40, "Input"],
Cell[8021, 267, 1997, 70, 70, "Output"]
}, Open  ]],
Cell[10033, 340, 36, 0, 37, "Text"],
Cell[CellGroupData[{
Cell[10094, 344, 512, 17, 40, "Input"],
Cell[10609, 363, 2473, 85, 213, "Output"]
}, Open  ]],
Cell[13097, 451, 35, 0, 38, "Text"],
Cell[CellGroupData[{
Cell[13157, 455, 367, 13, 40, "Input"],
Cell[13527, 470, 727, 26, 46, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14291, 501, 55, 1, 40, "Input"],
Cell[14349, 504, 2225, 78, 70, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16611, 587, 517, 17, 40, "Input"],
Cell[17131, 606, 2667, 91, 213, "Output"]
}, Open  ]],
Cell[19813, 700, 122, 3, 38, "Text"],
Cell[CellGroupData[{
Cell[19960, 707, 948, 31, 66, "Input"],
Cell[20911, 740, 4663, 155, 213, "Output"]
}, Open  ]],
Cell[25589, 898, 111, 3, 38, "Text"],
Cell[CellGroupData[{
Cell[25725, 905, 233, 6, 38, "Input"],
Cell[25961, 913, 921, 33, 213, "Output"]
}, Open  ]],
Cell[26897, 949, 35, 0, 37, "Text"],
Cell[CellGroupData[{
Cell[26957, 953, 1344, 41, 102, "Input"],
Cell[28304, 996, 2375, 81, 213, "Output"]
}, Open  ]],
Cell[30694, 1080, 36, 0, 38, "Text"],
Cell[30733, 1082, 4262, 141, 213, "Input"],
Cell[34998, 1225, 320, 5, 88, "Text"],
Cell[35321, 1232, 293, 5, 63, "Text"],
Cell[35617, 1239, 194, 4, 62, "Text"],
Cell[35814, 1245, 506, 9, 184, "Text"],
Cell[36323, 1256, 65, 0, 37, "Text"],
Cell[CellGroupData[{
Cell[36413, 1260, 1344, 41, 102, "Input"],
Cell[37760, 1303, 1673, 57, 163, "Output"]
}, Open  ]],
Cell[39448, 1363, 38, 0, 38, "Text"],
Cell[CellGroupData[{
Cell[39511, 1367, 1344, 41, 102, "Input"],
Cell[40858, 1410, 1109, 37, 113, "Output"]
}, Open  ]],
Cell[41982, 1450, 274, 9, 184, "Text"],
Cell[42259, 1461, 110, 3, 38, "Text"],
Cell[CellGroupData[{
Cell[42394, 1468, 755, 27, 40, "Input"],
Cell[43152, 1497, 1680, 59, 79, "Output"]
}, Open  ]],
Cell[44847, 1559, 70, 0, 38, "Text"],
Cell[CellGroupData[{
Cell[44942, 1563, 944, 31, 66, "Input"],
Cell[45889, 1596, 5426, 170, 145, "Output"]
}, Open  ]],
Cell[51330, 1769, 76, 0, 38, "Text"],
Cell[CellGroupData[{
Cell[51431, 1773, 1139, 35, 102, "Input"],
Cell[52573, 1810, 6078, 183, 153, "Output"]
}, Open  ]],
Cell[58666, 1996, 99, 2, 38, "Text"],
Cell[CellGroupData[{
Cell[58790, 2002, 1518, 45, 134, "Input"],
Cell[60311, 2049, 4815, 166, 138, "Output"]
}, Open  ]],
Cell[65141, 2218, 19964, 654, 1205, "Text"],
Cell[85108, 2874, 58, 0, 37, "Text"],
Cell[CellGroupData[{
Cell[85191, 2878, 1518, 45, 134, "Input"],
Cell[86712, 2925, 2560, 87, 88, "Output"]
}, Open  ]],
Cell[89287, 3015, 54, 0, 38, "Text"],
Cell[CellGroupData[{
Cell[89366, 3019, 1518, 45, 134, "Input"],
Cell[90887, 3066, 1365, 45, 63, "Output"]
}, Open  ]],
Cell[92267, 3114, 232, 5, 63, "Text"],
Cell[92502, 3121, 228, 4, 63, "Text"],
Cell[92733, 3127, 3265, 85, 463, "Input"],
Cell[96001, 3214, 44, 0, 37, "Text"],
Cell[CellGroupData[{
Cell[96070, 3218, 561, 17, 70, "Input"],
Cell[96634, 3237, 2610, 89, 88, "Output"]
}, Open  ]],
Cell[99259, 3329, 44, 0, 38, "Text"],
Cell[CellGroupData[{
Cell[99328, 3333, 561, 17, 70, "Input"],
Cell[99892, 3352, 1365, 45, 63, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature @xpjrP48K3i6oAwnYsOFfc@H *)
