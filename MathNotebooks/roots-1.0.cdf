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
NotebookDataLength[    134024,       4181]
NotebookOptionsPosition[    125963,       3939]
NotebookOutlinePosition[    126422,       3959]
CellTagsIndexPosition[    126379,       3956]
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
We have to compute the roots of polynomials for a variety of reasons. We are \
mostly interested in roots within a given interval. For example, when testing \
if a ray intersects a segment, we try to solve the equation y(t) = y0 for t \
in [0,1]. One alternative is to use bisection. Assume we want to solve f(t) \
== 0 for a continuous function f. Assume that f(t0) f(t1) <= 0. Then, either \
t0 is a root, or t1 is a root, or by the intermediate value theorem, there is \
a root in (t0, t1). Assume f(t0) < 0 (if not, exchange t0 and t1).  So we \
evaluate f(0.5*(t0+t1)) and use the sign to half the size of the interval. \
When the interval is small enough, we know we are pretty close to the root. \
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"debugPrint", " ", "=", " ", "Print"}], ";"}]], "Input"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "bisect", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"bisect", "[", 
     RowBox[{"f_Function", ",", " ", 
      RowBox[{"{", 
       RowBox[{"t0_", ",", " ", "t1_"}], "}"}], ",", " ", 
      RowBox[{"eps_:", "1*^-12"}], ",", " ", 
      RowBox[{"maxit_:", "53"}], ",", " ", 
      RowBox[{"it_:", "1"}]}], "]"}], " ", ":=", " ", "\[IndentingNewLine]", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"y0", " ", "=", " ", 
         RowBox[{"N", "[", 
          RowBox[{"f", "[", "t0", "]"}], "]"}]}], ",", " ", 
        RowBox[{"y1", " ", "=", " ", 
         RowBox[{"N", "[", 
          RowBox[{"f", "[", "t1", "]"}], "]"}]}]}], "}"}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Assert", "[", 
        RowBox[{
         RowBox[{"y0", " ", "y1"}], " ", "\[LessEqual]", " ", "0"}], "]"}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"y0", " ", ">", " ", "0"}], ",", "\[IndentingNewLine]", 
         RowBox[{"bisectaux", "[", 
          RowBox[{"f", ",", " ", 
           RowBox[{"{", 
            RowBox[{"t1", ",", " ", "t0"}], "}"}], ",", "eps", ",", " ", 
           "maxit", ",", " ", "it"}], "]"}], ",", "\[IndentingNewLine]", " ", 
         
         RowBox[{"bisectaux", "[", 
          RowBox[{"f", ",", " ", 
           RowBox[{"{", 
            RowBox[{"t0", ",", " ", "t1"}], "}"}], ",", "eps", ",", " ", 
           "maxit", ",", " ", "it"}], "]"}]}], "]"}]}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"bisectaux", "[", 
   RowBox[{"f_Function", ",", " ", 
    RowBox[{"b", ":", 
     RowBox[{"{", 
      RowBox[{"t0_", ",", " ", "t1_"}], "}"}]}], ",", " ", 
    RowBox[{"eps_:", "1*^-12"}], ",", " ", 
    RowBox[{"maxit_:", "53"}], ",", " ", 
    RowBox[{"it_:", "1"}]}], "]"}], " ", ":=", " ", "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"tm", " ", "=", " ", 
      RowBox[{"0.5", "*", 
       RowBox[{"(", 
        RowBox[{"t0", "+", "t1"}], ")"}]}]}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"ym", " ", "=", " ", 
        RowBox[{"N", "[", 
         RowBox[{"f", "[", "tm", "]"}], "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"Abs", "[", 
           RowBox[{"tm", "-", "t0"}], "]"}], " ", "<", " ", "eps"}], " ", "||",
          " ", 
         RowBox[{"it", " ", ">", " ", "maxit"}], " ", "||", " ", 
         RowBox[{"ym", " ", "\[Equal]", " ", "0."}]}], ",", 
        "\[IndentingNewLine]", "tm", ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"debugPrint", "[", 
          RowBox[{"{", 
           RowBox[{"it", ",", " ", 
            RowBox[{"NumberForm", "[", 
             RowBox[{"tm", ",", "13"}], "]"}], ",", 
            RowBox[{"BaseForm", "[", 
             RowBox[{
              RowBox[{"Abs", "[", 
               RowBox[{"t1", "-", "t0"}], "]"}], ",", "2"}], "]"}], ",", 
            "ym"}], "}"}], "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"ym", " ", ">", " ", "0"}], ",", " ", 
           "\[IndentingNewLine]", 
           RowBox[{"bisectaux", "[", 
            RowBox[{"f", ",", 
             RowBox[{"{", 
              RowBox[{"t0", ",", "tm"}], "}"}], ",", " ", "eps", ",", "maxit",
              ",", " ", 
             RowBox[{"it", "+", "1"}]}], "]"}], ",", "\[IndentingNewLine]", 
           RowBox[{"bisectaux", "[", 
            RowBox[{"f", ",", 
             RowBox[{"{", 
              RowBox[{"tm", ",", "t1"}], "}"}], ",", "eps", ",", " ", "maxit",
              ",", " ", 
             RowBox[{"it", "+", "1"}]}], "]"}]}], "]"}]}]}], "]"}]}], "]"}]}],
    "]"}]}]}], "Input",
 InitializationCell->True],

Cell["\<\
For example, if we are  want to find the square root of 2, we solve for the \
root of x^2 - 2 = 0. We know the root is inside [1,2], so\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Abs", "[", 
  RowBox[{
   RowBox[{"bisect", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"#", "^", "2"}], "-", "2"}], "&"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"1", ",", " ", "2"}], "}"}]}], "]"}], "-", 
   RowBox[{"Sqrt", "[", "2", "]"}]}], "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   TagBox[
    InterpretationBox["\<\"1.5\"\>",
     1.5,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     SubscriptBox["\<\"1\"\>", "\<\"2\"\>"],
     1,
     Editable->False],
    BaseForm[#, 2]& ], ",", "0.25`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"2", ",", 
   TagBox[
    InterpretationBox["\<\"1.25\"\>",
     1.25,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     SubscriptBox["\<\"0.1\"\>", "2"],
     0.5,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "0.4375`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"3", ",", 
   TagBox[
    InterpretationBox["\<\"1.375\"\>",
     1.375,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     SubscriptBox["\<\"0.01\"\>", "2"],
     0.25,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "0.109375`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"4", ",", 
   TagBox[
    InterpretationBox["\<\"1.4375\"\>",
     1.4375,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     SubscriptBox["\<\"0.001\"\>", "2"],
     0.125,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "0.06640625`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"5", ",", 
   TagBox[
    InterpretationBox["\<\"1.40625\"\>",
     1.40625,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     SubscriptBox["\<\"0.0001\"\>", "2"],
     0.0625,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "0.0224609375`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"6", ",", 
   TagBox[
    InterpretationBox["\<\"1.421875\"\>",
     1.421875,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     SubscriptBox["\<\"0.00001\"\>", "2"],
     0.03125,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "0.021728515625`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"7", ",", 
   TagBox[
    InterpretationBox["\<\"1.4140625\"\>",
     1.4140625,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-6\"\>"]}],
     0.015625,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "0.00042724609375`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"8", ",", 
   TagBox[
    InterpretationBox["\<\"1.41796875\"\>",
     1.41796875,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-7\"\>"]}],
     0.0078125,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "0.0106353759765625`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"9", ",", 
   TagBox[
    InterpretationBox["\<\"1.416015625\"\>",
     1.416015625,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-8\"\>"]}],
     0.00390625,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "0.005100250244140625`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"10", ",", 
   TagBox[
    InterpretationBox["\<\"1.4150390625\"\>",
     1.4150390625,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-9\"\>"]}],
     0.001953125,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "0.0023355484008789062`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"11", ",", 
   TagBox[
    InterpretationBox["\<\"1.41455078125\"\>",
     1.41455078125,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-10\"\>"]}],
     0.0009765625,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "0.0009539127349853516`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"12", ",", 
   TagBox[
    InterpretationBox["\<\"1.414306640625\"\>",
     1.414306640625,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-11\"\>"]}],
     0.00048828125,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "0.0002632737159729004`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"13", ",", 
   TagBox[
    InterpretationBox["\<\"1.414184570313\"\>",
     1.4141845703125,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-12\"\>"]}],
     0.000244140625,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "0.00008200109004974365`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"14", ",", 
   TagBox[
    InterpretationBox["\<\"1.414245605469\"\>",
     1.41424560546875,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-13\"\>"]}],
     0.0001220703125,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "0.00009063258767127991`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"15", ",", 
   TagBox[
    InterpretationBox["\<\"1.414215087891\"\>",
     1.414215087890625,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-14\"\>"]}],
     0.00006103515625,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "4.314817488193512`*^-6"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"16", ",", 
   TagBox[
    InterpretationBox["\<\"1.414199829102\"\>",
     1.4141998291015625`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-15\"\>"]}],
     0.000030517578125,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "0.000038843369111418724`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"17", ",", 
   TagBox[
    InterpretationBox["\<\"1.414207458496\"\>",
     1.4142074584960938`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-16\"\>"]}],
     0.0000152587890625,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "0.00001726433401927352`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"18", ",", 
   TagBox[
    InterpretationBox["\<\"1.414211273193\"\>",
     1.4142112731933594`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-17\"\>"]}],
     7.62939453125*^-6,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "6.474772817455232`*^-6"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"19", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213180542\"\>",
     1.4142131805419922`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-18\"\>"]}],
     3.814697265625*^-6,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "1.0799813026096672`*^-6"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"20", ",", 
   TagBox[
    InterpretationBox["\<\"1.414214134216\"\>",
     1.4142141342163086`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-19\"\>"]}],
     1.9073486328125*^-6,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "1.6174171832972206`*^-6"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"21", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213657379\"\>",
     1.4142136573791504`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-20\"\>"]}],
     9.5367431640625*^-7,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "2.687177129701013`*^-7"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"22", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213418961\"\>",
     1.4142134189605713`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-21\"\>"]}],
     4.76837158203125*^-7,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "4.056318516632018`*^-7"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"23", ",", 
   TagBox[
    InterpretationBox["\<\"1.41421353817\"\>",
     1.4142135381698608`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-22\"\>"]}],
     2.384185791015625*^-7,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "6.845708355740499`*^-8"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213597775\"\>",
     1.4142135977745056`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-23\"\>"]}],
     1.1920928955078125`*^-7,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "1.0013031115363447`*^-7"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"25", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213567972\"\>",
     1.4142135679721832`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-24\"\>"]}],
     5.960464477539063*^-8,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "1.583661290993632`*^-8"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"26", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213553071\"\>",
     1.414213553071022,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-25\"\>"]}],
     2.9802322387695312`*^-8,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "2.6310235545778937`*^-8"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"27", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213560522\"\>",
     1.4142135605216026`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-26\"\>"]}],
     1.4901161193847656`*^-8,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "5.236811428943611`*^-9"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"28", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213564247\"\>",
     1.414213564246893,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-27\"\>"]}],
     7.450580596923828*^-9,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "5.29990096254096`*^-9"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"29", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213562384\"\>",
     1.4142135623842478`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-28\"\>"]}],
     3.725290298461914*^-9,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "3.154454475406965`*^-11"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"30", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213561453\"\>",
     1.4142135614529252`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-29\"\>"]}],
     1.862645149230957*^-9,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "2.6026334420947705`*^-9"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"31", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213561919\"\>",
     1.4142135619185865`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-30\"\>"]}],
     9.313225746154785*^-10,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "1.285544337648048`*^-9"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"32", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213562151\"\>",
     1.4142135621514171`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-31\"\>"]}],
     4.656612873077393*^-10,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "6.269997854246867`*^-10"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"33", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213562268\"\>",
     1.4142135622678325`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-32\"\>"]}],
     2.3283064365386963`*^-10,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "2.9772762033530853`*^-10"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"34", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213562326\"\>",
     1.4142135623260401`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-33\"\>"]}],
     1.1641532182693481`*^-10,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "1.3309153779061944`*^-10"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"35", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213562355\"\>",
     1.414213562355144,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-34\"\>"]}],
     5.820766091346741*^-11,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "5.0773385495972434`*^-11"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"36", ",", 
   TagBox[
    InterpretationBox["\<\"1.41421356237\"\>",
     1.4142135623696959`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-35\"\>"]}],
     2.9103830456733704`*^-11,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "9.61430934864893`*^-12"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"37", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213562377\"\>",
     1.4142135623769718`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-36\"\>"]}],
     1.4551915228366852`*^-11,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "1.0965006680407896`*^-11"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"38", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213562373\"\>",
     1.4142135623733338`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-37\"\>"]}],
     7.275957614183426*^-12,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", "6.754596881819452`*^-13"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"39", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213562372\"\>",
     1.4142135623715149`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   TagBox[
    InterpretationBox[
     RowBox[{
      SubscriptBox["\<\"1.\"\>", "2"], "\[Times]", 
      SuperscriptBox["2", "\<\"-38\"\>"]}],
     3.637978807091713*^-12,
     AutoDelete->True],
    BaseForm[#, 2]& ], ",", 
   RowBox[{"-", "4.469535852535955`*^-12"}]}], "}"}]], "Print"]
}, Open  ]],

Cell[BoxData["6.707967514785196`*^-13"], "Output"]
}, Open  ]],

