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
NotebookDataLength[     37288,       1030]
NotebookOptionsPosition[     35981,        967]
NotebookOutlinePosition[     36429,        987]
CellTagsIndexPosition[     36386,        984]
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
 StyleBox[
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
        RowBox[{"v", "\[Rule]", "t"}]}], "}"}]}]}], "]"}]}],
  InitializationCell->True]], "Input",
 InitializationCell->True],

Cell["\<\
This creates a vector with each element of the homogeneous Power basis\
\>", "Text"],

Cell[BoxData[
 StyleBox[
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
        RowBox[{"v", "\[Rule]", "t"}]}], "}"}]}]}], "]"}]}],
  InitializationCell->True]], "Input",
 InitializationCell->True],

Cell["\<\
This gives the matrix that converts from the Power basis to the Bernstein \
basis\
\>", "Text"],

Cell[BoxData[
 StyleBox[
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
              RowBox[{"s", ",", "t"}], "}"}], ",", "n"}], "]"}]}], "]"}], 
         "&"}], ",", " ", 
        RowBox[{"bb", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"s", ",", "t"}], "}"}], ",", "n"}], "]"}]}], "]"}]}], 
     "]"}], "]"}]}],
  InitializationCell->True]], "Input",
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
 StyleBox[
  RowBox[{
   RowBox[{"b2p", "[", "n_", "]"}], " ", ":=", " ", 
   RowBox[{"Inverse", "[", 
    RowBox[{"p2b", "[", "n", "]"}], "]"}]}],
  InitializationCell->True]], "Input",
 InitializationCell->True],

Cell["This gives a matrix with control points", "Text"],

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

Cell["For example, for a cubic we would have ", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ppoints", "[", "3", "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"x0", "y0", "w0"},
     {"x1", "y1", "w1"},
     {"x2", "y2", "w2"},
     {"x3", "y3", "w3"}
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

Cell["So the curve would be", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"bb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"s", ",", "t"}], "}"}], ",", "3"}], "]"}], ".", 
   RowBox[{"ppoints", "[", "3", "]"}]}], " ", "//", " ", 
  "Simplify"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "s"}], "+", "t"}], ")"}], "3"], " ", "x0"}], "+", 
    RowBox[{"3", " ", "s", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"s", "-", "t"}], ")"}], "2"], " ", "x1"}], "+", 
    RowBox[{"3", " ", 
     SuperscriptBox["s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "s"}], "+", "t"}], ")"}], " ", "x2"}], "+", 
    RowBox[{
     SuperscriptBox["s", "3"], " ", "x3"}]}], ",", 
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "s"}], "+", "t"}], ")"}], "3"], " ", "y0"}], "+", 
    RowBox[{"3", " ", "s", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"s", "-", "t"}], ")"}], "2"], " ", "y1"}], "+", 
    RowBox[{"3", " ", 
     SuperscriptBox["s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "s"}], "+", "t"}], ")"}], " ", "y2"}], "+", 
    RowBox[{
     SuperscriptBox["s", "3"], " ", "y3"}]}], ",", 
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "s"}], "+", "t"}], ")"}], "3"], " ", "w0"}], "+", 
    RowBox[{"3", " ", "s", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"s", "-", "t"}], ")"}], "2"], " ", "w1"}], "+", 
    RowBox[{"3", " ", 
     SuperscriptBox["s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", "s"}], "+", "t"}], ")"}], " ", "w2"}], "+", 
    RowBox[{
     SuperscriptBox["s", "3"], " ", "w3"}]}]}], "}"}]], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"e2p", "[", 
   RowBox[{"{", 
    RowBox[{"x_", ",", " ", "y_"}], "}"}], "]"}], ":=", " ", 
  RowBox[{"{", 
   RowBox[{"x", ",", " ", "y", ",", " ", "1"}], "}"}]}]], "Input",
 InitializationCell->True],

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

