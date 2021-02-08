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
NotebookDataLength[     65167,       1904]
NotebookOptionsPosition[     62389,       1792]
NotebookOutlinePosition[     62857,       1813]
CellTagsIndexPosition[     62814,       1810]
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
The equation is Dot[p-c,p-c] == r^2, where c and r are the circle center and \
radius, respectively. The points inside the circle are exactly those for \
which the Dot[p-c,p-c] < r^2.

This is just a special case for a quadratic equation. All quadratic equations \
in x,y represent conic sections. We won\[CloseCurlyQuote]t study conic \
sections here (Read a geometry book.)

We can write the conic equation in matrix form as\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"m", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"a", ",", "b", ",", "d"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"b", ",", "c", ",", "e"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"d", ",", "e", ",", "f"}], "}"}]}], "}"}]}], "}"}], ",", " ",
     "m"}], "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"a", "b", "d"},
     {"b", "c", "e"},
     {"d", "e", "f"}
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
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"m", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"a", ",", "b", ",", "d"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"b", ",", "c", ",", "e"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"d", ",", "e", ",", "f"}], "}"}]}], "}"}]}], "}"}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x", ",", "y", ",", "1"}], "}"}], ".", "m", ".", 
      RowBox[{"{", 
       RowBox[{"x", ",", "y", ",", "1"}], "}"}]}], " ", "\[Equal]", " ", 
     "0"}]}], "]"}], "//", " ", "Expand"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"f", "+", 
   RowBox[{"2", " ", "d", " ", "x"}], "+", 
   RowBox[{"a", " ", 
    SuperscriptBox["x", "2"]}], "+", 
   RowBox[{"2", " ", "e", " ", "y"}], "+", 
   RowBox[{"2", " ", "b", " ", "x", " ", "y"}], "+", 
   RowBox[{"c", " ", 
    SuperscriptBox["y", "2"]}]}], "\[Equal]", "0"}]], "Output"]
}, Open  ]],