Cell[TextData[{
 "The bisection method gives us one bit of information per iteration. I.e., \
it has ",
 StyleBox["linear",
  FontSlant->"Italic"],
 " convergence. There is a much faster method, called Newton-Raphson, that \
has quadratic convergence. I.e., each iteration ",
 StyleBox["doubles",
  FontSlant->"Italic"],
 " the number of bits of information. The idea is to start from a point ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["t", "i"], TraditionalForm]]],
 " ",
 StyleBox["near",
  FontSlant->"Italic"],
 " the root. Then, use the function value and the derivative to find the \
linear approximation f(t) = f(",
 Cell[BoxData[
  FormBox[
   SubscriptBox["t", "i"], TraditionalForm]]],
 ") + f\[CloseCurlyQuote](",
 Cell[BoxData[
  FormBox[
   SubscriptBox["t", "i"], TraditionalForm]]],
 ")(t-",
 Cell[BoxData[
  FormBox[
   SubscriptBox["t", "i"], TraditionalForm]]],
 "). Now solve for the root of the linear approximation ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["t", 
     RowBox[{"i", "+", "1"}]], "=", " ", 
    RowBox[{
     SubscriptBox["t", "i"], " ", "-", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"f", "(", 
        SubscriptBox["t", "i"], ")"}], "/", 
       RowBox[{"f", "'"}]}], 
      RowBox[{"(", 
       SubscriptBox["t", "i"], ")"}]}]}]}], TraditionalForm]]],
 ". Repeat until dt = ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"f", "(", 
      SubscriptBox["t", "i"], ")"}], "/", 
     RowBox[{"f", "'"}]}], 
    RowBox[{"(", 
     SubscriptBox["t", "i"], ")"}]}], TraditionalForm]]],
 " is very small."
}], "Text"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "newtonraphson", "]"}], ";"}], "\[IndentingNewLine]", 

 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"newtonraphson", "[", 
     RowBox[{"f_Function", ",", " ", "t0_", ",", " ", 
      RowBox[{"eps_:", "1*^-12"}], ",", " ", 
      RowBox[{"maxit_Integer:", "53"}], ",", " ", 
      RowBox[{"it_Integer:", "1"}]}], "]"}], " ", ":=", " ", 
    "\[IndentingNewLine]", 
    RowBox[{"newtonraphsonaux", "[", 
     RowBox[{"f", ",", " ", 
      RowBox[{
       RowBox[{"Derivative", "[", "1", "]"}], "[", "f", "]"}], ",", " ", 
      RowBox[{"N", "[", "t0", "]"}], ",", " ", "eps", ",", " ", "maxit", ",", 
      " ", "it"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"newtonraphson", "[", 
     RowBox[{"f_Function", ",", " ", "df_Function", ",", " ", "t0_", ",", " ", 
      RowBox[{"eps_:", "1*^-12"}], ",", " ", 
      RowBox[{"maxit_Integer:", "53"}], ",", " ", 
      RowBox[{"it_Integer:", "1"}]}], "]"}], " ", ":=", " ", 
    "\[IndentingNewLine]", 
    RowBox[{"newtonraphsonaux", "[", 
     RowBox[{"f", ",", " ", "df", ",", " ", 
      RowBox[{"N", "[", "t0", "]"}], ",", " ", "eps", ",", " ", "maxit", ",", 
      " ", "it"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"newtonraphsonaux", "[", 
   RowBox[{"f_Function", ",", "df_Function", ",", " ", "t_", ",", " ", 
    RowBox[{"eps_:", "1*^-12"}], ",", " ", 
    RowBox[{"maxit_Integer:", "53"}], ",", " ", 
    RowBox[{"it_Integer:", "1"}]}], "]"}], " ", ":=", "  ", 
  "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"y", " ", "=", " ", 
      RowBox[{"N", "[", 
       RowBox[{"f", "[", "t", "]"}], "]"}]}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"dy", " ", "=", " ", 
        RowBox[{"N", "[", 
         RowBox[{"df", "[", "t", "]"}], "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"dt", " ", "=", " ", 
          RowBox[{
           RowBox[{"-", "y"}], "/", "dy"}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Abs", "[", "dt", "]"}], " ", "<", " ", "eps"}], " ", "||",
            " ", 
           RowBox[{"it", " ", ">", " ", "maxit"}]}], ",", 
          "\[IndentingNewLine]", "t", ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"debugPrint", "[", 
            RowBox[{"{", 
             RowBox[{"it", ",", 
              RowBox[{"NumberForm", "[", 
               RowBox[{"t", ",", "13"}], "]"}], ",", " ", "dt", ",", "y", ",",
               " ", "dy"}], "}"}], "]"}], ";", "\[IndentingNewLine]", 
           RowBox[{"newtonraphsonaux", "[", 
            RowBox[{"f", ",", "df", ",", 
             RowBox[{"t", "+", "dt"}], ",", "eps", ",", "maxit", ",", 
             RowBox[{"it", "+", "1"}]}], "]"}]}]}], "]"}]}], "]"}]}], "]"}]}],
    "]"}]}]}], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Abs", "[", 
  RowBox[{
   RowBox[{"newtonraphson", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"#", "^", "2"}], "-", "2"}], "&"}], ",", "1"}], "]"}], " ", 
   "-", 
   RowBox[{"Sqrt", "[", "2", "]"}]}], "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   TagBox[
    InterpretationBox["\<\"1.\"\>",
     1.,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "0.5`", ",", 
   RowBox[{"-", "1.`"}], ",", "2.`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"2", ",", 
   TagBox[
    InterpretationBox["\<\"1.5\"\>",
     1.5,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "0.08333333333333333`"}], ",", "0.25`", ",", "3.`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"3", ",", 
   TagBox[
    InterpretationBox["\<\"1.416666666667\"\>",
     1.4166666666666667`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "0.002450980392156932`"}], ",", "0.006944444444444642`", ",", 
   "2.8333333333333335`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"4", ",", 
   TagBox[
    InterpretationBox["\<\"1.414215686275\"\>",
     1.4142156862745099`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "2.123899819940621`*^-6"}], ",", "6.007304882871267`*^-6", 
   ",", "2.8284313725490198`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"5", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213562375\"\>",
     1.4142135623746899`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "1.5947429102833119`*^-12"}], ",", "4.510614104447086`*^-12", 
   ",", "2.8284271247493797`"}], "}"}]], "Print"]
}, Open  ]],

Cell[BoxData["0.`"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Abs", "[", 
  RowBox[{
   RowBox[{"newtonraphson", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"2", "-", 
       RowBox[{"#", "^", "2"}]}], "&"}], ",", "1"}], "]"}], " ", "-", 
   RowBox[{"Sqrt", "[", "2", "]"}]}], "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   TagBox[
    InterpretationBox["\<\"1.\"\>",
     1.,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "0.5`", ",", "1.`", ",", 
   RowBox[{"-", "2.`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"2", ",", 
   TagBox[
    InterpretationBox["\<\"1.5\"\>",
     1.5,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "0.08333333333333333`"}], ",", 
   RowBox[{"-", "0.25`"}], ",", 
   RowBox[{"-", "3.`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"3", ",", 
   TagBox[
    InterpretationBox["\<\"1.416666666667\"\>",
     1.4166666666666667`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "0.002450980392156932`"}], ",", 
   RowBox[{"-", "0.006944444444444642`"}], ",", 
   RowBox[{"-", "2.8333333333333335`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"4", ",", 
   TagBox[
    InterpretationBox["\<\"1.414215686275\"\>",
     1.4142156862745099`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "2.123899819940621`*^-6"}], ",", 
   RowBox[{"-", "6.007304882871267`*^-6"}], ",", 
   RowBox[{"-", "2.8284313725490198`"}]}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"5", ",", 
   TagBox[
    InterpretationBox["\<\"1.414213562375\"\>",
     1.4142135623746899`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "1.5947429102833119`*^-12"}], ",", 
   RowBox[{"-", "4.510614104447086`*^-12"}], ",", 
   RowBox[{"-", "2.8284271247493797`"}]}], "}"}]], "Print"]
}, Open  ]],

Cell[BoxData["0.`"], "Output"]
}, Open  ]],