Cell[TextData[{
 "This is just for speed. We ",
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

Cell[TextData[{
 "To each degree n polynomial p(t) we can associate its ",
 StyleBox["blossom",
  FontSlant->"Italic"],
 " P(t1, t2, ..., tn). A blossom is therefore a function of n variables. It \
is uniquely defined by the properties that it is symmetric, multiaffine, and \
in addition has a ",
 StyleBox["diagonal",
  FontSlant->"Italic"],
 " property.\n\nSymmetry means that P(t1, t2, t3, ..., tn) = ",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", "(", 
    RowBox[{
     SubscriptBox["t", "\[Pi]1"], ",", 
     SubscriptBox["t", "\[Pi]2"], ",", 
     SubscriptBox["t", "\[Pi]3"], ","}]}], TraditionalForm]]],
 "...,",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["t", "\[Pi]n"], ","}], TraditionalForm]]],
 "). I.e., any permutation \[Pi] of arguments does not change the value of P.\
\nMultiaffine means that P((1-\[Alpha]) u + \[Alpha] v, ...) = (1-\[Alpha]) \
P(u,...) + \[Alpha] P(v, ...)\nDiagonal property means that P(t,t,t,t,...,t) \
= p(t)\n\nCan you prove that, indeed, these properties uniquely define the \
blossom?\n\nIf u \[NotEqual] v, they form an affine frame for R. We can write \
t in this frame as t = u (1-s) + v s, where s = (t-u)/(v-u). So we can \
evaluate the polynomial at t using p(t) = p(u(1-s) + v(s)).\nThe interesting \
thing is what happens when we evaluate using the blossom. Using the diagonal \
property, we have that \n\np(t) = p(u (1-s) + v s) = P(u (1-s) + v s, u (1-s) \
+ v s, ..., u (1-s) + v s)\n\nNow, using the multiaffine property, we can \
split this into two terms\n\n(1-s) P(u, u (1-s) + v s, ..., u (1-s) + v s)    \
 +     s P(v, u (1-s) + v s, ..., u (1-s) + v s)\n\nand each of these terms \
can be split further\n\n(1-s)^2 P(u, u, ..., u (1-s) + v s) + (1-s) s P(u, v, \
..., u (1-s) + v s)      +     s (1-s) P(u, v, ..., u (1-s) + v s) + s^2 P(v, \
v, ..., u (1-s) + v s)    \n\nand so on, and so on... We can do this \
subdivision n times, where n is the degree of the polynomial.\n\nNow, using \
the symmetry property, we can group terms together. What matters is the \
number of times u and v arguments occur. The order doesn\[CloseCurlyQuote]t \
matter. Each time we see an u, we know there will be a (1-s) factor. Each \
time we see a v, there will be an s factor. Let k be the number of v \
arguments. Then there is a term (1-s)^(n-k) s^k, and this term appears \
Binomial[n, k] times. Rewriting the blossom, we get\n\n(1-s)^n P(u, u, ..., \
u, u) + Binomial[n, 1] (1-s)^(n-1) s P(u, u, ..., u, v) + Binomial[n, 2] \
(1-s)^(n-2) s^2 P(u, ..., u, v, v)  + ... = p(u (1-s) + v s) = p(t)\n\n\
Recognize anything? We have just rewritten the reparametrized polynomial in \
Bernstein form. The values of the blossom in the expression are constant, and \
must therefore be control points of a B\[EAcute]zier curve. Since this new \
polynomial, as s changes between 0 and 1, traces the same points as the \
original polynomial, when t changes between u and v, the control points that \
we found are those of the reparametrization of our original polynomial curve.\
\n\nIs there an expression for the blossom of a polynomial? Sure. But it is \
not something we would form in practice, in particular if the degree is high. \
If the degree n polynomial has a term of degree k, we know that the blossom \
also needs an expression of degree k with the same coefficient, so that the \
diagonal property holds. But there are Binomial[n, k] ways of selecting \
variables from the blossom to make a term in degree k. By symmetry, all of \
them have to appear and all of them have to have the same weight."
}], "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"blossom", "[", 
   RowBox[{"p_", ",", " ", "t_"}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"n", " ", "=", " ", 
      RowBox[{"Exponent", "[", 
       RowBox[{"p", ",", " ", "t"}], "]"}]}], "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"ti", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Symbol", "[", 
           RowBox[{
            RowBox[{"ToString", "[", "t", "]"}], " ", "<>", " ", 
            RowBox[{"ToString", "[", "i", "]"}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", "n"}], "}"}]}], "]"}]}], 
       "}"}], ",", 
      RowBox[{
       RowBox[{"Coefficient", "[", 
        RowBox[{"p", ",", "t", ",", " ", "0"}], "]"}], " ", "+", " ", 
       RowBox[{"Sum", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"Coefficient", "[", 
            RowBox[{"p", ",", " ", "t", ",", " ", "k"}], "]"}], " ", "/", 
           RowBox[{"Binomial", "[", 
            RowBox[{"n", ",", "k"}], "]"}]}], " ", 
          RowBox[{"Apply", "[", 
           RowBox[{"Plus", ",", " ", 
            RowBox[{"Map", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"Apply", "[", 
                RowBox[{"Times", ",", " ", "#"}], "]"}], "&"}], ",", " ", 
              RowBox[{"Subsets", "[", 
               RowBox[{"ti", ",", " ", 
                RowBox[{"{", "k", "}"}]}], "]"}]}], "]"}]}], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"k", ",", " ", "1", ",", " ", "n"}], "}"}]}], "]"}]}]}], 
     "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell["You will notice this grows fast...", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"blossom", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"t", "+", "1"}], ")"}], "^", "k"}], ",", " ", "t"}], "]"}], 
    ",", " ", 
    RowBox[{"{", 
     RowBox[{"k", ",", " ", "1", ",", " ", "5"}], "}"}]}], "]"}], " ", "//", 
  "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{"1", "+", "t1"}]},
      {
       RowBox[{"1", "+", "t1", "+", "t2", "+", 
        RowBox[{"t1", " ", "t2"}]}]},
      {
       RowBox[{"1", "+", "t1", "+", "t2", "+", 
        RowBox[{"t1", " ", "t2"}], "+", "t3", "+", 
        RowBox[{"t1", " ", "t3"}], "+", 
        RowBox[{"t2", " ", "t3"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t3"}]}]},
      {
       RowBox[{"1", "+", "t1", "+", "t2", "+", 
        RowBox[{"t1", " ", "t2"}], "+", "t3", "+", 
        RowBox[{"t1", " ", "t3"}], "+", 
        RowBox[{"t2", " ", "t3"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t3"}], "+", "t4", "+", 
        RowBox[{"t1", " ", "t4"}], "+", 
        RowBox[{"t2", " ", "t4"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t4"}], "+", 
        RowBox[{"t3", " ", "t4"}], "+", 
        RowBox[{"t1", " ", "t3", " ", "t4"}], "+", 
        RowBox[{"t2", " ", "t3", " ", "t4"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t3", " ", "t4"}]}]},
      {
       RowBox[{"1", "+", "t1", "+", "t2", "+", 
        RowBox[{"t1", " ", "t2"}], "+", "t3", "+", 
        RowBox[{"t1", " ", "t3"}], "+", 
        RowBox[{"t2", " ", "t3"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t3"}], "+", "t4", "+", 
        RowBox[{"t1", " ", "t4"}], "+", 
        RowBox[{"t2", " ", "t4"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t4"}], "+", 
        RowBox[{"t3", " ", "t4"}], "+", 
        RowBox[{"t1", " ", "t3", " ", "t4"}], "+", 
        RowBox[{"t2", " ", "t3", " ", "t4"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t3", " ", "t4"}], "+", "t5", "+", 
        RowBox[{"t1", " ", "t5"}], "+", 
        RowBox[{"t2", " ", "t5"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t5"}], "+", 
        RowBox[{"t3", " ", "t5"}], "+", 
        RowBox[{"t1", " ", "t3", " ", "t5"}], "+", 
        RowBox[{"t2", " ", "t3", " ", "t5"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t3", " ", "t5"}], "+", 
        RowBox[{"t4", " ", "t5"}], "+", 
        RowBox[{"t1", " ", "t4", " ", "t5"}], "+", 
        RowBox[{"t2", " ", "t4", " ", "t5"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t4", " ", "t5"}], "+", 
        RowBox[{"t3", " ", "t4", " ", "t5"}], "+", 
        RowBox[{"t1", " ", "t3", " ", "t4", " ", "t5"}], "+", 
        RowBox[{"t2", " ", "t3", " ", "t4", " ", "t5"}], "+", 
        RowBox[{"t1", " ", "t2", " ", "t3", " ", "t4", " ", "t5"}]}]}
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

Cell[TextData[{
 "We never really want the expression for the blossom. What we want is to ",
 StyleBox["evaluate ",
  FontSlant->"Italic"],
 "the blossom for arguments t1, t2, t3,...,tn. There is an algorithm for \
that. It is called De Casteljau\[CloseCurlyQuote]s algorithm. The trick is to \
write ti as 0 (1-ti) + 1 ti and use the affine property multiple times, \
grouping repeated terms. For example, assuming degree 4 for simplicity\n\n\
P(t1,t2,t3,t4)\n\n(1-t4) P(t1,t2,t3,0)  +  t1 P(t1,t2,t3,1) \n\n(1-t3) (1-t4) \
P(t1,t2,0,0) + t3 (1-4) P(t1,t2,1,0)         +         (1-t3) t4 P(t1,t2,0,1) \
+ t3 t4 P(t1,t2,1,1)\n\nHere we can see the first repetition. Terms \
P(t1,t2,1,0)  and P(t1,t2,0,1) are actually the same. So we can merge them. \
If we proceed this way top down, we will end up with the blossoms \n\n\
P(0,0,0,0),  P(0,0,0,1),  P(0,0,1,1), P(0,1,1,1),  P(1,1,1,1) \n\nat the \
bottom. These are exactly the n B\[EAcute]zier control points of our original \
polynomial curve (before reparametrization). We can now proceed backwards to \
the top until we form P(t1, t2, t3, t4). In the first step, we form 3 \
blossoms. In the second, we form 2 blossoms, and so on until we are done.\n\n\
P(t1,0,0,0),  P(t1,0,0,1), P(t1,0,1,1), P(t1,1,1,1)\nP(t1,t2,0,0),  \
P(t1,t2,0,1), P(t1,t2,1,1) \nP(t1,t2,t3,0),  P(t1,t2,t3,1)\nP(t1,t2,t3,t4)\n"
}], "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"blossomstep", "[", 
   RowBox[{"m_", ",", " ", "t_"}], "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"m", "[", 
     RowBox[{"[", 
      RowBox[{";;", 
       RowBox[{"-", "2"}]}], "]"}], "]"}], " ", 
    RowBox[{"(", 
     RowBox[{"1", "-", "t"}], ")"}]}], " ", "+", " ", 
   RowBox[{
    RowBox[{"m", "[", 
     RowBox[{"[", 
      RowBox[{"2", ";;"}], "]"}], "]"}], " ", "t"}]}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"blossomdiagonal", "[", 
   RowBox[{"m_", ",", " ", "t_"}], "]"}], " ", ":=", " ", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Length", "[", "m", "]"}], " ", "\[Equal]", " ", "1"}], ",", " ",
     "m", ",", " ", 
    RowBox[{"blossomdiagonal", "[", 
     RowBox[{
      RowBox[{"blossomstep", "[", 
       RowBox[{"m", ",", "t"}], "]"}], ",", "t"}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"blossomcut", "[", 
   RowBox[{"m_", ",", " ", 
    RowBox[{"{", 
     RowBox[{"p_", ",", " ", "q_"}], "}"}]}], "]"}], " ", ":=", "  ", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Length", "[", "m", "]"}], "\[Equal]", "1"}], ",", "m", " ", ",",
     " ", 
    RowBox[{
     RowBox[{"blossomcut", "[", 
      RowBox[{
       RowBox[{"blossomstep", "[", 
        RowBox[{"m", ",", "p"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"p", ",", "q"}], "}"}]}], "]"}], " ", "~", " ", "Join", " ", 
     "~", " ", 
     RowBox[{"blossomdiagonal", "[", 
      RowBox[{"m", ",", " ", "q"}], "]"}]}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"With", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"p1s", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "5"}], ",", " ", 
        RowBox[{"-", "5"}]}], "}"}]}], ",", " ", 
     RowBox[{"p2s", " ", "=", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "3"}], ",", " ", "5"}], "}"}]}], ",", " ", 
     RowBox[{"p3s", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"3", ",", " ", "5"}], "}"}]}], ",", " ", 
     RowBox[{"p4s", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"5", ",", " ", 
        RowBox[{"-", "5"}]}], "}"}]}]}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", 
         RowBox[{"Map", "[", 
          RowBox[{"e2p", ",", " ", 
           RowBox[{"{", 
            RowBox[{"p1", ",", " ", "p2", ",", " ", "p3", ",", " ", "p4"}], 
            "}"}]}], "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"n", "=", 
           RowBox[{"blossomcut", "[", 
            RowBox[{"m", ",", 
             RowBox[{"{", 
              RowBox[{"p", ",", "q"}], "}"}]}], "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"nu", "=", 
             RowBox[{"blossomstep", "[", 
              RowBox[{"n", ",", "u"}], "]"}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Module", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"nuu", " ", "=", " ", 
               RowBox[{"blossomstep", "[", 
                RowBox[{"nu", ",", "u"}], "]"}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"Show", "[", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"ParametricPlot", "[", 
                RowBox[{
                 RowBox[{"p2e", "[", 
                  RowBox[{
                   RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
                 RowBox[{"PlotRange", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "}"}]}], ",", 
                 " ", 
                 RowBox[{"PlotStyle", "\[Rule]", "Dashed"}], ",", " ", 
                 RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"ParametricPlot", "[", 
                RowBox[{
                 RowBox[{"p2e", "[", 
                  RowBox[{
                   RowBox[{"bb3", "[", "t", "]"}], ".", "n"}], "]"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
                 RowBox[{"PlotRange", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "}"}]}], ",", 
                 " ", 
                 RowBox[{"PlotStyle", "\[Rule]", 
                  RowBox[{"Directive", "[", 
                   RowBox[{"Thick", ",", "Red"}], "]"}]}], ",", " ", 
                 RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", 
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"PointSize", "[", "Large", "]"}], ",", "Black", ",",
                   " ", 
                  RowBox[{"Point", "[", 
                   RowBox[{"Map", "[", 
                    RowBox[{"p2e", ",", "n"}], "]"}], "]"}], ",", 
                  "\[IndentingNewLine]", "Blue", ",", 
                  RowBox[{"Point", "[", 
                   RowBox[{"Map", "[", 
                    RowBox[{"p2e", ",", "nu"}], "]"}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Darker", "[", "Green", "]"}], ",", 
                  RowBox[{"Point", "[", 
                   RowBox[{"Map", "[", 
                    RowBox[{"p2e", ",", "nuu"}], "]"}], "]"}], ",", 
                  "\[IndentingNewLine]", "Black", ",", 
                  RowBox[{"Line", "[", 
                   RowBox[{"Map", "[", 
                    RowBox[{"p2e", ",", "n"}], "]"}], "]"}], ",", 
                  "\[IndentingNewLine]", "Blue", ",", " ", 
                  RowBox[{"Line", "[", 
                   RowBox[{"Map", "[", 
                    RowBox[{"p2e", ",", "nu"}], "]"}], "]"}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{"Darker", "[", "Green", "]"}], ",", " ", 
                  RowBox[{"Line", "[", 
                   RowBox[{"Map", "[", 
                    RowBox[{"p2e", ",", "nuu"}], "]"}], "]"}], ",", " ", 
                  "\[IndentingNewLine]", "Red", ",", 
                  RowBox[{"Point", "[", 
                   RowBox[{"p2e", "[", 
                    RowBox[{
                    RowBox[{"bb3", "[", "u", "]"}], ".", "n"}], "]"}], 
                   "]"}]}], "}"}], "]"}]}], "]"}]}], "]"}]}], "]"}]}], 
        "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p1", ",", "p1s"}], "}"}], ",", "Locator"}], "}"}], ",", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p2", ",", "p2s"}], "}"}], ",", "Locator"}], "}"}], ",", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p3", ",", "p3s"}], "}"}], ",", "Locator"}], "}"}], ",", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p4", ",", "p4s"}], "}"}], ",", "Locator"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"u", ",", " ", 
         RowBox[{"1", "/", "2"}]}], "}"}], ",", "0", ",", "1"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"p", ",", 
         RowBox[{"1", "/", "8"}]}], "}"}], ",", 
       RowBox[{"-", "2"}], ",", "3"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"q", ",", 
         RowBox[{"7", "/", "8"}]}], "}"}], ",", 
       RowBox[{"-", "2"}], ",", "3"}], "}"}]}], "]"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`p$$ = Rational[
    1, 8], $CellContext`p1$$ = {-5, -5}, $CellContext`p2$$ = {-3, 
    5}, $CellContext`p3$$ = {3, 5}, $CellContext`p4$$ = {
    5, -5}, $CellContext`q$$ = Rational[7, 8], $CellContext`u$$ = Rational[
    1, 2], Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`p1$$], {-5, -5}}, Automatic}, {{
       Hold[$CellContext`p2$$], {-3, 5}}, Automatic}, {{
       Hold[$CellContext`p3$$], {3, 5}}, Automatic}, {{
       Hold[$CellContext`p4$$], {5, -5}}, Automatic}, {{
       Hold[$CellContext`u$$], 
       Rational[1, 2]}, 0, 1}, {{
       Hold[$CellContext`p$$], 
       Rational[1, 8]}, -2, 3}, {{
       Hold[$CellContext`q$$], 
       Rational[7, 8]}, -2, 3}}, Typeset`size$$ = {576., {282., 288.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`u$5600$$ = 0, $CellContext`p$5601$$ = 
    0, $CellContext`q$5602$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`p$$ = 
        Rational[1, 8], $CellContext`p1$$ = {-5, -5}, $CellContext`p2$$ = {-3,
          5}, $CellContext`p3$$ = {3, 5}, $CellContext`p4$$ = {
         5, -5}, $CellContext`q$$ = Rational[7, 8], $CellContext`u$$ = 
        Rational[1, 2]}, "ControllerVariables" :> {
        Hold[$CellContext`u$$, $CellContext`u$5600$$, 0], 
        Hold[$CellContext`p$$, $CellContext`p$5601$$, 0], 
        Hold[$CellContext`q$$, $CellContext`q$5602$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = 
         Map[$CellContext`e2p, {$CellContext`p1$$, $CellContext`p2$$, \
$CellContext`p3$$, $CellContext`p4$$}]}, 
        Module[{$CellContext`n$ = $CellContext`blossomcut[$CellContext`m$, \
{$CellContext`p$$, $CellContext`q$$}]}, 
         Module[{$CellContext`nu$ = $CellContext`blossomstep[$CellContext`n$, \
$CellContext`u$$]}, 
          
          Module[{$CellContext`nuu$ = \
$CellContext`blossomstep[$CellContext`nu$, $CellContext`u$$]}, 
           Show[
            ParametricPlot[
             $CellContext`p2e[
              Dot[
               $CellContext`bb3[$CellContext`t], $CellContext`m$]], \
{$CellContext`t, 0, 1}, PlotRange -> {{-10, 10}, {-10, 10}}, PlotStyle -> 
             Dashed, ImageSize -> Large], 
            ParametricPlot[
             $CellContext`p2e[
              Dot[
               $CellContext`bb3[$CellContext`t], $CellContext`n$]], \
{$CellContext`t, 0, 1}, PlotRange -> {{-10, 10}, {-10, 10}}, PlotStyle -> 
             Directive[Thick, Red], ImageSize -> Large], 
            Graphics[{
              PointSize[Large], Black, 
              Point[
               Map[$CellContext`p2e, $CellContext`n$]], Blue, 
              Point[
               Map[$CellContext`p2e, $CellContext`nu$]], 
              Darker[Green], 
              Point[
               Map[$CellContext`p2e, $CellContext`nuu$]], Black, 
              Line[
               Map[$CellContext`p2e, $CellContext`n$]], Blue, 
              Line[
               Map[$CellContext`p2e, $CellContext`nu$]], 
              Darker[Green], 
              Line[
               Map[$CellContext`p2e, $CellContext`nuu$]], Red, 
              Point[
               $CellContext`p2e[
                Dot[
                 $CellContext`bb3[$CellContext`u$$], \
$CellContext`n$]]]}]]]]]], 
      "Specifications" :> {{{$CellContext`p1$$, {-5, -5}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`p2$$, {-3, 5}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`p3$$, {3, 5}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`p4$$, {5, -5}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`u$$, 
          Rational[1, 2]}, 0, 1}, {{$CellContext`p$$, 
          Rational[1, 8]}, -2, 3}, {{$CellContext`q$$, 
          Rational[7, 8]}, -2, 3}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{629., {353., 360.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`e2p[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]]}] := {$CellContext`x, $CellContext`y, 
         1}, $CellContext`blossomcut[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`p, 
           Blank[]], 
          Pattern[$CellContext`q, 
           Blank[]]}] := If[Length[$CellContext`m] == 1, $CellContext`m, 
         Join[
          $CellContext`blossomcut[
           $CellContext`blossomstep[$CellContext`m, $CellContext`p], \
{$CellContext`p, $CellContext`q}], 
          $CellContext`blossomdiagonal[$CellContext`m, $CellContext`q]]], \
$CellContext`blossomstep[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := Part[$CellContext`m, 
           Span[1, -2]] (1 - $CellContext`t) + Part[$CellContext`m, 
           Span[2, All]] $CellContext`t, $CellContext`blossomdiagonal[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`t, 
          Blank[]]] := If[Length[$CellContext`m] == 1, $CellContext`m, 
         $CellContext`blossomdiagonal[
          $CellContext`blossomstep[$CellContext`m, $CellContext`t], \
$CellContext`t]], $CellContext`p2e[{
          Pattern[$CellContext`x, 
           Blank[]], 
          Pattern[$CellContext`y, 
           Blank[]], 
          Pattern[$CellContext`w, 
           
           Blank[]]}] := {$CellContext`x/$CellContext`w, \
$CellContext`y/$CellContext`w}, $CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}}; 
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
WindowSize->{1561, 998},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
ShowSelection->True,
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
Cell[1464, 33, 48, 0, 31, "Text"],
Cell[1515, 35, 196, 6, 32, "Input"],
Cell[1714, 43, 98, 2, 31, "Text"],
Cell[1815, 47, 980, 32, 49, "Input",
 InitializationCell->True],
Cell[2798, 81, 94, 2, 31, "Text"],
Cell[2895, 85, 839, 28, 49, "Input",
 InitializationCell->True],
Cell[3737, 115, 105, 3, 31, "Text"],
Cell[3845, 120, 769, 25, 49, "Input",
 InitializationCell->True],
Cell[4617, 147, 37, 0, 30, "Text"],
Cell[CellGroupData[{
Cell[4679, 151, 538, 17, 32, "Input"],
Cell[5220, 170, 507, 14, 32, "Output"]
}, Open  ]],
Cell[5742, 187, 62, 0, 31, "Text"],
Cell[5807, 189, 227, 7, 49, "Input",
 InitializationCell->True],
Cell[6037, 198, 55, 0, 31, "Text"],
Cell[6095, 200, 611, 18, 49, "Input",
 InitializationCell->True],
Cell[6709, 220, 55, 0, 31, "Text"],
Cell[CellGroupData[{
Cell[6789, 224, 103, 2, 32, "Input"],
Cell[6895, 228, 651, 19, 88, "Output"]
}, Open  ]],
Cell[7561, 250, 37, 0, 30, "Text"],
Cell[CellGroupData[{
Cell[7623, 254, 236, 8, 32, "Input"],
Cell[7862, 264, 1601, 53, 40, "Output"]
}, Open  ]],
Cell[9478, 320, 235, 7, 49, "Input",
 InitializationCell->True],
Cell[9716, 329, 286, 9, 49, "Input",
 InitializationCell->True],
Cell[10005, 340, 323, 9, 31, "Text"],
Cell[10331, 351, 274, 9, 49, "Input",
 InitializationCell->True],
Cell[10608, 362, 3574, 59, 719, "Text"],
Cell[14185, 423, 1735, 47, 90, "Input",
 InitializationCell->True],
Cell[15923, 472, 50, 0, 31, "Text"],
Cell[CellGroupData[{
Cell[15998, 476, 355, 12, 32, "Input"],
Cell[16356, 490, 2973, 69, 107, "Output"]
}, Open  ]],
Cell[19344, 562, 1369, 20, 423, "Text"],
Cell[20716, 584, 469, 16, 49, "Input",
 InitializationCell->True],
Cell[21188, 602, 458, 14, 49, "Input",
 InitializationCell->True],
Cell[21649, 618, 696, 21, 49, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[22370, 643, 7000, 174, 508, "Input",
 InitializationCell->True],
Cell[29373, 819, 6592, 145, 730, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Fw00Y2IBRKlpyB1BRCA4nOa6 *)