Cell["\<\
In the case of the unit circle centered at the origin, the matrix is \
\>", "Text"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", "0"},
     {"0", "1", "0"},
     {"0", "0", 
      RowBox[{"-", "1"}]}
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
   MatrixForm[BoxForm`e$]]]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Module", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"m", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1", ",", "0", ",", "0"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "1", ",", "0"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0", ",", 
         RowBox[{"-", "1"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x", ",", "y", ",", "1"}], "}"}], ".", "m", ".", 
     RowBox[{"{", 
      RowBox[{"x", ",", "y", ",", "1"}], "}"}]}], " ", "\[Equal]", " ", 
    "0"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", "1"}], "+", 
   SuperscriptBox["x", "2"], "+", 
   SuperscriptBox["y", "2"]}], "\[Equal]", "0"}]], "Output"]
}, Open  ]],

Cell["We can plot the points that satisfy the equation.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Module", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"m", "=", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", " ", "0", ",", " ", 
         RowBox[{"-", "1"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   RowBox[{"ContourPlot", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x", ",", "y", ",", "1"}], "}"}], ".", "m", ".", 
       RowBox[{"{", 
        RowBox[{"x", ",", "y", ",", "1"}], "}"}]}], "\[Equal]", "0"}], ",", 
     " ", 
     RowBox[{"{", 
      RowBox[{"x", ",", " ", 
       RowBox[{"-", "4"}], ",", " ", "4"}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", 
       RowBox[{"-", "4"}], ",", " ", "4"}], "}"}], ",", " ", 
     RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", " ", 
     RowBox[{"ContourStyle", "\[Rule]", "Thick"}]}], "]"}]}], "]"}]], "Input"],

Cell[BoxData[
 GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJx1lltIVFEUhq0owTC1l1JE0yTqRSgSApWVCpUhWVYDmjhaaRe7ShpRKlpE
mNhkXsKUUvGGFV5CKMa2JZhoklmjD+GoeUFnxlGCUDSsmbPXP4MDHY5sPGdf
1vr/b60zfqevxiSvdXJyyrP8WceDXes9t5w1iSe6CtXNuGFK6tPF9+lMorft
8g/LTerhC+l1ullx63qYZeYQZY8sZI4szIqi5NiS5NhBUhmiG6jGLHIDIgsD
Igcot9qUVW0yi4xUf02qfz9dU2WFlxfPia890Q9af3VSydJxy4o5kabM/0h+
y82+y81zYtDdw3J9oL/KNSeclKsoRI7z/H+/dtX7F6NaX17v5qGsF0W8f4vc
X1zh8717lfNFNsenkfGJGI6/SsYvMji/LpmfOMX5a2T+Ipb1MUp9RDjrVy/1
E+PKc6Nw1pbnlh4fFUcag1+Z3xjEBsuseM2Y2PluuuphoEGUKef9FLn5G/cE
dk+LhIhbrpNBE+K9su2UKFDOnxLK8RX2Ec8xD+uwD/bFOTgXcSAuxIm4kQfy
Qp7IGzpAF+gE3e7MlGbNlNp1hc7QHT7Al4SlGvVSjd03+AhfV3PQr13NQVEI
3oMbcASuEnl/cAcOwSU4Bbc5HD+4BufgHnWAukCdoG5QR6wvQd8/WxX96STr
nyf9ob3sj0r6R3ns3yPpL8FfnfSdJtn/1/I5PWcO7sh1dJ452CX3JXBwSJ5L
7szBNxkXbWcOQmTcpGUO2HcCByqZN9UyB5lSF3rKHLDvZONA6koNzEGa1J0+
Sx+EWvpC4MBH+kaHmYNF6StVKqNrO/tMs2brpQcX5NAPqF/h4LEW66OU9y6h
23j/zXJ/SuLzwckNji+HOWFuSQNOOD9wcp/zT2FO4lifAuaEuSBwEsb61jEn
DvpTNPvDdUpB7B84ucv+qpkT+F/JnOiZD4ybUtyehiZO2eZ5W7cpnKAdXsaI
M5nTdC9in+WeoPr8Hss9TV86rdc47bdOC5ixnRvs0+d7KcRAMZ7FxzyLx+hZ
49uyxrcGSnBOP+qcPmrLY17Re4SGT3ilmVuN5LLu9qfvHXo6ENR0M8rVRFmD
rrXd54bpZVd7h7ho1+X2muaGvRMmWuzQ7w5qGqIU69M2u47QFTpDd9t3hn2B
T/ANPsJX+AzfwQG4ACeL/+HKkbvfK9bRux3zB5T9W0TNivXLY+cYXINzcI86
QF2gTlA3Dv3UVmeoO9Qh6tKhX9vqGHWNOodf6APoC+gT6BvoI+gr6DPgCX0I
fQl9Cn0LfQx9DX0OXKEPoi86fC/J8ffIPxzXxCk=
   "], {{}, {}, 
    TagBox[
     TooltipBox[
      {RGBColor[0.368417, 0.506779, 0.709798], Thickness[Large], 
       LineBox[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
         19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 
        36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 
        53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 
        70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
        87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
        103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 
        117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 
        131, 132, 133, 134, 135, 136, 137, 138}]},
      RowBox[{
        RowBox[{
          RowBox[{"-", "1"}], "+", 
          SuperscriptBox["x", "2"], "+", 
          SuperscriptBox["y", "2"]}], "\[Equal]", "0"}]],
     Annotation[#, -1 + $CellContext`x^2 + $CellContext`y^2 == 0, 
      "Tooltip"]& ]}],
  AspectRatio->1,
  DisplayFunction->Identity,
  Frame->True,
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImageSize->Large,
  Method->{"DefaultBoundaryStyle" -> Automatic},
  PlotRange->{{-4, 4}, {-4, 4}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output"]
}, Open  ]],

Cell["\<\
Any ellipse can be produced from the unit circle by means of affine \
transformations. In fact, all we need is a scale, a rotation, and a \
translation. The question is how the matrix associated to the conic changes \
when we apply such transformations.\
\>", "Text"],

Cell["\<\
We are transforming the points that satisfy the equation {u, v, 1} = t . {x, \
y, 1}, and you want to find the new matrix n so that \
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{"u", ",", "v", ",", "1"}], "}"}], ".", "n", ".", 
   RowBox[{"{", 
    RowBox[{"u", ",", "v", ",", "1"}], "}"}]}], " ", "\[Equal]", " ", 
  "0"}]], "Input"],

Cell["\<\
describes the same set of points. Simply write {x,y,1} = Inverse[t] . {u, v, \
1} and substitute in the original equation.\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{"u", ",", "v", ",", "1"}], "}"}], ".", 
  RowBox[{"Transpose", "[", 
   RowBox[{"Inverse", "[", "t", "]"}], "]"}], ".", "m", ".", 
  RowBox[{"Inverse", "[", "t", "]"}], " ", ".", " ", 
  RowBox[{"{", 
   RowBox[{"u", ",", " ", "v", ",", " ", "1"}], "}"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"n", "==", 
  RowBox[{
   RowBox[{"Transpose", "[", 
    RowBox[{"Inverse", "[", "t", "]"}], "]"}], ".", "m", ".", 
   RowBox[{"Inverse", "[", "t", "]"}]}]}]], "Input"],

Cell["\<\
So, to transform a conic, you take its matrix and multiply on the left by the \
inverse transpose of the transformation, and on the right by the inverse of \
the transformation\
\>", "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"rotateconic", "[", 
   RowBox[{"m_", ",", " ", "\[Alpha]_"}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"c", " ", "=", " ", 
       RowBox[{"Cos", "[", 
        RowBox[{"-", "\[Alpha]"}], " ", "]"}]}], ",", " ", 
      RowBox[{"s", " ", "=", " ", 
       RowBox[{"Sin", "[", 
        RowBox[{"-", "\[Alpha]"}], "]"}]}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"ir", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"c", ",", " ", 
            RowBox[{"-", "s"}], ",", " ", "0"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"s", ",", " ", "c", ",", " ", "0"}], "}"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "}"}]}], 
       "}"}], ",", " ", 
      RowBox[{
       RowBox[{"Transpose", "[", "ir", "]"}], ".", " ", "m", ".", "ir"}]}], 
     "]"}]}], "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"translateconic", "[", 
   RowBox[{"m_", ",", " ", 
    RowBox[{"{", 
     RowBox[{"tx_", ",", " ", "ty_"}], "}"}]}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"it", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"1", ",", " ", "0", ",", " ", 
          RowBox[{"-", "tx"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", 
          RowBox[{"-", "ty"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "}"}]}], "}"}],
     ",", " ", 
    RowBox[{
     RowBox[{"Transpose", "[", "it", "]"}], ".", " ", "m", ".", "it"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 RowBox[{
  RowBox[{"scaleconic", "[", 
   RowBox[{"m_", ",", " ", 
    RowBox[{"{", 
     RowBox[{"sx_", ",", " ", "sy_"}], "}"}]}], "]"}], " ", ":=", " ", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"is", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"1", "/", "sx"}], ",", " ", "0", ",", " ", "0"}], "}"}], 
        ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", 
          RowBox[{"1", "/", "sy"}], ",", " ", "0"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "}"}]}], "}"}],
     ",", " ", 
    RowBox[{
     RowBox[{"Transpose", "[", "is", "]"}], ".", "m", ".", "is"}]}], "]"}], 
  " "}]], "Input",
 InitializationCell->True],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"ContourPlot", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x", ",", "y", ",", "1"}], "}"}], ".", 
       RowBox[{"translateconic", "[", 
        RowBox[{
         RowBox[{"rotateconic", "[", 
          RowBox[{
           RowBox[{"scaleconic", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], ",", " ", 
               
               RowBox[{"{", 
                RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], ",", " ", 
               
               RowBox[{"{", 
                RowBox[{"0", ",", " ", "0", ",", " ", 
                 RowBox[{"-", "1"}]}], "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"sx", ",", " ", "sy"}], "}"}]}], "]"}], ",", 
           "\[Alpha]"}], "]"}], ",", "z"}], "]"}], ".", 
       RowBox[{"{", 
        RowBox[{"x", ",", "y", ",", "1"}], "}"}]}], "\[Equal]", "0"}], ",", 
     " ", 
     RowBox[{"{", 
      RowBox[{"x", ",", " ", 
       RowBox[{"-", "4"}], ",", " ", "4"}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"y", ",", " ", 
       RowBox[{"-", "4"}], ",", " ", "4"}], "}"}], ",", " ", 
     RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", " ", 
     RowBox[{"ContourStyle", "\[Rule]", "Thick"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"sx", ",", "1"}], "}"}], ",", 
     RowBox[{"1", "/", "10"}], ",", "4"}], "}"}], ",", "\[IndentingNewLine]", 
   
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"sy", ",", "1"}], "}"}], ",", 
     RowBox[{"1", "/", "10"}], ",", "4"}], "}"}], ",", "\[IndentingNewLine]", 
   
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Alpha]", ",", "0"}], "}"}], ",", 
     RowBox[{
      RowBox[{"-", "Pi"}], "/", "2"}], ",", 
     RowBox[{"Pi", "/", "2"}]}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"z", ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0"}], "}"}]}], "}"}], ",", " ", "Locator"}], 
    "}"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`sx$$ = 1, $CellContext`sy$$ = 
    1, $CellContext`z$$ = {0, 0}, $CellContext`\[Alpha]$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`sx$$], 1}, 
      Rational[1, 10], 4}, {{
       Hold[$CellContext`sy$$], 1}, 
      Rational[1, 10], 4}, {{
       Hold[$CellContext`\[Alpha]$$], 0}, Rational[-1, 2] Pi, Rational[1, 2] 
      Pi}, {{
       Hold[$CellContext`z$$], {0, 0}}, Automatic}}, Typeset`size$$ = {
    576., {285., 289.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`sx$333$$ = 
    0, $CellContext`sy$338$$ = 0, $CellContext`\[Alpha]$339$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`sx$$ = 1, $CellContext`sy$$ = 
        1, $CellContext`z$$ = {0, 0}, $CellContext`\[Alpha]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`sx$$, $CellContext`sx$333$$, 0], 
        Hold[$CellContext`sy$$, $CellContext`sy$338$$, 0], 
        Hold[$CellContext`\[Alpha]$$, $CellContext`\[Alpha]$339$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      ContourPlot[Dot[{$CellContext`x, $CellContext`y, 1}, 
          $CellContext`translateconic[
           $CellContext`rotateconic[
            $CellContext`scaleconic[{{1, 0, 0}, {0, 1, 0}, {0, 
             0, -1}}, {$CellContext`sx$$, $CellContext`sy$$}], $CellContext`\
\[Alpha]$$], $CellContext`z$$], {$CellContext`x, $CellContext`y, 1}] == 
        0, {$CellContext`x, -4, 4}, {$CellContext`y, -4, 4}, ImageSize -> 
        Large, ContourStyle -> Thick], 
      "Specifications" :> {{{$CellContext`sx$$, 1}, 
         Rational[1, 10], 4}, {{$CellContext`sy$$, 1}, 
         Rational[1, 10], 4}, {{$CellContext`\[Alpha]$$, 0}, Rational[-1, 2] 
         Pi, Rational[1, 2] Pi}, {{$CellContext`z$$, {0, 0}}, Automatic, 
         ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {361., 367.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`translateconic[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`tx, 
           Blank[]], 
          Pattern[$CellContext`ty, 
           Blank[]]}] := 
       Module[{$CellContext`it = {{1, 0, -$CellContext`tx}, {
            0, 1, -$CellContext`ty}, {0, 0, 1}}}, 
         Dot[
          
          Transpose[$CellContext`it], $CellContext`m, $CellContext`it]], \
$CellContext`rotateconic[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`\[Alpha], 
          Blank[]]] := 
       Module[{$CellContext`c = Cos[-$CellContext`\[Alpha]], $CellContext`s = 
          Sin[-$CellContext`\[Alpha]]}, 
         Module[{$CellContext`ir = {{$CellContext`c, -$CellContext`s, 
              0}, {$CellContext`s, $CellContext`c, 0}, {0, 0, 1}}}, 
          Dot[
           
           Transpose[$CellContext`ir], $CellContext`m, $CellContext`ir]]], \
$CellContext`scaleconic[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`sx, 
           Blank[]], 
          Pattern[$CellContext`sy, 
           Blank[]]}] := 
       Module[{$CellContext`is = {{1/$CellContext`sx, 0, 0}, {
            0, 1/$CellContext`sy, 0}, {0, 0, 1}}}, 
         Dot[
          Transpose[$CellContext`is], $CellContext`m, $CellContext`is]]}; 
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
How do we find the center of a transformed conic? 

If we take a conic and translate it, the only coefficients that change are \
d,e, and f. \
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"m", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"a", ",", "b", ",", "d"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"b", ",", "c", ",", "e"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"d", ",", "e", ",", "f"}], "}"}]}], "}"}]}], "}"}], ",", " ",
     "m"}], "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"a", "b", "d"},
     {"b", "c", "e"},
     {"d", "e", "f"}
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
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"m", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"a", ",", "b", ",", "d"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"b", ",", "c", ",", "e"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"d", ",", "e", ",", "f"}], "}"}]}], "}"}]}], "}"}], ",", " ", 
    RowBox[{"translateconic", "[", 
     RowBox[{"m", ",", " ", 
      RowBox[{"{", 
       RowBox[{"p", ",", " ", "q"}], "}"}]}], "]"}]}], "]"}], "//", " ", 
  "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"a", "b", 
      RowBox[{"d", "-", 
       RowBox[{"a", " ", "p"}], "-", 
       RowBox[{"b", " ", "q"}]}]},
     {"b", "c", 
      RowBox[{"e", "-", 
       RowBox[{"b", " ", "p"}], "-", 
       RowBox[{"c", " ", "q"}]}]},
     {
      RowBox[{"d", "-", 
       RowBox[{"a", " ", "p"}], "-", 
       RowBox[{"b", " ", "q"}]}], 
      RowBox[{"e", "-", 
       RowBox[{"b", " ", "p"}], "-", 
       RowBox[{"c", " ", "q"}]}], 
      RowBox[{"f", "-", 
       RowBox[{"d", " ", "p"}], "-", 
       RowBox[{"e", " ", "q"}], "-", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"d", "-", 
          RowBox[{"a", " ", "p"}], "-", 
          RowBox[{"b", " ", "q"}]}], ")"}]}], "-", 
       RowBox[{"q", " ", 
        RowBox[{"(", 
         RowBox[{"e", "-", 
          RowBox[{"b", " ", "p"}], "-", 
          RowBox[{"c", " ", "q"}]}], ")"}]}]}]}
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
We want to find a translation that will kill the d,e so that the matrix looks \
like\
\>", "Text"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"at", "ht", "0"},
     {"ht", "bt", "0"},
     {"0", "0", "ct"}
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
   MatrixForm[BoxForm`e$]]]], "Input"],

Cell["Setting the new values of f and g to zero, we have", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"d", "-", 
       RowBox[{"a", " ", "p"}], "-", 
       RowBox[{"b", " ", "q"}]}], " ", "\[Equal]", " ", "0"}], ",", " ", 
     RowBox[{
      RowBox[{"e", "-", 
       RowBox[{"b", " ", "p"}], "-", 
       RowBox[{"c", " ", "q"}]}], " ", "\[Equal]", " ", "0"}]}], "}"}], ",", 
   " ", 
   RowBox[{"{", 
    RowBox[{"p", ",", " ", "q"}], "}"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"p", "\[Rule]", 
     RowBox[{"-", 
      FractionBox[
       RowBox[{
        RowBox[{"c", " ", "d"}], "-", 
        RowBox[{"b", " ", "e"}]}], 
       RowBox[{
        SuperscriptBox["b", "2"], "-", 
        RowBox[{"a", " ", "c"}]}]]}]}], ",", 
    RowBox[{"q", "\[Rule]", 
     RowBox[{"-", 
      FractionBox[
       RowBox[{
        RowBox[{
         RowBox[{"-", "b"}], " ", "d"}], "+", 
        RowBox[{"a", " ", "e"}]}], 
       RowBox[{
        SuperscriptBox["b", "2"], "-", 
        RowBox[{"a", " ", "c"}]}]]}]}]}], "}"}], "}"}]], "Output"]
}, Open  ]],

Cell[TextData[{
 "So we can find such a translation unless ",
 Cell[BoxData[
  RowBox[{
   RowBox[{
    SuperscriptBox["b", "2"], "-", 
    RowBox[{"a", " ", "c"}]}], "\[Equal]", " ", "0"}]],
  CellChangeTimes->{3.624196320229245*^9, 3.624197080721056*^9, 
   3.624197111192916*^9, 3.625326739787549*^9}],
 ". I.e., unless the conic was a parabola! This makes sense."
}], "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"coniccenter", "[", "m_", "]"}], " ", ":=", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"Assert", "[", 
     RowBox[{"SymmetricMatrixQ", "[", "m", "]"}], "]"}], ";", "  ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"det", " ", "=", " ", 
        RowBox[{"Det", "[", 
         RowBox[{"m", "[", 
          RowBox[{"[", 
           RowBox[{
            RowBox[{"1", ";;", "2"}], ",", 
            RowBox[{"1", ";;", "2"}]}], "]"}], "]"}], "]"}]}], "}"}], ",", 
      RowBox[{
       RowBox[{"Assert", "[", 
        RowBox[{"det", " ", "\[NotEqual]", " ", "0"}], "]"}], ";", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"1", ",", "2"}], "]"}], "]"}], " ", 
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"2", ",", "3"}], "]"}], "]"}]}], " ", "-", " ", 
            RowBox[{
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"2", ",", "2"}], "]"}], "]"}], " ", 
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"1", ",", "3"}], "]"}], "]"}]}]}], " ", ")"}], "/", 
          "det"}], ",", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"1", ",", "2"}], "]"}], "]"}], 
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"1", ",", "3"}], "]"}], "]"}]}], " ", "-", " ", 
            RowBox[{
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"1", ",", "1"}], "]"}], "]"}], 
             RowBox[{"m", "[", 
              RowBox[{"[", 
               RowBox[{"2", ",", "3"}], "]"}], "]"}]}]}], ")"}], "/", 
          "det"}]}], "}"}]}]}], "]"}]}], ")"}]}]], "Input",
 InitializationCell->True],

Cell["Here is a simple test to see if this works", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"coniccenter", "[", 
   RowBox[{"translateconic", "[", 
    RowBox[{
     RowBox[{"rotateconic", "[", 
      RowBox[{
       RowBox[{"scaleconic", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"0", ",", " ", "0", ",", " ", 
             RowBox[{"-", "1"}]}], "}"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"2", ",", " ", "3"}], "}"}]}], "]"}], ",", 
       RowBox[{"Pi", "/", "3"}]}], "]"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"15", ",", " ", "20"}], "}"}]}], "]"}], "]"}], " ", "//", " ", 
  "N"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"15.000000000000004`", ",", "20.`"}], "}"}]], "Output"]
}, Open  ]],

Cell["\<\
How can we find the bounding box of a transformed conic? We will first \
translate the conic so that its center is zero. This will simplify things \
because we can assume the conic has the form\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"n", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"a", ",", "b", ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"b", ",", "c", ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "f"}], "}"}]}], "}"}]}], "}"}], ",", " ",
     "n"}], "]"}], " ", "//", " ", "MatrixForm"}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"a", "b", "0"},
     {"b", "c", "0"},
     {"0", "0", "f"}
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
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"n", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"a", ",", "b", ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"b", ",", "c", ",", "0"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"0", ",", "0", ",", "f"}], "}"}]}], "}"}]}], "}"}], ",", " ", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x", ",", "y", ",", "1"}], "}"}], " ", ".", " ", "n", " ", ".", 
     " ", 
     RowBox[{"{", 
      RowBox[{"x", ",", " ", "y", ",", " ", "1"}], "}"}]}]}], "]"}], " ", "//",
   " ", "Expand"}]], "Input"],

Cell[BoxData[
 RowBox[{"f", "+", 
  RowBox[{"a", " ", 
   SuperscriptBox["x", "2"]}], "+", 
  RowBox[{"2", " ", "b", " ", "x", " ", "y"}], "+", 
  RowBox[{"c", " ", 
   SuperscriptBox["y", "2"]}]}]], "Output"]
}, Open  ]],

Cell["\<\
Solving this equation for x will give the two curve values for a given y. \
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"f", "+", 
      RowBox[{"a", " ", 
       SuperscriptBox["x", "2"]}], "+", 
      RowBox[{"2", " ", "b", " ", "x", " ", "y"}], "+", 
      RowBox[{"c", " ", 
       SuperscriptBox["y", "2"]}]}], " ", "\[Equal]", " ", "0"}], ",", " ", 
    "x"}], "]"}], "  "}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", 
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"-", "b"}], " ", "y"}], "-", 
       SqrtBox[
        RowBox[{
         RowBox[{
          RowBox[{"-", "a"}], " ", "f"}], "+", 
         RowBox[{
          SuperscriptBox["b", "2"], " ", 
          SuperscriptBox["y", "2"]}], "-", 
         RowBox[{"a", " ", "c", " ", 
          SuperscriptBox["y", "2"]}]}]]}], "a"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", 
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"-", "b"}], " ", "y"}], "+", 
       SqrtBox[
        RowBox[{
         RowBox[{
          RowBox[{"-", "a"}], " ", "f"}], "+", 
         RowBox[{
          SuperscriptBox["b", "2"], " ", 
          SuperscriptBox["y", "2"]}], "-", 
         RowBox[{"a", " ", "c", " ", 
          SuperscriptBox["y", "2"]}]}]]}], "a"]}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell["Here is a visualization.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"m", "=", 
       RowBox[{"translateconic", "[", 
        RowBox[{
         RowBox[{"rotateconic", "[", 
          RowBox[{
           RowBox[{"scaleconic", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], ",", " ", 
               
               RowBox[{"{", 
                RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], ",", " ", 
               
               RowBox[{"{", 
                RowBox[{"0", ",", " ", "0", ",", " ", 
                 RowBox[{"-", "1"}]}], "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"sx", ",", " ", "sy"}], "}"}]}], "]"}], ",", 
           "\[Alpha]"}], "]"}], ",", "z"}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Show", "[", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ContourPlot", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x", ",", "y", ",", "1"}], "}"}], ".", "m", ".", 
           RowBox[{"{", 
            RowBox[{"x", ",", "y", ",", "1"}], "}"}]}], "\[Equal]", "0"}], 
         ",", " ", 
         RowBox[{"{", 
          RowBox[{"x", ",", " ", 
           RowBox[{"-", "4"}], ",", " ", "4"}], "}"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"y", ",", " ", 
           RowBox[{"-", "4"}], ",", " ", "4"}], "}"}], ",", " ", 
         RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", " ", 
         RowBox[{"ContourStyle", "\[Rule]", "Thick"}]}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Graphics", "[", 
        RowBox[{"{", "\[IndentingNewLine]", 
         RowBox[{"Red", ",", 
          RowBox[{"Line", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "4"}], ",", "hl"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"4", ",", "hl"}], "}"}]}], "}"}], "]"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"PointSize", "[", "Large", "]"}], ",", "Blue", ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Module", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"x", ",", " ", 
              RowBox[{"c", " ", "=", " ", 
               RowBox[{"coniccenter", "[", "m", "]"}]}]}], "}"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Point", "[", 
             RowBox[{"Map", "[", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"x", "+", 
                    RowBox[{"c", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], ",", "hl"}], "}"}], " ",
                  "/.", " ", "#"}], "&"}], ",", 
               RowBox[{"Solve", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{"hl", "-", 
                    RowBox[{"c", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], ",", "1"}], "}"}], ".", 
                   
                   RowBox[{"translateconic", "[", 
                    RowBox[{"m", ",", 
                    RowBox[{"-", "c"}]}], "]"}], ".", 
                   RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{"hl", "-", 
                    RowBox[{"c", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], ",", "1"}], "}"}]}], 
                  " ", "\[Equal]", " ", "0"}], ",", " ", "x", ",", "Reals"}], 
                "]"}]}], "]"}], "]"}]}], "]"}]}], "}"}], "]"}]}], "]"}]}], 
    "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"sx", ",", "1"}], "}"}], ",", 
     RowBox[{"1", "/", "10"}], ",", "4"}], "}"}], ",", "\[IndentingNewLine]", 
   
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"sy", ",", "1"}], "}"}], ",", 
     RowBox[{"1", "/", "10"}], ",", "4"}], "}"}], ",", "\[IndentingNewLine]", 
   
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Alpha]", ",", "0"}], "}"}], ",", 
     RowBox[{
      RowBox[{"-", "Pi"}], "/", "2"}], ",", 
     RowBox[{"Pi", "/", "2"}]}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"z", ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0"}], "}"}]}], "}"}], ",", " ", "Locator"}], "}"}],
    ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"hl", ",", " ", 
       RowBox[{"1", "/", "2"}]}], "}"}], ",", 
     RowBox[{"-", "4"}], ",", "4"}], "}"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`hl$$ = Rational[1, 2], $CellContext`sx$$ = 
    1, $CellContext`sy$$ = 1, $CellContext`z$$ = {0, 
    0}, $CellContext`\[Alpha]$$ = 0, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`sx$$], 1}, 
      Rational[1, 10], 4}, {{
       Hold[$CellContext`sy$$], 1}, 
      Rational[1, 10], 4}, {{
       Hold[$CellContext`\[Alpha]$$], 0}, Rational[-1, 2] Pi, Rational[1, 2] 
      Pi}, {{
       Hold[$CellContext`z$$], {0, 0}}, Automatic}, {{
       Hold[$CellContext`hl$$], 
       Rational[1, 2]}, -4, 4}}, Typeset`size$$ = {576., {285., 289.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`sx$924$$ = 0, $CellContext`sy$925$$ = 
    0, $CellContext`\[Alpha]$926$$ = 0, $CellContext`hl$927$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`hl$$ = Rational[1, 2], $CellContext`sx$$ = 
        1, $CellContext`sy$$ = 
        1, $CellContext`z$$ = {0, 0}, $CellContext`\[Alpha]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`sx$$, $CellContext`sx$924$$, 0], 
        Hold[$CellContext`sy$$, $CellContext`sy$925$$, 0], 
        Hold[$CellContext`\[Alpha]$$, $CellContext`\[Alpha]$926$$, 0], 
        Hold[$CellContext`hl$$, $CellContext`hl$927$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = $CellContext`translateconic[
           $CellContext`rotateconic[
            $CellContext`scaleconic[{{1, 0, 0}, {0, 1, 0}, {0, 
             0, -1}}, {$CellContext`sx$$, $CellContext`sy$$}], $CellContext`\
\[Alpha]$$], $CellContext`z$$]}, 
        Show[
         ContourPlot[
         Dot[{$CellContext`x, $CellContext`y, 
             1}, $CellContext`m$, {$CellContext`x, $CellContext`y, 1}] == 
          0, {$CellContext`x, -4, 4}, {$CellContext`y, -4, 4}, ImageSize -> 
          Large, ContourStyle -> Thick], 
         Graphics[{Red, 
           Line[{{-4, $CellContext`hl$$}, {4, $CellContext`hl$$}}], 
           PointSize[Large], Blue, 
           
           Module[{$CellContext`x$, $CellContext`c$ = \
$CellContext`coniccenter[$CellContext`m$]}, 
            Point[
             Map[
             ReplaceAll[{$CellContext`x$ + 
                Part[$CellContext`c$, 1], $CellContext`hl$$}, #]& , 
              Solve[
              Dot[{$CellContext`x$, $CellContext`hl$$ - 
                  Part[$CellContext`c$, 2], 1}, 
                 $CellContext`translateconic[$CellContext`m$, \
-$CellContext`c$], {$CellContext`x$, $CellContext`hl$$ - 
                  Part[$CellContext`c$, 2], 1}] == 0, $CellContext`x$, 
               Reals]]]]}]]], "Specifications" :> {{{$CellContext`sx$$, 1}, 
         Rational[1, 10], 4}, {{$CellContext`sy$$, 1}, 
         Rational[1, 10], 4}, {{$CellContext`\[Alpha]$$, 0}, Rational[-1, 2] 
         Pi, Rational[1, 2] Pi}, {{$CellContext`z$$, {0, 0}}, Automatic, 
         ControlType -> Locator}, {{$CellContext`hl$$, 
          Rational[1, 2]}, -4, 4}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {375., 381.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`translateconic[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`tx, 
           Blank[]], 
          Pattern[$CellContext`ty, 
           Blank[]]}] := 
       Module[{$CellContext`it = {{1, 0, -$CellContext`tx}, {
            0, 1, -$CellContext`ty}, {0, 0, 1}}}, 
         Dot[
          
          Transpose[$CellContext`it], $CellContext`m, $CellContext`it]], \
$CellContext`rotateconic[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`\[Alpha], 
          Blank[]]] := 
       Module[{$CellContext`c = Cos[-$CellContext`\[Alpha]], $CellContext`s = 
          Sin[-$CellContext`\[Alpha]]}, 
         Module[{$CellContext`ir = {{$CellContext`c, -$CellContext`s, 
              0}, {$CellContext`s, $CellContext`c, 0}, {0, 0, 1}}}, 
          Dot[
           
           Transpose[$CellContext`ir], $CellContext`m, $CellContext`ir]]], \
$CellContext`scaleconic[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`sx, 
           Blank[]], 
          Pattern[$CellContext`sy, 
           Blank[]]}] := 
       Module[{$CellContext`is = {{1/$CellContext`sx, 0, 0}, {
            0, 1/$CellContext`sy, 0}, {0, 0, 1}}}, 
         Dot[
          
          Transpose[$CellContext`is], $CellContext`m, $CellContext`is]], \
$CellContext`coniccenter[
         Pattern[$CellContext`m, 
          Blank[]]] := (Assert[
          SymmetricMatrixQ[$CellContext`m]]; Module[{$CellContext`det = Det[
             Part[$CellContext`m, 
              Span[1, 2], 
              Span[1, 2]]]}, 
          Assert[$CellContext`det != 
            0]; {(Part[$CellContext`m, 1, 2] Part[$CellContext`m, 2, 3] - 
             Part[$CellContext`m, 2, 2] 
             Part[$CellContext`m, 1, 3])/$CellContext`det, (
             Part[$CellContext`m, 1, 2] Part[$CellContext`m, 1, 3] - 
             Part[$CellContext`m, 1, 1] 
             Part[$CellContext`m, 2, 3])/$CellContext`det}]), 
       Attributes[Assert] = {HoldAllComplete}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output"]
}, Open  ]],

Cell["\<\
The extreme values for y that accept solutions in x are exactly the min and \
max y of the bounding box. These will happen when the discriminant of the \
quadratic we are solving for x is zero, so that x is a double root and the \
horizontal line is tangent to the conic.\
\>", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"-", "a"}], " ", "f"}], "+", 
      RowBox[{
       SuperscriptBox["b", "2"], " ", 
       SuperscriptBox["y", "2"]}], "-", 
      RowBox[{"a", " ", "c", " ", 
       SuperscriptBox["y", "2"]}]}], "\[Equal]", "0"}], ",", " ", "y"}], 
   "]"}], " "}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"y", "\[Rule]", 
     RowBox[{"-", 
      FractionBox[
       RowBox[{
        SqrtBox["a"], " ", 
        SqrtBox["f"]}], 
       SqrtBox[
        RowBox[{
         SuperscriptBox["b", "2"], "-", 
         RowBox[{"a", " ", "c"}]}]]]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"y", "\[Rule]", 
     FractionBox[
      RowBox[{
       SqrtBox["a"], " ", 
       SqrtBox["f"]}], 
      SqrtBox[
       RowBox[{
        SuperscriptBox["b", "2"], "-", 
        RowBox[{"a", " ", "c"}]}]]]}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell["The equations for the extreme x are similar.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"f", "+", 
      RowBox[{"a", " ", 
       SuperscriptBox["x", "2"]}], "+", 
      RowBox[{"2", " ", "b", " ", "x", " ", "y"}], "+", 
      RowBox[{"c", " ", 
       SuperscriptBox["y", "2"]}]}], " ", "\[Equal]", " ", "0"}], ",", " ", 
    "y"}], "]"}], "  "}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"y", "\[Rule]", 
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"-", "b"}], " ", "x"}], "-", 
       SqrtBox[
        RowBox[{
         RowBox[{
          RowBox[{"-", "c"}], " ", "f"}], "+", 
         RowBox[{
          SuperscriptBox["b", "2"], " ", 
          SuperscriptBox["x", "2"]}], "-", 
         RowBox[{"a", " ", "c", " ", 
          SuperscriptBox["x", "2"]}]}]]}], "c"]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"y", "\[Rule]", 
     FractionBox[
      RowBox[{
       RowBox[{
        RowBox[{"-", "b"}], " ", "x"}], "+", 
       SqrtBox[
        RowBox[{
         RowBox[{
          RowBox[{"-", "c"}], " ", "f"}], "+", 
         RowBox[{
          SuperscriptBox["b", "2"], " ", 
          SuperscriptBox["x", "2"]}], "-", 
         RowBox[{"a", " ", "c", " ", 
          SuperscriptBox["x", "2"]}]}]]}], "c"]}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"-", "c"}], " ", "f"}], "+", 
      RowBox[{
       SuperscriptBox["b", "2"], " ", 
       SuperscriptBox["x", "2"]}], "-", 
      RowBox[{"a", " ", "c", " ", 
       SuperscriptBox["x", "2"]}]}], "\[Equal]", "0"}], ",", " ", "x"}], 
   "]"}], " "}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", 
     RowBox[{"-", 
      FractionBox[
       RowBox[{
        SqrtBox["c"], " ", 
        SqrtBox["f"]}], 
       SqrtBox[
        RowBox[{
         SuperscriptBox["b", "2"], "-", 
         RowBox[{"a", " ", "c"}]}]]]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", 
     FractionBox[
      RowBox[{
       SqrtBox["c"], " ", 
       SqrtBox["f"]}], 
      SqrtBox[
       RowBox[{
        SuperscriptBox["b", "2"], "-", 
        RowBox[{"a", " ", "c"}]}]]]}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[TextData[{
 "For ellipses, we know that ",
 Cell[BoxData[
  RowBox[{
   SuperscriptBox["b", "2"], "-", 
   RowBox[{"a", " ", "c"}]}]],
  CellChangeTimes->{3.625329776867551*^9}],
 " > 0. If c f < 0 or a f < 0, what the formulas are telling us is that the \
ellipse has no real points."
}], "Text"],

Cell[BoxData[
 RowBox[{
  RowBox[{"conicbbox", "[", "m_", "]"}], " ", ":=", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"Assert", "[", 
     RowBox[{"SymmetricMatrixQ", "[", "m", "]"}], "]"}], ";", "  ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"c", " ", "=", " ", 
        RowBox[{"coniccenter", "[", "m", "]"}]}], "}"}], ",", " ", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"n", " ", "=", " ", 
          RowBox[{"translateconic", "[", 
           RowBox[{"m", ",", 
            RowBox[{"-", "c"}]}], "]"}]}], "}"}], ",", " ", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"det", " ", "=", " ", 
            RowBox[{"Det", "[", 
             RowBox[{"n", "[", 
              RowBox[{"[", 
               RowBox[{
                RowBox[{"1", ";;", "2"}], ",", 
                RowBox[{"1", ";;", "2"}]}], "]"}], "]"}], "]"}]}], "}"}], ",", 
          RowBox[{
           RowBox[{"Assert", "[", 
            RowBox[{"det", " ", "\[NotEqual]", " ", "0"}], "]"}], ";", 
           RowBox[{"Module", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"d", " ", "=", " ", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"Sqrt", "[", 
                  RowBox[{
                   RowBox[{"-", 
                    RowBox[{"n", "[", 
                    RowBox[{"[", 
                    RowBox[{"2", ",", "2"}], "]"}], "]"}]}], 
                   RowBox[{
                    RowBox[{"n", "[", 
                    RowBox[{"[", 
                    RowBox[{"3", ",", "3"}], "]"}], "]"}], "/", "det"}]}], 
                  "]"}], ",", " ", 
                 RowBox[{"Sqrt", "[", 
                  RowBox[{
                   RowBox[{"-", 
                    RowBox[{"n", "[", 
                    RowBox[{"[", 
                    RowBox[{"1", ",", "1"}], "]"}], "]"}]}], 
                   RowBox[{
                    RowBox[{"n", "[", 
                    RowBox[{"[", 
                    RowBox[{"3", ",", "3"}], "]"}], "]"}], "/", "det"}]}], 
                  "]"}]}], "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"c", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "-", 
                RowBox[{"d", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
               RowBox[{
                RowBox[{"c", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "-", 
                RowBox[{"d", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
               RowBox[{
                RowBox[{"c", "[", 
                 RowBox[{"[", "1", "]"}], "]"}], "+", 
                RowBox[{"d", "[", 
                 RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
               RowBox[{
                RowBox[{"c", "[", 
                 RowBox[{"[", "2", "]"}], "]"}], "+", 
                RowBox[{"d", "[", 
                 RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], "]"}]}]}], 
         "]"}]}], "]"}]}], "]"}]}], ")"}]}]], "Input",
 InitializationCell->True],

Cell["Here is the final demo.", "Text"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"m", "=", 
       RowBox[{"translateconic", "[", 
        RowBox[{
         RowBox[{"rotateconic", "[", 
          RowBox[{
           RowBox[{"scaleconic", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1", ",", " ", "0", ",", " ", "0"}], "}"}], ",", " ", 
               
               RowBox[{"{", 
                RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], ",", " ", 
               
               RowBox[{"{", 
                RowBox[{"0", ",", " ", "0", ",", " ", 
                 RowBox[{"-", "1"}]}], "}"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"sx", ",", " ", "sy"}], "}"}]}], "]"}], ",", 
           "\[Alpha]"}], "]"}], ",", "z"}], "]"}]}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"bbox", " ", "=", " ", 
         RowBox[{"conicbbox", "[", "m", "]"}]}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Show", "[", 
        RowBox[{
         RowBox[{"ContourPlot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"{", 
              RowBox[{"x", ",", "y", ",", "1"}], "}"}], ".", "m", ".", 
             RowBox[{"{", 
              RowBox[{"x", ",", "y", ",", "1"}], "}"}]}], "\[Equal]", "0"}], 
           ",", " ", 
           RowBox[{"{", 
            RowBox[{"x", ",", " ", 
             RowBox[{"-", "4"}], ",", " ", "4"}], "}"}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"y", ",", " ", 
             RowBox[{"-", "4"}], ",", " ", "4"}], "}"}], ",", " ", 
           RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", " ", 
           RowBox[{"ContourStyle", "\[Rule]", "Thick"}]}], "]"}], ",", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{"Blue", ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"bbox", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], ",", 
                 RowBox[{"bbox", "[", 
                  RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"bbox", "[", 
                  RowBox[{"[", "3", "]"}], "]"}], ",", 
                 RowBox[{"bbox", "[", 
                  RowBox[{"[", "2", "]"}], "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"bbox", "[", 
                  RowBox[{"[", "3", "]"}], "]"}], ",", 
                 RowBox[{"bbox", "[", 
                  RowBox[{"[", "4", "]"}], "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"bbox", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], ",", 
                 RowBox[{"bbox", "[", 
                  RowBox[{"[", "4", "]"}], "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"bbox", "[", 
                  RowBox[{"[", "1", "]"}], "]"}], ",", 
                 RowBox[{"bbox", "[", 
                  RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], "}"}], "]"}]}], 
           "}"}], "]"}]}], "]"}]}], "]"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"sx", ",", "1"}], "}"}], ",", 
     RowBox[{"1", "/", "10"}], ",", "4"}], "}"}], ",", "\[IndentingNewLine]", 
   
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"sy", ",", "1"}], "}"}], ",", 
     RowBox[{"1", "/", "10"}], ",", "4"}], "}"}], ",", "\[IndentingNewLine]", 
   
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Alpha]", ",", "0"}], "}"}], ",", 
     RowBox[{
      RowBox[{"-", "Pi"}], "/", "2"}], ",", 
     RowBox[{"Pi", "/", "2"}]}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"z", ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "0"}], "}"}]}], "}"}], ",", " ", "Locator"}], 
    "}"}]}], "]"}]], "Input",
 InitializationCell->True],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`sx$$ = 1, $CellContext`sy$$ = 
    1, $CellContext`z$$ = {0, 0}, $CellContext`\[Alpha]$$ = 0, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`sx$$], 1}, 
      Rational[1, 10], 4}, {{
       Hold[$CellContext`sy$$], 1}, 
      Rational[1, 10], 4}, {{
       Hold[$CellContext`\[Alpha]$$], 0}, Rational[-1, 2] Pi, Rational[1, 2] 
      Pi}, {{
       Hold[$CellContext`z$$], {0, 0}}, Automatic}}, Typeset`size$$ = {
    576., {285., 289.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`sx$991$$ = 
    0, $CellContext`sy$992$$ = 0, $CellContext`\[Alpha]$993$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`sx$$ = 1, $CellContext`sy$$ = 
        1, $CellContext`z$$ = {0, 0}, $CellContext`\[Alpha]$$ = 0}, 
      "ControllerVariables" :> {
        Hold[$CellContext`sx$$, $CellContext`sx$991$$, 0], 
        Hold[$CellContext`sy$$, $CellContext`sy$992$$, 0], 
        Hold[$CellContext`\[Alpha]$$, $CellContext`\[Alpha]$993$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m = $CellContext`translateconic[
           $CellContext`rotateconic[
            $CellContext`scaleconic[{{1, 0, 0}, {0, 1, 0}, {0, 
             0, -1}}, {$CellContext`sx$$, $CellContext`sy$$}], $CellContext`\
\[Alpha]$$], $CellContext`z$$]}, 
        Module[{$CellContext`bbox = $CellContext`conicbbox[$CellContext`m]}, 
         Show[
          ContourPlot[
          Dot[{$CellContext`x, $CellContext`y, 
              1}, $CellContext`m, {$CellContext`x, $CellContext`y, 1}] == 0, {
           $CellContext`x, -4, 4}, {$CellContext`y, -4, 4}, ImageSize -> 
           Large, ContourStyle -> Thick], 
          Graphics[{Blue, 
            Line[{{
               Part[$CellContext`bbox, 1], 
               Part[$CellContext`bbox, 2]}, {
               Part[$CellContext`bbox, 3], 
               Part[$CellContext`bbox, 2]}, {
               Part[$CellContext`bbox, 3], 
               Part[$CellContext`bbox, 4]}, {
               Part[$CellContext`bbox, 1], 
               Part[$CellContext`bbox, 4]}, {
               Part[$CellContext`bbox, 1], 
               Part[$CellContext`bbox, 2]}}]}]]]], 
      "Specifications" :> {{{$CellContext`sx$$, 1}, 
         Rational[1, 10], 4}, {{$CellContext`sy$$, 1}, 
         Rational[1, 10], 4}, {{$CellContext`\[Alpha]$$, 0}, Rational[-1, 2] 
         Pi, Rational[1, 2] Pi}, {{$CellContext`z$$, {0, 0}}, Automatic, 
         ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{627., {361., 367.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`translateconic[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`tx, 
           Blank[]], 
          Pattern[$CellContext`ty, 
           Blank[]]}] := 
       Module[{$CellContext`it = {{1, 0, -$CellContext`tx}, {
            0, 1, -$CellContext`ty}, {0, 0, 1}}}, 
         Dot[
          
          Transpose[$CellContext`it], $CellContext`m, $CellContext`it]], \
$CellContext`rotateconic[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`\[Alpha], 
          Blank[]]] := 
       Module[{$CellContext`c = Cos[-$CellContext`\[Alpha]], $CellContext`s = 
          Sin[-$CellContext`\[Alpha]]}, 
         Module[{$CellContext`ir = {{$CellContext`c, -$CellContext`s, 
              0}, {$CellContext`s, $CellContext`c, 0}, {0, 0, 1}}}, 
          Dot[
           
           Transpose[$CellContext`ir], $CellContext`m, $CellContext`ir]]], \
$CellContext`scaleconic[
         Pattern[$CellContext`m, 
          Blank[]], {
          Pattern[$CellContext`sx, 
           Blank[]], 
          Pattern[$CellContext`sy, 
           Blank[]]}] := 
       Module[{$CellContext`is = {{1/$CellContext`sx, 0, 0}, {
            0, 1/$CellContext`sy, 0}, {0, 0, 1}}}, 
         Dot[
          
          Transpose[$CellContext`is], $CellContext`m, $CellContext`is]], \
$CellContext`conicbbox[
         Pattern[$CellContext`m, 
          Blank[]]] := (Assert[
          SymmetricMatrixQ[$CellContext`m]]; 
        Module[{$CellContext`c = $CellContext`coniccenter[$CellContext`m]}, 
          
          Module[{$CellContext`n = \
$CellContext`translateconic[$CellContext`m, -$CellContext`c]}, 
           Module[{$CellContext`det = Det[
               Part[$CellContext`n, 
                Span[1, 2], 
                Span[1, 2]]]}, Assert[$CellContext`det != 0]; 
            Module[{$CellContext`d = {
                 
                 Sqrt[(-Part[$CellContext`n, 2, 2]) (
                   Part[$CellContext`n, 3, 3]/$CellContext`det)], 
                 
                 Sqrt[(-Part[$CellContext`n, 1, 1]) (
                   Part[$CellContext`n, 3, 3]/$CellContext`det)]}}, {
              Part[$CellContext`c, 1] - Part[$CellContext`d, 1], 
               Part[$CellContext`c, 2] - Part[$CellContext`d, 2], 
               Part[$CellContext`c, 1] + Part[$CellContext`d, 1], 
               Part[$CellContext`c, 2] + Part[$CellContext`d, 2]}]]]]), 
       Attributes[Assert] = {HoldAllComplete}, $CellContext`coniccenter[
         Pattern[$CellContext`m, 
          Blank[]]] := (Assert[
          SymmetricMatrixQ[$CellContext`m]]; Module[{$CellContext`det = Det[
             Part[$CellContext`m, 
              Span[1, 2], 
              Span[1, 2]]]}, 
          Assert[$CellContext`det != 
            0]; {(Part[$CellContext`m, 1, 2] Part[$CellContext`m, 2, 3] - 
             Part[$CellContext`m, 2, 2] 
             Part[$CellContext`m, 1, 3])/$CellContext`det, (
             Part[$CellContext`m, 1, 2] Part[$CellContext`m, 1, 3] - 
             Part[$CellContext`m, 1, 1] 
             Part[$CellContext`m, 2, 3])/$CellContext`det}])}; 
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
WindowSize->{1427, 1279},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
ShowCellTags->True,
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
Cell[1714, 43, 450, 10, 101, "Text"],
Cell[CellGroupData[{
Cell[2189, 57, 469, 14, 32, "Input"],
Cell[2661, 73, 617, 18, 67, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[3315, 96, 669, 20, 32, "Input"],
Cell[3987, 118, 332, 9, 32, "Output"]
}, Open  ]],
Cell[4334, 130, 93, 2, 29, "Text"],
Cell[4430, 134, 638, 19, 63, "Input"],
Cell[CellGroupData[{
Cell[5093, 157, 642, 20, 32, "Input"],
Cell[5738, 179, 159, 5, 32, "Output"]
}, Open  ]],
Cell[5912, 187, 65, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[6002, 191, 1072, 30, 32, "Input"],
Cell[7077, 223, 2890, 59, 589, "Output"]
}, Open  ]],
Cell[9982, 285, 277, 5, 47, "Text"],
Cell[10262, 292, 156, 3, 29, "Text"],
Cell[10421, 297, 220, 7, 32, "Input"],
Cell[10644, 306, 146, 3, 29, "Text"],
Cell[10793, 311, 318, 8, 32, "Input"],
Cell[11114, 321, 191, 5, 32, "Input"],
Cell[11308, 328, 200, 4, 29, "Text"],
Cell[11511, 334, 1074, 31, 48, "Input",
 InitializationCell->True],
Cell[12588, 367, 798, 24, 48, "Input",
 InitializationCell->True],
Cell[13389, 393, 807, 25, 48, "Input",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[14221, 422, 2285, 67, 175, "Input",
 InitializationCell->True],
Cell[16509, 491, 4222, 91, 745, "Output"]
}, Open  ]],
Cell[20746, 585, 165, 5, 65, "Text"],
Cell[CellGroupData[{
Cell[20936, 594, 469, 14, 32, "Input"],
Cell[21408, 610, 617, 18, 67, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[22062, 633, 596, 18, 32, "Input"],
Cell[22661, 653, 1420, 43, 67, "Output"]
}, Open  ]],
Cell[24096, 699, 108, 3, 29, "Text"],
Cell[24207, 704, 621, 18, 65, "Input"],
Cell[24831, 724, 66, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[24922, 728, 470, 15, 32, "Input"],
Cell[25395, 745, 622, 22, 51, "Output"]
}, Open  ]],
Cell[26032, 770, 379, 10, 33, "Text"],
Cell[26414, 782, 2007, 58, 91, "Input",
 InitializationCell->True],
Cell[28424, 842, 58, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[28507, 846, 832, 23, 32, "Input"],
Cell[29342, 871, 94, 2, 32, "Output"]
}, Open  ]],
Cell[29451, 876, 217, 4, 29, "Text"],
Cell[CellGroupData[{
Cell[29693, 884, 469, 14, 32, "Input"],
Cell[30165, 900, 617, 18, 67, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[30819, 923, 660, 20, 32, "Input"],
Cell[31482, 945, 209, 6, 32, "Output"]
}, Open  ]],
Cell[31706, 954, 98, 2, 29, "Text"],
Cell[CellGroupData[{
Cell[31829, 960, 358, 11, 35, "Input"],
Cell[32190, 973, 945, 32, 58, "Output"]
}, Open  ]],
Cell[33150, 1008, 40, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[33215, 1012, 4890, 133, 322, "Input",
 InitializationCell->True],
Cell[38108, 1147, 6047, 131, 773, "Output"]
}, Open  ]],
Cell[44170, 1281, 295, 5, 47, "Text"],
Cell[CellGroupData[{
Cell[44490, 1290, 378, 13, 35, "Input"],
Cell[44871, 1305, 588, 23, 64, "Output"]
}, Open  ]],
Cell[45474, 1331, 60, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[45559, 1335, 358, 11, 35, "Input"],
Cell[45920, 1348, 945, 32, 58, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[46902, 1385, 378, 13, 35, "Input"],
Cell[47283, 1400, 588, 23, 64, "Output"]
}, Open  ]],
Cell[47886, 1426, 302, 9, 33, "Text"],
Cell[48191, 1437, 3173, 83, 91, "Input",
 InitializationCell->True],
Cell[51367, 1522, 39, 0, 29, "Text"],
Cell[CellGroupData[{
Cell[51431, 1526, 4248, 116, 217, "Input",
 InitializationCell->True],
Cell[55682, 1644, 6691, 145, 745, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Xu0jYmEyUPEbbAgTfb03toIq *)