Cell["\<\
Newton-Raphson has a problem if the derivative is very small, naturally. Even \
if it isn\[CloseCurlyQuote]t, it can still diverge. For example, consider \
f(t) = Power[t, 1/3] = Surd[t,3] and start at t=1.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"Surd", "[", 
    RowBox[{"t", ",", "3"}], "]"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"t", ",", " ", 
     RowBox[{"-", "3"}], ",", "3"}], "}"}], ",", " ", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "}"}]}]}], "]"}]], "Input"],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[0.368417, 0.506779, 0.709798], AbsoluteThickness[1.6], Opacity[
    1.], LineBox[CompressedData["
1:eJwtlnk8FAgfxt2kjTYsrVzZUKncy6p+UkltKSU5UqgotVJGbkKRceVMrkSO
KK/NujU/OWdcw4wZt8GYYUQoRdnWet/P+3w+z+f54/v8+fzxqDjfPntNgI+P
L3nd/02l6zIdp4QWkO9/WkBLJYeviglzSKdWB/+2ex7PCR4JbQ7h4VqZ2E8x
xXN4ZHuCdF0FB5NbGjWKFGdxXMcpISptHA/kdTvbGs5gSVjxHVfiOMrZn3A8
pzWDfr2fzxz2G8d60i4Pc40ZlLpHlFy1HUfSSHGhqtwMHq0ui3bbOo5xq3a5
mcs8fAkiEcdTxzD7RURZajkPJ1KtlyU0WXj2Eb+7+x4eCnbMUERUh5AvmWV7
UXwaCQVtYjyhIXRU63Yg8E/jZGjRsXbuIIoY//ju4coUNhu5NccVDeJRM6Zn
EncKIwp49XI6gzjzylHNsWEKN4ZNV+46NICl21235flModRv3DyLy33omles
FMzi4gOZlkmtQ32o0ssaLWBwcWkhT1VKtQ//cj8vT27nIqPg2vM+LhOj8ijv
PlRy8YkMJ8PRnYneaV0ltDguyi+yE+8GMnBq0yFP9gEuqhaOh6Sk01Ga6F8W
lcBB5SiFR/N+dFQ6HPEgKpyDiu62seZ2dMzgiHAC/Tj4s15P2je59X6gXp2R
Mwe31NeXXUqhIXEuyHODNgf5+59x1OJ7MFVSTGayfRJRsi7BfRMVdWx0fbQ+
s7GGoftMuaMLc3YKCe6cYmNFenExjdiFN3JLizYNsLFEPb3JQKwLDYxrddLq
2JgFfl/+EejEgeC55cpQNgbcNrSLW2nDgDyhaZI4Gw2pf6mUsltwijE/cUx0
AtlijXsr81uQr2dbzK/L4xhr2mNMutGC2Zt8j4tPjSO7fO58x3wzfmLe4lq3
rPMMNeL0ahPWit+wCgxb5zdSPypLN+JBPp6N1/IYxubmr6n3NaBs9/lFC84Y
Go789cO+tAascXcz4Kev8zM9ageUGzC9TsBx9vUYGv0qbm+r+Q5FzoUXNTqN
ocKGlXDVSBLSZB4py4aw8G6A9HNtSRJe2BLZ+sGaheR5rVpIfouWpNHOc+u7
usu8MW//vA6zeL73qhmjSM4dupBUXYNX+CgJidtHUVF25U4O1GDC33KO3ksj
6EmUji5trsat+7gB7c0jqHjnVH1HTxW2bNdNe+MygoSDqCE8U4E2kW4xC9nD
2PbnkKmURwUKjVme7vhjGJV2rFxU+VKOkrfO3p4zWucbteMPCJRjR/6i9iR1
CJUGcr56/VyGBq1zs5TFQUya+iG5M7kE82Tev64SGsCxn7xHy/JfY663qvpg
Qz/uNhtXT6t8hRJfRcuSg/ux4UV5jctAEbIoXUhc6sNFp0tja9sKUJHSqkah
MHF/PHknd08+JmlFv1DyY+Kjeh3PjoN5uEyXPaKtwURlJVGRp465eLEoNZ8e
wMDMqssXrpo/Qyt+afU2/l7Uk9Wb0XLLxGHjmAHSUzp2eIkFfo9KxzLCy1yd
PXT8pvNnTgr1CbK2MuZcjtAwIf6h/pXFZPTNdSE3tfTgzgVb8j6pJEz0pN2h
HOpBm9cCH8jWjzHsfdTH6m3dOCpbwr97MRqzq6wajn7swk0Ma/UmvUgsJBVr
J8Z04v6EtZMOPg/R+7Fee65gB7qdLrz7pTYENY+xrLjmbai9NUdLac0ft57R
/aXkBBljEz/5W4YTcOq3Sa2zU83IlCfGisq7IWm3z8aNzAZUVrE70X/WGot6
d6S5O9XhK0awit+hg6B/ejBRgVIGq8Ixr9uqnUEjxPdA2HA9ZIt5bSxjeECe
wO9Ko/eb4HCsav19Cx+IkffcFKrZClwpGsGiNRiMDDw+fbamQNPJemmJ7DD4
pBbwRUyrHVLiZOcJFyOgspBcdKK7A1xp7pQhuSiQqOKZG5l1gaFMS64pIxb2
utoZ70ungvArCew1j4cCb/4dnW7dwPxw7amxcDLIXtIXlwnvAXgcL3KbnQJB
IYLtBqI0KNR+65nzLhX8MnbfCw6hgS9B2mJDUAaEf0xqrr1KhwkZk9r9F7PA
4VT8rsUuOuQN6UsbKmSDwYP7K2N6vSAR6BRyc/U5tF35Zzz4cy+wsMqeVpkH
SllU+pIlE5IeW2yZzc+HIP0HclU5TDB3miQLpxSAR4lm4olFJpQKbDYwIrwE
D+abkpuP+iD0qOvmbK3XUF4S9p76vB86BrZFC+qVALXn8Z6PvH6QcaeJuv76
H7gVYzbrrzUAVu1Zaz89KwXRutJI+eoB4H7asDyS9wbYJQHkiJpBED86xrlZ
VgFdRTpXVIjDsFeyNldBvxJCcpx40vXDcG4g2YlaUQkPA5ZHTD4PQ8Yfv4/o
1FTBHl/NaQeHEdiXUtH7tb4G3h67KGS/YxSspqIbI7pIEJRucnkilQU+f7qG
GJ1BSC2+MLvaxIJMf1N434OgxrOwy1hgwSfRAIcCt3qwZHuYgOoY7M/QHhB3
fwc2bOPG6HtjQG3K6O4hNELy911i81LjsCTjiZdDW4HGSQxP0JoAG9G2TDap
FU6SNrxRNpmA2hXlANfVVjjzUik86fQEhA51Gd4mkOHjle+je90nQPL5rjdB
LhTQKLapMiqagF2aEy8yT7TD929HJFcV2OBoakkc2kKFr0p2K7Zf2NCkW3j9
8mkqzGmaCR0TnAT1HWtm7CgqKEz+7Km6eRKWw5ghXgLdwDvnfLJ45ySQXB4c
DPTvhsrhYJ+/7Sfhd82xyug/eqA3bvPfnW8nwaXySVGxJR22s6uqT3lzgKjh
Srt3lw6SWzxNb4VxoOSpwbdDiXTQX/qgExjHgWV/xvH+XjpcKBOauFfAgUcm
Ujwhm1544oiETiYHiimx6pcuMSBG/Ee7HbpcWBh6+GLzzT44H+nsZMXmgi8f
IcvrwRDYP3lHWVObBqJ5ZljBiyFQdNb1ctWahrTHLdcHmoZgL02C2Wo0DTXK
W3UPCA9DqpjCwt2T0/DNhNQqFD4MaTP8woQ70xAQIraYGDECRkVkjT010xAk
kHn4DZEFbbTvUVQzHpgKXCF4k8chhRxoveX0DNhSftl8NZID8hI66Rs2zkJT
1rV673QeOFs6X71fPgcmRuBqfH0Obtsq9vpvm4dEl7CVJcEF+P9/gn8Bpnb4
kQ==
     "]]}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{"DefaultBoundaryStyle" -> Automatic, "ScalingFunctions" -> None},
  PlotRange->{{-1, 1}, {-1, 1}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0, 0}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Abs", "[", 
  RowBox[{"newtonraphson", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Surd", "[", 
      RowBox[{"#", ",", "3"}], "]"}], "&"}], ",", "1"}], "]"}], 
  "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   TagBox[
    InterpretationBox["\<\"1.\"\>",
     1.,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "3.`"}], ",", "1.`", ",", "0.3333333333333333`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"2", ",", 
   TagBox[
    InterpretationBox["\<\"-2.\"\>",
     -2.,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "6.000000000000001`", ",", 
   RowBox[{"-", "1.2599210498948732`"}], ",", "0.2099868416491455`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"3", ",", 
   TagBox[
    InterpretationBox["\<\"4.\"\>",
     4.000000000000001,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "12.000000000000005`"}], ",", "1.5874010519681996`", ",", 
   "0.1322834209973499`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"4", ",", 
   TagBox[
    InterpretationBox["\<\"-8.\"\>",
     -8.000000000000004,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "24.`", ",", 
   RowBox[{"-", "2.`"}], ",", "0.08333333333333333`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"5", ",", 
   TagBox[
    InterpretationBox["\<\"16.\"\>",
     15.999999999999996`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "47.99999999999997`"}], ",", "2.519842099789746`", ",", 
   "0.0524967104122864`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"6", ",", 
   TagBox[
    InterpretationBox["\<\"-32.\"\>",
     -31.999999999999975`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "95.99999999999991`", ",", 
   RowBox[{"-", "3.174802103936398`"}], ",", "0.033070855249337505`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"7", ",", 
   TagBox[
    InterpretationBox["\<\"64.\"\>",
     63.99999999999994,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "191.99999999999983`"}], ",", "3.9999999999999987`", ",", 
   "0.020833333333333346`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"8", ",", 
   TagBox[
    InterpretationBox["\<\"-128.\"\>",
     -127.99999999999989`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "383.9999999999997`", ",", 
   RowBox[{"-", "5.039684199579491`"}], ",", "0.013124177603071602`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"9", ",", 
   TagBox[
    InterpretationBox["\<\"256.\"\>",
     255.99999999999983`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "767.9999999999993`"}], ",", "6.349604207872796`", ",", 
   "0.008267713812334376`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"10", ",", 
   TagBox[
    InterpretationBox["\<\"-512.\"\>",
     -511.9999999999995,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "1535.9999999999982`", ",", 
   RowBox[{"-", "7.9999999999999964`"}], ",", "0.005208333333333337`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"11", ",", 
   TagBox[
    InterpretationBox["\<\"1024.\"\>",
     1023.9999999999986`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "3071.9999999999955`"}], ",", "10.07936839915898`", ",", 
   "0.0032810444007679023`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"12", ",", 
   TagBox[
    InterpretationBox["\<\"-2048.\"\>",
     -2047.9999999999968`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "6143.999999999989`", ",", 
   RowBox[{"-", "12.699208415745588`"}], ",", "0.0020669284530835954`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"13", ",", 
   TagBox[
    InterpretationBox["\<\"4096.\"\>",
     4095.9999999999923`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "12287.999999999973`"}], ",", "15.999999999999988`", ",", 
   "0.0013020833333333352`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"14", ",", 
   TagBox[
    InterpretationBox["\<\"-8192.\"\>",
     -8191.99999999998,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "24575.999999999927`", ",", 
   RowBox[{"-", "20.15873679831795`"}], ",", "0.0008202611001919763`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"15", ",", 
   TagBox[
    InterpretationBox["\<\"16384.\"\>",
     16383.999999999947`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "49151.999999999825`"}], ",", "25.39841683149116`", ",", 
   "0.0005167321132708995`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"16", ",", 
   TagBox[
    InterpretationBox["\<\"-32768.\"\>",
     -32767.999999999876`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "98303.99999999958`", ",", 
   RowBox[{"-", "31.999999999999954`"}], ",", "0.00032552083333333424`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"17", ",", 
   TagBox[
    InterpretationBox["\<\"65536.\"\>",
     65535.9999999997,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "196607.999999999`"}], ",", "40.31747359663587`", ",", 
   "0.00020506527504799435`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"18", ",", 
   TagBox[
    InterpretationBox["\<\"-131072.\"\>",
     -131071.9999999993,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "393215.99999999773`", ",", 
   RowBox[{"-", "50.79683366298228`"}], ",", "0.00012918302831772506`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"19", ",", 
   TagBox[
    InterpretationBox["\<\"262144.\"\>",
     262143.99999999843`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "786431.9999999948`"}], ",", "63.99999999999986`", ",", 
   "0.0000813802083333337`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"20", ",", 
   TagBox[
    InterpretationBox["\<\"-524288.\"\>",
     -524287.99999999633`,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "1.5728639999999877`*^6", ",", 
   RowBox[{"-", "80.63494719327167`"}], ",", "0.00005126631876199869`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"21", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"1.048576\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"6\"\>"]}],
     1.0485759999999914`*^6,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "3.145727999999972`*^6"}], ",", "101.59366732596446`", ",", 
   "0.000032295757079431334`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"22", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-2.097152\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"6\"\>"]}],
     -2.0971519999999807`*^6,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "6.291455999999938`*^6", ",", 
   RowBox[{"-", "127.99999999999957`"}], ",", "0.000020345052083333468`"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"23", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"4.194304\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"6\"\>"]}],
     4.194303999999957*^6,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "1.2582911999999862`*^7"}], ",", "161.26989438654317`", ",", 
   "0.0000128165796904997`"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-8.388608\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"6\"\>"]}],
     -8.388607999999905*^6,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "2.5165823999999687`*^7", ",", 
   RowBox[{"-", "203.1873346519287`"}], ",", "8.073939269857852`*^-6"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"25", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"1.6777216\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"7\"\>"]}],
     1.6777215999999782`*^7,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "5.03316479999993`*^7"}], ",", "255.9999999999988`", ",", 
   "5.0862630208333805`*^-6"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"26", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-3.3554432\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"7\"\>"]}],
     -3.3554431999999516`*^7,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "1.0066329599999848`*^8", ",", 
   RowBox[{"-", "322.5397887730859`"}], ",", "3.2041449226249333`*^-6"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"27", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"6.7108864\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"7\"\>"]}],
     6.7108863999998964`*^7,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "2.013265919999967`*^8"}], ",", "406.3746693038568`", ",", 
   "2.0184848174644685`*^-6"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"28", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-1.34217728\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"8\"\>"]}],
     -1.3421772799999774`*^8,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "4.026531839999928`*^8", ",", 
   RowBox[{"-", "511.99999999999693`"}], ",", "1.2715657552083485`*^-6"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"29", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"2.68435456\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"8\"\>"]}],
     2.6843545599999505`*^8,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "8.053063679999845`*^8"}], ",", "645.0795775461709`", ",", 
   "8.010362306562356`*^-7"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"30", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-5.36870912\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"8\"\>"]}],
     -5.3687091199998945`*^8,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "1.6106127359999664`*^9", ",", 
   RowBox[{"-", "812.7493386077125`"}], ",", "5.046212043661186`*^-7"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"31", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"1.073741824\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"9\"\>"]}],
     1.0737418239999769`*^9,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "3.221225471999927`*^9"}], ",", "1023.9999999999923`", ",", 
   "3.1789143880208813`*^-7"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"32", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-2.147483648\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"9\"\>"]}],
     -2.1474836479999502`*^9,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "6.442450943999843`*^9", ",", 
   RowBox[{"-", "1290.1591550923397`"}], ",", "2.0025905766405958`*^-7"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"33", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"4.294967296\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"9\"\>"]}],
     4.294967295999892*^9,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "1.2884901887999664`*^10"}], ",", "1625.498677215422`", ",", 
   "1.2615530109153008`*^-7"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"34", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-8.589934592\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"9\"\>"]}],
     -8.589934591999772*^9,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "2.576980377599929`*^10", ",", 
   RowBox[{"-", "2047.9999999999811`"}], ",", "7.94728597005223`*^-8"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"35", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"1.7179869184\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"10\"\>"]}],
     1.717986918399952*^10,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "5.153960755199849`*^10"}], ",", "2580.318310184675`", ",", 
   "5.006476441601506`*^-8"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"36", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-3.4359738368\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"10\"\>"]}],
     -3.435973836799897*^10,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "1.030792151039968`*^11", ",", 
   RowBox[{"-", "3250.9973544308386`"}], ",", "3.1538825272882625`*^-8"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"37", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"6.8719476736\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"10\"\>"]}],
     6.8719476735997826`*^10,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "2.0615843020799323`*^11"}], ",", "4095.999999999955`", ",", 
   "1.9868214925130644`*^-8"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"38", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-1.37438953472\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"11\"\>"]}],
     -1.3743895347199539`*^11,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "4.1231686041598566`*^11", ",", 
   RowBox[{"-", "5160.636620369341`"}], ",", "1.2516191104003811`*^-8"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"39", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"2.74877906944\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"11\"\>"]}],
     2.7487790694399026`*^11,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "8.246337208319698`*^11"}], ",", "6501.9947088616655`", ",", 
   "7.884706318220686`*^-9"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"40", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-5.49755813888\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"11\"\>"]}],
     -5.497558138879796*^11,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "1.6492674416639363`*^12", ",", 
   RowBox[{"-", "8191.9999999998945`"}], ",", "4.96705373128268`*^-9"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"41", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"1.099511627776\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"12\"\>"]}],
     1.0995116277759567`*^12,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "3.2985348833278643`*^12"}], ",", "10321.27324073866`", ",", 
   "3.129047776000966`*^-9"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"42", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-2.199023255552\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"12\"\>"]}],
     -2.1990232555519077`*^12,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "6.597069766655714`*^12", ",", 
   RowBox[{"-", "13003.989417723302`"}], ",", "1.97117657955518`*^-9"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"43", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"4.398046511104\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"12\"\>"]}],
     4.398046511103806*^12,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "1.3194139533311398`*^13"}], ",", "16383.99999999975`", ",", 
   "1.2417634328206758`*^-9"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"44", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-8.796093022208\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"12\"\>"]}],
     -8.796093022207592*^12,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "2.638827906662273`*^13", ",", 
   RowBox[{"-", "20642.54648147727`"}], ",", "7.822619440002451`*^-10"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"45", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"1.759218604442\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"13\"\>"]}],
     1.7592186044415139`*^13,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "5.2776558133245336`*^13"}], ",", "26007.97883544654`", ",", 
   "4.927941448887974`*^-10"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"46", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-3.518437208883\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"13\"\>"]}],
     -3.5184372088830195`*^13,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "1.0555311626649042`*^14", ",", 
   RowBox[{"-", "32767.99999999942`"}], ",", "3.1044085820517045`*^-10"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"47", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"7.036874417766\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"13\"\>"]}],
     7.036874417766023*^13,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "2.1110623253298028`*^14"}], ",", "41285.09296295444`", ",", 
   "1.9556548600006224`*^-10"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"48", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-1.407374883553\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"14\"\>"]}],
     -1.4073748835532006`*^14,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "4.222124650659595`*^14", ",", 
   RowBox[{"-", "52015.95767089295`"}], ",", "1.2319853622219998`*^-10"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"49", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"2.814749767106\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"14\"\>"]}],
     2.8147497671063944`*^14,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "8.444249301319169`*^14"}], ",", "65535.999999998676`", ",", 
   "7.761021455129301`*^-11"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"50", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-5.629499534213\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"14\"\>"]}],
     -5.6294995342127744`*^14,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "1.688849860263829`*^15", ",", 
   RowBox[{"-", "82570.18592590866`"}], ",", "4.889137150001582`*^-11"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"51", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"1.125899906843\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"15\"\>"]}],
     1.1258999068425515`*^15,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "3.3776997205276475`*^15"}], ",", "104031.91534178561`", ",", 
   "3.079963405555017`*^-11"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"52", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"-2.251799813685\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"15\"\>"]}],
     -2.251799813685096*^15,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", "6.755399441055274`*^15", ",", 
   RowBox[{"-", "131071.99999999696`"}], ",", "1.940255363782337`*^-11"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"53", ",", 
   TagBox[
    InterpretationBox[
     RowBox[{"\<\"4.50359962737\"\>", "\[Times]", 
      SuperscriptBox["10", "\<\"15\"\>"]}],
     4.503599627370178*^15,
     AutoDelete->True],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "1.3510798882110514`*^16"}], ",", "165140.37185181683`", ",", 
   "1.2222842875004026`*^-11"}], "}"}]], "Print"]
}, Open  ]],

Cell[BoxData["9.007199254740336`*^15"], "Output"]
}, Open  ]],

Cell["\<\
It is easy to design a method that converges as fast as Newton-Raphson when \
it is behaving well, and as fast as bisection otherwise. The idea is to \
revert to bisection if the derivative is undefined, or if the Newton-Raphson \
step would take us outside of the bracket, or if dt is not shrinking fast \
enough (i.e., faster than bisection would shrink).\
\>", "Text"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Clear", "[", "safenewtonraphson", "]"}], ";"}], 
  " "}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"safenewtonraphson", "[", 
     RowBox[{"f_Function", " ", ",", 
      RowBox[{"{", 
       RowBox[{"t0_", ",", " ", "t1_"}], "}"}], ",", 
      RowBox[{"eps_:", "1*^-12"}], ",", " ", 
      RowBox[{"maxit_Integer:", "50"}], ",", " ", 
      RowBox[{"it_Integer:", "1"}]}], "]"}], " ", ":=", " ", 
    "\[IndentingNewLine]", 
    RowBox[{"safenewtonraphson", "[", 
     RowBox[{"f", " ", ",", 
      RowBox[{
       RowBox[{"Derivative", "[", "1", "]"}], "[", "f", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"t0", ",", " ", "t1"}], "}"}], ",", "eps", ",", " ", "maxit", 
      ",", " ", "it"}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"safenewtonraphson", "[", 
     RowBox[{"f_Function", " ", ",", "df_Function", ",", 
      RowBox[{"{", 
       RowBox[{"t0_", ",", " ", "t1_"}], "}"}], ",", 
      RowBox[{"eps_:", "1*^-12"}], ",", " ", 
      RowBox[{"maxit_Integer:", "50"}], ",", " ", 
      RowBox[{"it_Integer:", "1"}]}], "]"}], " ", ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"y0", " ", "=", " ", 
         RowBox[{"f", "[", "t0", "]"}]}], ",", " ", 
        RowBox[{"y1", " ", "=", " ", 
         RowBox[{"f", "[", "t1", "]"}]}], ",", " ", 
        RowBox[{"t", "=", 
         RowBox[{".5", 
          RowBox[{"(", 
           RowBox[{"t0", "+", "t1"}], ")"}]}]}]}], "}"}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Assert", "[", 
        RowBox[{
         RowBox[{"y0", " ", "y1"}], " ", "\[LessEqual]", " ", "0"}], "]"}], 
       ";", " ", "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"y0", " ", ">", " ", "0"}], ",", "\[IndentingNewLine]", 
         RowBox[{"safenewtonraphsonaux", "[", 
          RowBox[{"f", ",", " ", "df", ",", " ", 
           RowBox[{"{", 
            RowBox[{"t1", ",", "t0"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", 
             RowBox[{"t1", "-", "t0"}], ",", " ", 
             RowBox[{"f", "[", "t", "]"}], ",", " ", 
             RowBox[{"Quiet", "[", 
              RowBox[{
               RowBox[{"df", "[", "t", "]"}], ",", " ", 
               RowBox[{"Power", "::", "infy"}]}], "]"}]}], "}"}], ",", " ", 
           "eps", ",", " ", "maxit", " ", ",", "it"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"safenewtonraphsonaux", "[", 
          RowBox[{"f", ",", " ", "df", ",", " ", 
           RowBox[{"{", 
            RowBox[{"t0", ",", "t1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", 
             RowBox[{"t1", "-", "t0"}], ",", " ", 
             RowBox[{"f", "[", "t", "]"}], ",", " ", 
             RowBox[{"Quiet", "[", 
              RowBox[{
               RowBox[{"df", "[", "t", "]"}], ",", " ", 
               RowBox[{"Power", "::", "infy"}]}], "]"}]}], "}"}], ",", " ", 
           "eps", ",", " ", "maxit", " ", ",", "it"}], "]"}]}], "]"}]}]}], 
     "]"}]}], ";"}], "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"safenewtonraphsonaux", "[", 
   RowBox[{"f_Function", ",", " ", "df_Function", ",", " ", 
    RowBox[{"{", 
     RowBox[{"t0_", ",", " ", "t1_"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"t_", ",", " ", "dt_", ",", " ", "y_", ",", " ", "dy_"}], "}"}], 
    ",", 
    RowBox[{"eps_:", "1*^-12"}], ",", " ", 
    RowBox[{"maxit_Integer:", "50"}], ",", " ", 
    RowBox[{"it_Integer:", "1"}]}], "]"}], " ", ":=", "  ", 
  "\[IndentingNewLine]", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Abs", "[", "dt", "]"}], " ", "<", " ", "eps"}], " ", "||", " ", 
     RowBox[{"it", " ", ">", " ", "maxit"}], " ", "||", " ", 
     RowBox[{"y", " ", "\[Equal]", " ", "0."}]}], ",", "\[IndentingNewLine]", 
    "t", ",", "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"dy", " ", "===", " ", "ComplexInfinity"}], " ", 
       RowBox[{"(*", " ", 
        RowBox[{"df", " ", "is", " ", "not", " ", "defined"}], " ", "*)"}], "||",
        "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"t", "-", "t1"}], ")"}], "dy"}], "-", "y"}], ")"}], 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"t", "-", "t0"}], ")"}], "dy"}], "-", "y"}], ")"}]}], 
        " ", ">", " ", "0"}], " ", 
       RowBox[{"(*", " ", 
        RowBox[{"Newton", "-", 
         RowBox[{
         "Raphson", " ", "would", " ", "move", " ", "us", " ", "outside", " ",
           "the", " ", "bracket"}]}], " ", "*)"}], "||", " ", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Abs", "[", 
         RowBox[{"2", " ", "y"}], "]"}], " ", ">", " ", 
        RowBox[{"Abs", "[", 
         RowBox[{"dy", " ", "dt"}], "]"}]}]}], " ", 
      RowBox[{"(*", " ", 
       RowBox[{"Newton", "-", 
        RowBox[{
        "Raphson", " ", "is", " ", "moving", " ", "us", " ", "too", " ", 
         "far", " ", "away"}]}], " ", "*)"}], ",", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{"Use", " ", "bisection"}], " ", "*)"}], "\[IndentingNewLine]", 
      
      RowBox[{
       RowBox[{"debugPrint", "[", 
        RowBox[{"{", 
         RowBox[{"it", ",", 
          RowBox[{"NumberForm", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"t0", ",", "t", ",", "t1"}], "}"}], ",", "13"}], "]"}], 
          ",", "dt", ",", " ", "y", ",", " ", "dy", ",", " ", 
          "\"\<bisection\>\""}], "}"}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"tm", " ", "=", " ", 
            RowBox[{"0.5", 
             RowBox[{"(", 
              RowBox[{"t0", "+", "t1"}], ")"}]}]}], ",", " ", 
           RowBox[{"dtm", " ", "=", " ", 
            RowBox[{"0.5", 
             RowBox[{"(", 
              RowBox[{"t1", "-", "t0"}], ")"}]}]}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"ym", " ", "=", " ", 
              RowBox[{"f", "[", "tm", "]"}]}], ",", " ", 
             RowBox[{"dym", " ", "=", " ", 
              RowBox[{"Quiet", "[", 
               RowBox[{
                RowBox[{"df", "[", "tm", "]"}], ",", " ", 
                RowBox[{"Power", "::", "infy"}]}], "]"}]}]}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"ym", " ", ">", " ", "0"}], ",", " ", 
             "\[IndentingNewLine]", 
             RowBox[{"safenewtonraphsonaux", "[", 
              RowBox[{"f", ",", "df", ",", 
               RowBox[{"{", 
                RowBox[{"t0", ",", "tm"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"tm", ",", "dtm", ",", " ", "ym", ",", " ", "dym"}], 
                "}"}], ",", " ", "eps", ",", "maxit", ",", " ", 
               RowBox[{"it", "+", "1"}]}], "]"}], ",", "\[IndentingNewLine]", 
             
             RowBox[{"safenewtonraphsonaux", "[", 
              RowBox[{"f", ",", "df", ",", 
               RowBox[{"{", 
                RowBox[{"tm", ",", "t1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"tm", ",", "dtm", ",", " ", "ym", ",", " ", "dym"}], 
                "}"}], ",", "eps", ",", " ", "maxit", ",", " ", 
               RowBox[{"it", "+", "1"}]}], "]"}]}], "]"}]}], "]"}]}], "]"}]}],
       ",", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{"Otherwise", ",", " ", 
        RowBox[{
         RowBox[{
         "it", " ", "is", " ", "safe", " ", "to", " ", "use", " ", "Newton"}],
          "-", "Raphson"}]}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"debugPrint", "[", 
        RowBox[{"{", 
         RowBox[{"it", ",", 
          RowBox[{"NumberForm", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"t0", ",", "t", ",", "t1"}], "}"}], ",", "13"}], "]"}], 
          ",", " ", "dt", ",", "y", ",", " ", "dy", ",", " ", 
          "\"\<newton\>\""}], "}"}], "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"dtm", " ", "=", 
           RowBox[{
            RowBox[{"-", "y"}], "/", "dy"}]}], " ", "}"}], ",", " ", 
         "\[IndentingNewLine]", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"tm", " ", "=", " ", 
             RowBox[{"t", "+", "dtm"}]}], "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"Module", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"ym", " ", "=", " ", 
                RowBox[{"f", "[", "tm", "]"}]}], ",", " ", 
               RowBox[{"dym", " ", "=", " ", 
                RowBox[{"Quiet", "[", 
                 RowBox[{
                  RowBox[{"df", "[", "tm", "]"}], ",", " ", 
                  RowBox[{"Power", "::", "infy"}]}], "]"}]}]}], "}"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"ym", " ", ">", " ", "0"}], ",", " ", 
               "\[IndentingNewLine]", 
               RowBox[{"safenewtonraphsonaux", "[", 
                RowBox[{"f", ",", "df", ",", 
                 RowBox[{"{", 
                  RowBox[{"t0", ",", "tm"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"tm", ",", "dtm", ",", " ", "ym", ",", " ", "dym"}],
                   "}"}], ",", " ", "eps", ",", "maxit", ",", " ", 
                 RowBox[{"it", "+", "1"}]}], "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"safenewtonraphsonaux", "[", 
                RowBox[{"f", ",", "df", ",", 
                 RowBox[{"{", 
                  RowBox[{"tm", ",", "t1"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"tm", ",", "dtm", ",", " ", "ym", ",", " ", "dym"}],
                   "}"}], ",", "eps", ",", " ", "maxit", ",", " ", 
                 RowBox[{"it", "+", "1"}]}], "]"}]}], "]"}]}], "]"}]}], 
          "]"}]}], "]"}]}]}], "]"}]}], 
   "]"}]}], "\[IndentingNewLine]"}], "Input",
 InitializationCell->True],

Cell["As we can see, this method works neatly.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Abs", "[", 
  RowBox[{
   RowBox[{"safenewtonraphson", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"#", "^", "2"}], "-", "2"}], "&"}], ",", " ", 
     RowBox[{
      RowBox[{"2", "#"}], "&"}], ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "2"}], "}"}]}], "]"}], " ", "-", 
   RowBox[{"Sqrt", "[", "2", "]"}]}], "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"1\"\>",
       1,
       Editable->False], ",", 
      InterpretationBox["\<\"1.5\"\>",
       1.5,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"2\"\>",
       2,
       Editable->False]}], "}"}],
    NumberForm[#, 13]& ], ",", "1", ",", "0.25`", ",", "3.`", 
   ",", "\<\"newton\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"2", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"1\"\>",
       1,
       Editable->False], ",", 
      InterpretationBox["\<\"1.416666666667\"\>",
       1.4166666666666667`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.416666666667\"\>",
       1.4166666666666667`,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "0.08333333333333333`"}], ",", "0.006944444444444642`", ",", 
   "2.8333333333333335`", ",", "\<\"newton\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"3", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"1\"\>",
       1,
       Editable->False], ",", 
      InterpretationBox["\<\"1.414215686275\"\>",
       1.4142156862745099`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.414215686275\"\>",
       1.4142156862745099`,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "0.002450980392156932`"}], ",", "6.007304882871267`*^-6", ",",
    "2.8284313725490198`", ",", "\<\"newton\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"4", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"1\"\>",
       1,
       Editable->False], ",", 
      InterpretationBox["\<\"1.414213562375\"\>",
       1.4142135623746899`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.414213562375\"\>",
       1.4142135623746899`,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "2.123899819940621`*^-6"}], ",", "4.510614104447086`*^-12", 
   ",", "2.8284271247493797`", ",", "\<\"newton\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"5", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"1\"\>",
       1,
       Editable->False], ",", 
      InterpretationBox["\<\"1.414213562373\"\>",
       1.4142135623730951`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.414213562373\"\>",
       1.4142135623730951`,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "1.5947429102833119`*^-12"}], ",", "4.440892098500626`*^-16", 
   ",", "2.8284271247461903`", ",", "\<\"newton\"\>"}], "}"}]], "Print"]
}, Open  ]],

Cell[BoxData["2.220446049250313`*^-16"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Abs", "[", 
  RowBox[{
   RowBox[{"safenewtonraphson", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"2", "-", 
       RowBox[{"#", "^", "2"}]}], "&"}], ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "2"}], "}"}]}], "]"}], " ", "-", 
   RowBox[{"Sqrt", "[", "2", "]"}]}], "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"2\"\>",
       2,
       Editable->False], ",", 
      InterpretationBox["\<\"1.5\"\>",
       1.5,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1\"\>",
       1,
       Editable->False]}], "}"}],
    NumberForm[#, 13]& ], ",", "1", ",", 
   RowBox[{"-", "0.25`"}], ",", 
   RowBox[{"-", "3.`"}], ",", "\<\"newton\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"2", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"1.416666666667\"\>",
       1.4166666666666667`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.416666666667\"\>",
       1.4166666666666667`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1\"\>",
       1,
       Editable->False]}], "}"}],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "0.08333333333333333`"}], ",", 
   RowBox[{"-", "0.006944444444444642`"}], ",", 
   RowBox[{"-", "2.8333333333333335`"}], ",", "\<\"newton\"\>"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"3", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"1.414215686275\"\>",
       1.4142156862745099`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.414215686275\"\>",
       1.4142156862745099`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1\"\>",
       1,
       Editable->False]}], "}"}],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "0.002450980392156932`"}], ",", 
   RowBox[{"-", "6.007304882871267`*^-6"}], ",", 
   RowBox[{"-", "2.8284313725490198`"}], ",", "\<\"newton\"\>"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"4", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"1.414213562375\"\>",
       1.4142135623746899`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.414213562375\"\>",
       1.4142135623746899`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1\"\>",
       1,
       Editable->False]}], "}"}],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "2.123899819940621`*^-6"}], ",", 
   RowBox[{"-", "4.510614104447086`*^-12"}], ",", 
   RowBox[{"-", "2.8284271247493797`"}], ",", "\<\"newton\"\>"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"5", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"1.414213562373\"\>",
       1.4142135623730951`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.414213562373\"\>",
       1.4142135623730951`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1\"\>",
       1,
       Editable->False]}], "}"}],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "1.5947429102833119`*^-12"}], ",", 
   RowBox[{"-", "4.440892098500626`*^-16"}], ",", 
   RowBox[{"-", "2.8284271247461903`"}], ",", "\<\"newton\"\>"}], 
  "}"}]], "Print"]
}, Open  ]],

Cell[BoxData["2.220446049250313`*^-16"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Abs", "[", 
  RowBox[{"safenewtonraphson", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Surd", "[", 
      RowBox[{"#", ",", "3"}], "]"}], "&"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"-", "1"}], ",", 
      RowBox[{"N", "[", 
       RowBox[{"Sqrt", "[", "3", "]"}], "]"}]}], "}"}]}], "]"}], 
  "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-1\"\>",
       -1,
       Editable->False], ",", 
      InterpretationBox["\<\"0.3660254037844\"\>",
       0.3660254037844386,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.732050807569\"\>",
       1.7320508075688772`,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "2.732050807568877`", ",", 
   "0.715325558807779`", ",", "0.6514352568718171`", ",", "\<\"newton\"\>"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"2", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.7320508075689\"\>",
       -0.7320508075688772,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"-0.7320508075689\"\>",
       -0.7320508075688772,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.732050807569\"\>",
       1.7320508075688772`,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "1.0980762113533158`"}], ",", 
   RowBox[{"-", "0.9012537290697338`"}], ",", "0.4103784963882381`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"3", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.7320508075689\"\>",
       -0.7320508075688772,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.5\"\>",
       0.5,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.5\"\>",
       0.5,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "1.2320508075688772`", ",", 
   "0.7937005259840998`", ",", "0.5291336839893996`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"4", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.1160254037844\"\>",
       -0.1160254037844386,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"-0.1160254037844\"\>",
       -0.1160254037844386,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.5\"\>",
       0.5,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.6160254037844386`", ",", 
   RowBox[{"-", "0.4877354952990591`"}], ",", "1.4012319124100716`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"5", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.1160254037844\"\>",
       -0.1160254037844386,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.1919872981078\"\>",
       0.1919872981077807,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.1919872981078\"\>",
       0.1919872981077807,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.3080127018922193`", ",", 
   "0.576887106107279`", ",", "1.0016063767291823`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"6", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.1160254037844\"\>",
       -0.1160254037844386,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.03798094716167\"\>",
       0.03798094716167105,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.03798094716167\"\>",
       0.03798094716167105,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.15400635094610965`", ",", 
   "0.33614134253741723`", ",", "2.9500874136233444`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"7", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.03902222831138\"\>",
       -0.03902222831138377,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"-0.03902222831138\"\>",
       -0.03902222831138377,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.03798094716167\"\>",
       0.03798094716167105,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.07700317547305482`", ",", 
   RowBox[{"-", "0.33918556018788915`"}], ",", "2.897370506209149`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"8", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.0005206405748564\"\>",
       -0.0005206405748563597,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"-0.0005206405748564\"\>",
       -0.0005206405748563597,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.03798094716167\"\>",
       0.03798094716167105,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.03850158773652741`", ",", 
   RowBox[{"-", "0.08044752182502325`"}], ",", "51.50547595284775`", 
   ",", "\<\"newton\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"9", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.0005206405748564\"\>",
       -0.0005206405748563597,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.001041281149713\"\>",
       0.0010412811497127203`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.001041281149713\"\>",
       0.0010412811497127203`,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.00156192172456908`", ",", 
   "0.10135752615922404`", ",", "32.446416668923526`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"10", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.0005206405748564\"\>",
       -0.0005206405748563597,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.0002603202874282\"\>",
       0.0002603202874281803,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.0002603202874282\"\>",
       0.0002603202874281803,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.00078096086228454`", ",", 
   "0.06385124038663834`", ",", "81.75984670967323`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"11", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.0001301601437141\"\>",
       -0.00013016014371408972`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"-0.0001301601437141\"\>",
       -0.00013016014371408972`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.0002603202874282\"\>",
       0.0002603202874281803,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.00039048043114227`", ",", 
   RowBox[{"-", "0.05067876307961198`"}], ",", "129.78566667569433`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"12", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.0001301601437141\"\>",
       -0.00013016014371408972`,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.00006508007185705\"\>",
       0.00006508007185704529,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.00006508007185705\"\>",
       0.00006508007185704529,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.000195240215571135`", ",", 
   "0.04022376091251169`", ",", "206.02190381139036`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"13", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.00003254003592852\"\>",
       -0.00003254003592852221,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"-0.00003254003592852\"\>",
       -0.00003254003592852221,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.00006508007185705\"\>",
       0.00006508007185704529,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.0000976201077855675`", ",", 
   RowBox[{"-", "0.03192562019331906`"}], ",", "327.0393868386952`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"14", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"-0.00003254003592852\"\>",
       -0.00003254003592852221,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.00001627001796426\"\>",
       0.00001627001796426154,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.00001627001796426\"\>",
       0.00001627001796426154,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.00004881005389278375`", ",", 
   "0.02533938153980616`", ",", "519.1426667027703`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"15", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-8.13500898213\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       -8.135008982130336*^-6,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-8.13500898213\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       -8.135008982130336*^-6,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"0.00001627001796426\"\>",
       0.00001627001796426154,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.000024405026946391876`", ",", 
   RowBox[{"-", "0.020111880456255577`"}], ",", "824.0876152455835`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"16", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-8.13500898213\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       -8.135008982130336*^-6,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"4.067504491066\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       4.067504491065602*^-6,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"4.067504491066\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       4.067504491065602*^-6,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "0.000012202513473195938`", ",", 
   "0.015962810096659955`", ",", "1308.1575473547107`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"17", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-2.033752245532\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       -2.033752245532367*^-6,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-2.033752245532\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       -2.033752245532367*^-6,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"4.067504491066\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       4.067504491065602*^-6,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "6.101256736597969`*^-6", ",", 
   RowBox[{"-", "0.012669690769902405`"}], ",", "2076.5706668113025`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"18", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-2.033752245532\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       -2.033752245532367*^-6,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"1.016876122767\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       1.0168761227666173`*^-6,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"1.016876122767\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       1.0168761227666173`*^-6,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "3.0506283682989845`*^-6", ",", 
   "0.010055940228128862`", ",", "3296.350460981629`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"19", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-5.084380613829\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-7\"\>"]}],
       -5.08438061382875*^-7,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-5.084380613829\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-7\"\>"]}],
       -5.08438061382875*^-7,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"1.016876122767\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-6\"\>"]}],
       1.0168761227666173`*^-6,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "1.5253141841494922`*^-6", ",", 
   RowBox[{"-", "0.007981405048328276`"}], ",", "5232.630189421075`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"20", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-5.084380613829\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-7\"\>"]}],
       -5.08438061382875*^-7,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"2.542190306919\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-7\"\>"]}],
       2.5421903069187116`*^-7,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"2.542190306919\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-7\"\>"]}],
       2.5421903069187116`*^-7,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "7.626570920747461`*^-7", ",", 
   "0.006334845384953904`", ",", "8306.282667238125`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"21", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-1.271095153455\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-7\"\>"]}],
       -1.271095153455019*^-7,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-1.271095153455\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-7\"\>"]}],
       -1.271095153455019*^-7,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"2.542190306919\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-7\"\>"]}],
       2.5421903069187116`*^-7,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "3.8132854603737306`*^-7", ",", 
   RowBox[{"-", "0.005027970114060142`"}], ",", "13185.401843949014`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"22", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-1.271095153455\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-7\"\>"]}],
       -1.271095153455019*^-7,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"6.355475767318\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-8\"\>"]}],
       6.355475767318463*^-8,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"6.355475767318\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-8\"\>"]}],
       6.355475767318463*^-8,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "1.9066427301868653`*^-7", ",", 
   "0.003990702524170946`", ",", "20930.52075761288`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"23", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-3.177737883616\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-8\"\>"]}],
       -3.1777378836158634`*^-8,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-3.177737883616\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-8\"\>"]}],
       -3.1777378836158634`*^-8,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"6.355475767318\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-8\"\>"]}],
       6.355475767318463*^-8,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "9.533213650934326`*^-8", ",", 
   RowBox[{"-", "0.0031674226924661457`"}], ",", "33225.13066917921`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-3.177737883616\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-8\"\>"]}],
       -3.1777378836158634`*^-8,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"1.588868941851\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-8\"\>"]}],
       1.5888689418512998`*^-8,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"1.588868941851\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-8\"\>"]}],
       1.5888689418512998`*^-8,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "4.766606825467163`*^-8", ",", 
   "0.002513985057047226`", ",", "52741.60737507625`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"25", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-7.944344708823\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-9\"\>"]}],
       -7.944344708822818*^-9,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-7.944344708823\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-9\"\>"]}],
       -7.944344708822818*^-9,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"1.588868941851\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-8\"\>"]}],
       1.5888689418512998`*^-8,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "2.3833034127335816`*^-8", ",", 
   RowBox[{"-", "0.0019953512620582417`"}], ",", "83722.0830327367`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"26", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-7.944344708823\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-9\"\>"]}],
       -7.944344708822818*^-9,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"3.972172354845\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-9\"\>"]}],
       3.97217235484509*^-9,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"3.972172354845\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-9\"\>"]}],
       3.97217235484509*^-9,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "1.1916517063667908`*^-8", ",", 
   "0.0015837113462763002`", ",", "132900.5226694618`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"27", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-1.986086176989\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-9\"\>"]}],
       -1.986086176988864*^-9,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-1.986086176989\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-9\"\>"]}],
       -1.986086176988864*^-9,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"3.972172354845\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-9\"\>"]}],
       3.97217235484509*^-9,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "5.958258531833954`*^-9", ",", 
   RowBox[{"-", "0.001256992528454994`"}], ",", "210966.42952333833`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"28", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-1.986086176989\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-9\"\>"]}],
       -1.986086176988864*^-9,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"9.930430889281\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       9.93043088928113*^-10,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"9.930430889281\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       9.93043088928113*^-10,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "2.979129265916977`*^-9", ",", 
   "0.000997675631138047`", ",", "334888.33205782075`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"29", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-4.965215440304\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       -4.965215440303756*^-10,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-4.965215440304\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       -4.965215440303756*^-10,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"9.930430889281\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       9.93043088928113*^-10,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "1.4895646329584885`*^-9", ",", 
   RowBox[{"-", "0.0007918556729652409`"}], ",", "531602.090910008`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"30", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-4.965215440304\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       -4.965215440303756*^-10,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"2.482607724489\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       2.4826077244886866`*^-10,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"2.482607724489\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       2.4826077244886866`*^-10,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "7.447823164792443`*^-10", ",", 
   "0.0006284962645019734`", ",", "843865.7173562883`", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"31", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-1.241303857908\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       -1.2413038579075346`*^-10,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-1.241303857908\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       -1.2413038579075346`*^-10,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"2.482607724489\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       2.4826077244886866`*^-10,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "3.7239115823962213`*^-10", ",", 
   RowBox[{"-", "0.0004988378151333195`"}], ",", "1.3395533305713166`*^6", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"32", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-1.241303857908\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-10\"\>"]}],
       -1.2413038579075346`*^-10,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"6.206519332906\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-11\"\>"]}],
       6.20651933290576*^-11,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"6.206519332906\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-11\"\>"]}],
       6.20651933290576*^-11,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "1.8619557911981106`*^-10", ",", 
   "0.0003959278371742574`", ",", "2.1264083562108874`*^6", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"33", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-3.103259623085\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-11\"\>"]}],
       -3.103259623084793*^-11,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-3.103259623085\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-11\"\>"]}],
       -3.103259623084793*^-11,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"6.206519332906\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-11\"\>"]}],
       6.20651933290576*^-11,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "9.309778955990553`*^-11", ",", 
   RowBox[{"-", "0.00031424813115308144`"}], ",", "3.3754628930112184`*^6", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"34", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-3.103259623085\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-11\"\>"]}],
       -3.103259623084793*^-11,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"1.55162985491\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-11\"\>"]}],
       1.5516298549104835`*^-11,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"1.55162985491\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-11\"\>"]}],
       1.5516298549104835`*^-11,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "4.6548894779952766`*^-11", ",", 
   "0.0002494189093094757`", ",", "5.358213247404179`*^6", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"35", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-7.758148840872\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-12\"\>"]}],
       -7.758148840871548*^-12,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-7.758148840872\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-12\"\>"]}],
       -7.758148840871548*^-12,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"1.55162985491\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-11\"\>"]}],
       1.5516298549104835`*^-11,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "2.3274447389976383`*^-11", ",", 
   RowBox[{"-", "0.0001979639158205808`"}], ",", "8.505633662576191`*^6", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"36", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-7.758148840872\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-12\"\>"]}],
       -7.758148840871548*^-12,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"3.879074854117\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-12\"\>"]}],
       3.879074854116643*^-12,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"3.879074854117\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-12\"\>"]}],
       3.879074854116643*^-12,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "1.1637223694988192`*^-11", ",", 
   "0.00015712406996816163`", ",", "1.3501850817290839`*^7", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"37", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-1.939536993377\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-12\"\>"]}],
       -1.9395369933774526`*^-12,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-1.939536993377\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-12\"\>"]}],
       -1.9395369933774526`*^-12,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"3.879074854117\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-12\"\>"]}],
       3.879074854116643*^-12,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "5.818611847494096`*^-12", ",", 
   RowBox[{"-", "0.00012470944768347374`"}], ",", "2.1432855385811806`*^7", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"38", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-1.939536993377\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-12\"\>"]}],
       -1.9395369933774526`*^-12,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"9.697689303696\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-13\"\>"]}],
       9.697689303695953*^-13,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"9.697689303696\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-13\"\>"]}],
       9.697689303695953*^-13,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "2.909305923747048`*^-12", ",", 
   "0.00009898196897648096`", ",", "3.402252704286203`*^7", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"39", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox[
       RowBox[{"\<\"-4.848840315039\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-13\"\>"]}],
       -4.848840315039287*^-13,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"-4.848840315039\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-13\"\>"]}],
       -4.848840315039287*^-13,
       AutoDelete->True], ",", 
      InterpretationBox[
       RowBox[{"\<\"9.697689303696\"\>", "\[Times]", 
        SuperscriptBox["10", "\<\"-13\"\>"]}],
       9.697689303695953*^-13,
       AutoDelete->True]}], "}"}],
    NumberForm[#, 13]& ], ",", "1.454652961873524`*^-12", ",", 
   RowBox[{"-", "0.0000785620174175937`"}], ",", "5.4007427421304315`*^7", 
   ",", "\<\"bisection\"\>"}], "}"}]], "Print"]
}, Open  ]],

Cell[BoxData["2.424424494328333`*^-13"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Abs", "[", 
  RowBox[{"safenewtonraphson", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"-", 
      RowBox[{"Surd", "[", 
       RowBox[{"#", ",", "3"}], "]"}]}], "&"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"-", "1"}], ",", "3"}], "}"}]}], "]"}], "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"3\"\>",
       3,
       Editable->False], ",", 
      InterpretationBox["\<\"1.\"\>",
       1.,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"-1\"\>",
       -1,
       Editable->False]}], "}"}],
    NumberForm[#, 13]& ], ",", "4", ",", 
   RowBox[{"-", "1.`"}], ",", 
   RowBox[{"-", "0.3333333333333333`"}], ",", "\<\"bisection\"\>"}], 
  "}"}]], "Print"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"2", ",", 
   TagBox[
    RowBox[{"{", 
     RowBox[{
      InterpretationBox["\<\"1.\"\>",
       1.,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"1.\"\>",
       1.,
       AutoDelete->True], ",", 
      InterpretationBox["\<\"-1\"\>",
       -1,
       Editable->False]}], "}"}],
    NumberForm[#, 13]& ], ",", 
   RowBox[{"-", "2.`"}], ",", 
   RowBox[{"-", "1.`"}], ",", 
   RowBox[{"-", "0.3333333333333333`"}], ",", "\<\"bisection\"\>"}], 
  "}"}]], "Print"]
}, Open  ]],

Cell[BoxData["0.`"], "Output"]
}, Open  ]],

Cell["\<\
Now we move to polynomials. Say we want to find the roots of p(t) within an \
interval [ta, tb]. Assume we know the roots for the derivative p\
\[CloseCurlyQuote](t) and assume they are sorted in non-decreasing order (r1, \
r2, ..., rk) . There can be at most one root in each of the intervals [ta, \
r1], [r1, r2], ..., [rk, tb]. This is because if there were two roots, then \
the derivative would have had to vanish between them and by assumption there \
are no roots of the derivative within any of these intervals. For each \
interval, we can test the sign of p(t) at the endpoints and if the signs are \
different (or if any endpoint gives zero) we can use bisection or safenewton \
to find the root. In that way we compute all roots of the polynomial in the \
interval [ta, tb]. What about the roots of the derivative? Well, it is a \
polynomial too, so we invoke the root finding function recursively. A linear \
polynomial is easy to solve. So by induction we are done.\
\>", "Text"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"polyeval", "[", 
    RowBox[{
     RowBox[{"{", "a_", "}"}], ",", " ", "t_"}], "]"}], " ", ":=", " ", "a"}],
   ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"polyeval", "[", 
   RowBox[{"a_List", ",", " ", "t_"}], "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"First", "[", "a", "]"}], " ", "+", " ", 
   RowBox[{"t", " ", 
    RowBox[{"polyeval", "[", 
     RowBox[{
      RowBox[{"Rest", "[", "a", "]"}], ",", "t"}], "]"}]}]}]}]}], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"polyderivative", "[", "a_List", "]"}], " ", ":=", " ", 
  RowBox[{"Drop", "[", 
   RowBox[{
    RowBox[{"MapIndexed", "[", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"#2", "[", 
           RowBox[{"[", "1", "]"}], "]"}], "-", "1"}], ")"}], " ", "#1"}], 
       " ", "&"}], ",", " ", "a"}], "]"}], ",", "1"}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"polyzeros", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"a_", ",", "b_"}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"t0_", ",", " ", "t1_"}], "}"}]}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"r", " ", "=", " ", 
      RowBox[{
       RowBox[{"-", "a"}], "/", "b"}]}], "}"}], ",", " ", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"r", " ", "\[GreaterEqual]", " ", "t0"}], " ", "&&", " ", 
       RowBox[{"r", " ", "\[LessEqual]", " ", "t1"}]}], ",", 
      RowBox[{"{", "r", "}"}], ",", " ", 
      RowBox[{"{", "}"}]}], "]"}]}], "]"}], " "}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"polyzeros", "[", 
   RowBox[{"a_List", ",", " ", 
    RowBox[{"{", 
     RowBox[{"t0_", ",", " ", "t1_"}], "}"}]}], "]"}], " ", ":=", " ", 
  "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"d", " ", "=", " ", 
      RowBox[{"polyderivative", "[", "a", "]"}]}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"z", " ", "=", " ", 
        RowBox[{"Prepend", "[", 
         RowBox[{
          RowBox[{"Append", "[", 
           RowBox[{
            RowBox[{"polyzeros", "[", 
             RowBox[{"d", ",", " ", 
              RowBox[{"{", 
               RowBox[{"t0", ",", " ", "t1"}], "}"}]}], "]"}], ",", "t1"}], 
           "]"}], ",", " ", "t0"}], "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"r", " ", "=", " ", 
          RowBox[{"Select", "[", 
           RowBox[{
            RowBox[{"Partition", "[", 
             RowBox[{"z", ",", " ", "2", ",", " ", "1"}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"polyeval", "[", 
                RowBox[{"a", ",", 
                 RowBox[{"#", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}], "]"}], " ", 
               RowBox[{"polyeval", "[", 
                RowBox[{"a", ",", 
                 RowBox[{"#", "[", 
                  RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], " ", 
              "\[LessEqual]", " ", "0"}], "&"}]}], "]"}]}], "}"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Map", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"safenewtonraphson", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"polyeval", "[", 
               RowBox[{"a", ",", "#"}], "]"}], "&"}], ",", " ", 
             RowBox[{
              RowBox[{"polyeval", "[", 
               RowBox[{"d", ",", "#"}], "]"}], "&"}], ",", " ", "#"}], "]"}], 
           "&"}], ",", " ", "r"}], "]"}]}], "]"}]}], "]"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{"debugPrint", "=."}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"polyzeros", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"6", ",", " ", 
     RowBox[{"-", "5"}], ",", " ", "1"}], "}"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"0", ",", " ", "10"}], "}"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1.9999999999999993`", ",", "3.`"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"SeedRandom", "[", "123", "]"}], ";", 
  RowBox[{"Timing", "[", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"n", " ", "=", " ", 
         RowBox[{"RandomInteger", "[", 
          RowBox[{"{", 
           RowBox[{"2", ",", "10"}], "}"}], "]"}]}], "}"}], ",", " ", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"zt", " ", "=", " ", 
            RowBox[{"RandomReal", "[", 
             RowBox[{"1", ",", "n"}], "]"}]}], ",", " ", "t"}], "}"}], ",", 
         " ", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"a", " ", "=", " ", 
             RowBox[{"CoefficientList", "[", 
              RowBox[{
               RowBox[{"Product", "[", 
                RowBox[{
                 RowBox[{"t", "-", 
                  RowBox[{"zt", "[", 
                   RowBox[{"[", "i", "]"}], "]"}]}], ",", 
                 RowBox[{"{", 
                  RowBox[{"i", ",", "1", ",", "n"}], "}"}]}], "]"}], ",", 
               "t"}], "]"}]}], "}"}], ",", 
           RowBox[{"Chop", "[", 
            RowBox[{
             RowBox[{"polyzeros", "[", 
              RowBox[{"a", ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "1"}], ",", " ", "2"}], "}"}]}], "]"}], "-", 
             RowBox[{"Sort", "[", 
              RowBox[{"zt", ",", 
               RowBox[{
                RowBox[{"#1", "<", "#2"}], "&"}]}], "]"}]}], "]"}]}], "]"}]}],
         "]"}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", " ", "1", ",", " ", "100"}], "}"}]}], "]"}], 
   "]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1.08`", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       RowBox[{"-", "1.1193290738731321`*^-10"}], ",", 
       "6.146256836814246`*^-10", ",", 
       RowBox[{"-", "5.97915161826279`*^-10"}], ",", 
       "1.7407941754754575`*^-10"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "4.890134963630999`*^-10", ",", 
       "5.44571054916787`*^-10", ",", "4.476149229049042`*^-9", ",", 
       RowBox[{"-", "1.1460451476708045`*^-9"}], ",", "0", ",", "0"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], 
      "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], 
      "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "9.554781410514579`*^-10", ",", 
       RowBox[{"-", "2.123869746739615`*^-9"}], ",", "2.191986925303979`*^-9",
        ",", 
       RowBox[{"-", "3.159263961549641`*^-10"}], ",", 
       "3.229062350840195`*^-9", ",", 
       RowBox[{"-", "5.83033399337296`*^-10"}], ",", 
       "4.754597826561735`*^-10"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", 
       RowBox[{"-", "1.4341461351818907`*^-10"}], ",", 
       "2.5279716209247738`*^-8", ",", 
       RowBox[{"-", "9.950466839381278`*^-8"}], ",", 
       "3.2753359913151314`*^-8", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", 
       RowBox[{"-", "1.1045683812049845`*^-10"}], ",", 
       RowBox[{"-", "3.628851330539362`*^-9"}], ",", "0", ",", "0", ",", 
       "1.9302537346277404`*^-10", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "8.078167024194727`*^-10", ",", 
       RowBox[{"-", "1.6252245549353006`*^-8"}], ",", 
       "2.4827808253746753`*^-8", ",", 
       RowBox[{"-", "3.901908740555626`*^-8"}], ",", 
       "3.0901379455272604`*^-8", ",", 
       RowBox[{"-", "2.622719819100894`*^-10"}], ",", 
       "1.385236370055054`*^-10"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "2.9275470936340753`*^-10", ",", 
       RowBox[{"-", "3.6363978495046467`*^-10"}], ",", 
       "1.1756351447900215`*^-10"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "1.7164414334303046`*^-10", ",", 
       RowBox[{"-", "2.9816804580917733`*^-10"}], ",", 
       "2.905161666788558`*^-10", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "1.590313880583949`*^-9", ",", 
       RowBox[{"-", "1.767492263660131`*^-9"}], ",", "0", ",", "0", ",", 
       "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", 
       RowBox[{"-", "6.736356583658676`*^-9"}], ",", "8.087895742026063`*^-9",
        ",", 
       RowBox[{"-", "6.00096818903495`*^-8"}], ",", "1.4838332695887857`*^-7",
        ",", 
       RowBox[{"-", "4.449219259683446`*^-8"}], ",", "1.074647215659752`*^-8",
        ",", 
       RowBox[{"-", "3.7307208433645656`*^-9"}], ",", "0", ",", 
       RowBox[{"-", "1.2588063924567905`*^-10"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", 
       RowBox[{"-", "4.186274105144605`*^-10"}], ",", 
       "5.946111381049946`*^-10", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "8.218283831240569`*^-10", ",", 
       
       RowBox[{"-", "1.2780659863764754`*^-9"}], ",", 
       "1.9941925888389278`*^-10", ",", 
       RowBox[{"-", "7.0016934472505454`*^-9"}], ",", 
       "1.3958367461874843`*^-8", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "1.6628365351323282`*^-10", ",", 
       RowBox[{"-", "3.0467328659966597`*^-10"}], ",", 
       "4.58586280061013`*^-10", ",", 
       RowBox[{"-", "8.780869364954924`*^-10"}], ",", 
       "8.59825544097248`*^-10", ",", 
       RowBox[{"-", "5.114861867383524`*^-10"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], 
      "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0"}], 
      "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
      "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
       "0"}], "}"}]}], "}"}]}], "}"}]], "Output"]
}, Open  ]]
},
WindowSize->{2109, 1685},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
Magnification:>1.25 Inherited,
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
Cell[1464, 33, 48, 0, 48, "Text"],
Cell[1515, 35, 196, 6, 54, "Input"],
Cell[1714, 43, 727, 10, 144, "Text"],
Cell[2444, 55, 90, 2, 47, "Input"],
Cell[2537, 59, 4027, 106, 663, "Input",
 InitializationCell->True],
Cell[6567, 167, 159, 3, 48, "Text"],
Cell[CellGroupData[{
Cell[6751, 174, 309, 10, 54, "Input"],
Cell[CellGroupData[{
Cell[7085, 188, 329, 13, 37, "Print"],
Cell[7417, 203, 349, 14, 37, "Print"],
Cell[7769, 219, 355, 14, 37, "Print"],
Cell[8127, 235, 342, 13, 37, "Print"],
Cell[8472, 250, 367, 14, 37, "Print"],
Cell[8842, 266, 354, 13, 37, "Print"],
Cell[9199, 281, 444, 16, 49, "Print"],
Cell[9646, 299, 430, 15, 49, "Print"],
Cell[10079, 316, 435, 15, 49, "Print"],
Cell[10517, 333, 440, 15, 49, "Print"],
Cell[10960, 350, 444, 15, 49, "Print"],
Cell[11407, 367, 447, 15, 49, "Print"],
Cell[11857, 384, 469, 16, 49, "Print"],
Cell[12329, 402, 452, 15, 49, "Print"],
Cell[12784, 419, 453, 15, 49, "Print"],
Cell[13240, 436, 477, 16, 49, "Print"],
Cell[13720, 454, 477, 16, 49, "Print"],
Cell[14200, 472, 475, 16, 49, "Print"],
Cell[14678, 490, 477, 16, 49, "Print"],
Cell[15158, 508, 459, 15, 49, "Print"],
Cell[15620, 525, 458, 15, 49, "Print"],
Cell[16081, 542, 478, 16, 49, "Print"],
Cell[16562, 560, 478, 16, 49, "Print"],
Cell[17043, 578, 463, 15, 49, "Print"],
Cell[17509, 595, 460, 15, 49, "Print"],
Cell[17972, 612, 480, 16, 49, "Print"],
Cell[18455, 630, 481, 16, 49, "Print"],
Cell[18939, 648, 457, 15, 49, "Print"],
Cell[19399, 665, 461, 15, 49, "Print"],
Cell[19863, 682, 480, 16, 49, "Print"],
Cell[20346, 700, 480, 16, 49, "Print"],
Cell[20829, 718, 481, 16, 49, "Print"],
Cell[21313, 736, 484, 16, 49, "Print"],
Cell[21800, 754, 484, 16, 49, "Print"],
Cell[22287, 772, 480, 16, 49, "Print"],
Cell[22770, 790, 481, 16, 49, "Print"],
Cell[23254, 808, 465, 15, 49, "Print"],
Cell[23722, 825, 462, 15, 49, "Print"],
Cell[24187, 842, 481, 16, 49, "Print"]
}, Open  ]],
Cell[24683, 861, 50, 0, 51, "Output"]
}, Open  ]],
Cell[24748, 864, 1593, 55, 114, "Text"],
Cell[26344, 921, 3161, 82, 580, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[29530, 1007, 262, 9, 47, "Input"],
Cell[CellGroupData[{
Cell[29817, 1020, 230, 8, 35, "Print"],
Cell[30050, 1030, 253, 9, 35, "Print"],
Cell[30306, 1041, 314, 9, 35, "Print"],
Cell[30623, 1052, 316, 9, 49, "Print"],
Cell[30942, 1063, 319, 9, 49, "Print"]
}, Open  ]],
Cell[31276, 1075, 30, 0, 47, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[31343, 1080, 258, 8, 47, "Input"],
Cell[CellGroupData[{
Cell[31626, 1092, 230, 8, 35, "Print"],
Cell[31859, 1102, 288, 10, 35, "Print"],
Cell[32150, 1114, 348, 10, 35, "Print"],
Cell[32501, 1126, 350, 10, 49, "Print"],
Cell[32854, 1138, 353, 10, 49, "Print"]
}, Open  ]],
Cell[33222, 1151, 30, 0, 47, "Output"]
}, Open  ]],
Cell[33267, 1154, 230, 4, 48, "Text"],
Cell[CellGroupData[{
Cell[33522, 1162, 494, 16, 47, "Input"],
Cell[34019, 1180, 3952, 73, 370, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[38008, 1258, 204, 7, 47, "Input"],
Cell[CellGroupData[{
Cell[38237, 1269, 248, 9, 35, "Print"],
Cell[38488, 1280, 281, 9, 35, "Print"],
Cell[38772, 1291, 296, 9, 35, "Print"],
Cell[39071, 1302, 264, 8, 35, "Print"],
Cell[39338, 1312, 297, 9, 35, "Print"],
Cell[39638, 1323, 300, 9, 35, "Print"],
Cell[39941, 1334, 299, 9, 35, "Print"],
Cell[40243, 1345, 301, 9, 35, "Print"],
Cell[40547, 1356, 300, 9, 35, "Print"],
Cell[40850, 1367, 302, 9, 35, "Print"],
Cell[41155, 1378, 304, 9, 35, "Print"],
Cell[41462, 1389, 305, 9, 35, "Print"],
Cell[41770, 1400, 305, 9, 35, "Print"],
Cell[42078, 1411, 302, 9, 35, "Print"],
Cell[42383, 1422, 305, 9, 35, "Print"],
Cell[42691, 1433, 307, 9, 35, "Print"],
Cell[43001, 1444, 301, 9, 35, "Print"],
Cell[43305, 1455, 306, 9, 35, "Print"],
Cell[43614, 1466, 305, 9, 35, "Print"],
Cell[43922, 1477, 311, 9, 49, "Print"],
Cell[44236, 1488, 385, 11, 49, "Print"],
Cell[44624, 1501, 386, 11, 49, "Print"],
Cell[45013, 1514, 382, 11, 49, "Print"],
Cell[45398, 1527, 382, 11, 49, "Print"],
Cell[45783, 1540, 383, 11, 49, "Print"],
Cell[46169, 1553, 386, 11, 49, "Print"],
Cell[46558, 1566, 384, 11, 49, "Print"],
Cell[46945, 1579, 387, 11, 49, "Print"],
Cell[47335, 1592, 384, 11, 49, "Print"],
Cell[47722, 1605, 386, 11, 49, "Print"],
Cell[48111, 1618, 387, 11, 49, "Print"],
Cell[48501, 1631, 388, 11, 49, "Print"],
Cell[48892, 1644, 386, 11, 49, "Print"],
Cell[49281, 1657, 385, 11, 49, "Print"],
Cell[49669, 1670, 387, 11, 49, "Print"],
Cell[50059, 1683, 390, 11, 49, "Print"],
Cell[50452, 1696, 391, 11, 49, "Print"],
Cell[50846, 1709, 393, 11, 49, "Print"],
Cell[51242, 1722, 391, 11, 49, "Print"],
Cell[51636, 1735, 390, 11, 49, "Print"],
Cell[52029, 1748, 392, 11, 49, "Print"],
Cell[52424, 1761, 392, 11, 49, "Print"],
Cell[52819, 1774, 391, 11, 49, "Print"],
Cell[53213, 1787, 391, 11, 49, "Print"],
Cell[53607, 1800, 393, 11, 49, "Print"],
Cell[54003, 1813, 395, 11, 49, "Print"],
Cell[54401, 1826, 392, 11, 49, "Print"],
Cell[54796, 1839, 394, 11, 49, "Print"],
Cell[55193, 1852, 393, 11, 49, "Print"],
Cell[55589, 1865, 393, 11, 49, "Print"],
Cell[55985, 1878, 394, 11, 49, "Print"],
Cell[56382, 1891, 392, 11, 49, "Print"],
Cell[56777, 1904, 392, 11, 49, "Print"]
}, Open  ]],
Cell[57184, 1918, 49, 0, 51, "Output"]
}, Open  ]],
Cell[57248, 1921, 381, 6, 80, "Text"],
Cell[57632, 1929, 10585, 262, 1217, "Input",
 InitializationCell->True],
Cell[68220, 2193, 56, 0, 48, "Text"],
Cell[CellGroupData[{
Cell[68301, 2197, 373, 12, 47, "Input"],
Cell[CellGroupData[{
Cell[68699, 2213, 442, 16, 35, "Print"],
Cell[69144, 2231, 571, 17, 35, "Print"],
Cell[69718, 2250, 573, 17, 49, "Print"],
Cell[70294, 2269, 575, 17, 49, "Print"],
Cell[70872, 2288, 577, 17, 49, "Print"]
}, Open  ]],
Cell[71464, 2308, 50, 0, 51, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[71551, 2313, 315, 10, 47, "Input"],
Cell[CellGroupData[{
Cell[71891, 2327, 476, 17, 35, "Print"],
Cell[72370, 2346, 608, 19, 35, "Print"],
Cell[72981, 2367, 610, 19, 49, "Print"],
Cell[73594, 2388, 612, 19, 49, "Print"],
Cell[74209, 2409, 614, 19, 49, "Print"]
}, Open  ]],
Cell[74838, 2431, 50, 0, 51, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[74925, 2436, 349, 12, 47, "Input"],
Cell[CellGroupData[{
Cell[75299, 2452, 552, 17, 35, "Print"],
Cell[75854, 2471, 626, 18, 35, "Print"],
Cell[76483, 2491, 536, 17, 35, "Print"],
Cell[77022, 2510, 580, 17, 35, "Print"],
Cell[77605, 2529, 589, 17, 35, "Print"],
Cell[78197, 2548, 596, 17, 35, "Print"],
Cell[78796, 2567, 614, 17, 35, "Print"],
Cell[79413, 2586, 619, 17, 35, "Print"],
Cell[80035, 2605, 610, 17, 35, "Print"],
Cell[80648, 2624, 610, 17, 35, "Print"],
Cell[81261, 2643, 632, 17, 35, "Print"],
Cell[81896, 2662, 618, 17, 35, "Print"],
Cell[82517, 2681, 635, 17, 35, "Print"],
Cell[83155, 2700, 619, 17, 35, "Print"],
Cell[83777, 2719, 774, 21, 49, "Print"],
Cell[84554, 2742, 828, 23, 49, "Print"],
Cell[85385, 2767, 844, 23, 49, "Print"],
Cell[86232, 2792, 831, 23, 49, "Print"],
Cell[87066, 2817, 844, 23, 49, "Print"],
Cell[87913, 2842, 829, 23, 49, "Print"],
Cell[88745, 2867, 847, 23, 49, "Print"],
Cell[89595, 2892, 827, 23, 49, "Print"],
Cell[90425, 2917, 848, 23, 49, "Print"],
Cell[91276, 2942, 832, 23, 49, "Print"],
Cell[92111, 2967, 846, 23, 49, "Print"],
Cell[92960, 2992, 826, 23, 49, "Print"],
Cell[93789, 3017, 843, 23, 49, "Print"],
Cell[94635, 3042, 829, 23, 49, "Print"],
Cell[95467, 3067, 849, 23, 49, "Print"],
Cell[96319, 3092, 838, 23, 49, "Print"],
Cell[97160, 3117, 862, 23, 49, "Print"],
Cell[98025, 3142, 839, 23, 49, "Print"],
Cell[98867, 3167, 855, 23, 49, "Print"],
Cell[99725, 3192, 840, 23, 49, "Print"],
Cell[100568, 3217, 856, 23, 49, "Print"],
Cell[101427, 3242, 840, 23, 49, "Print"],
Cell[102270, 3267, 860, 23, 49, "Print"],
Cell[103133, 3292, 840, 23, 49, "Print"],
Cell[103976, 3317, 855, 23, 49, "Print"]
}, Open  ]],
Cell[104846, 3343, 50, 0, 51, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[104933, 3348, 301, 10, 47, "Input"],
Cell[CellGroupData[{
Cell[105259, 3362, 496, 18, 35, "Print"],
Cell[105758, 3382, 520, 19, 35, "Print"]
}, Open  ]],
Cell[106293, 3404, 30, 0, 47, "Output"]
}, Open  ]],
Cell[106338, 3407, 1002, 14, 175, "Text"],
Cell[107343, 3423, 523, 16, 111, "Input",
 InitializationCell->True],
Cell[107869, 3441, 450, 14, 79, "Input",
 InitializationCell->True],
Cell[108322, 3457, 705, 21, 74, "Input",
 InitializationCell->True],
Cell[109030, 3480, 2169, 61, 231, "Input",
 InitializationCell->True],
Cell[111202, 3543, 54, 1, 47, "Input"],
Cell[CellGroupData[{
Cell[111281, 3548, 235, 7, 47, "Input"],
Cell[111519, 3557, 93, 2, 47, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[111649, 3564, 1743, 49, 199, "Input"],
Cell[113395, 3615, 12552, 321, 772, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature RxDSwy5KxYUuWAwuvPOspqhN *)
