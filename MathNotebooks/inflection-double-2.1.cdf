(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.0' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    421484,      10997]
NotebookOptionsPosition[    384453,      10408]
NotebookOutlinePosition[    384810,      10424]
CellTagsIndexPosition[    384767,      10421]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell["This is so we can export a demo.", "Text",
 CellChangeTimes->{{3.627663824850753*^9, 3.627663859754321*^9}, {
   3.62766397792738*^9, 3.627663981910199*^9}, 3.627665183116555*^9, {
   3.629720310001828*^9, 
   3.629720315217125*^9}},ExpressionUUID->"64e3d14b-5fa1-4524-aa34-\
f639267a6c67"],

Cell[BoxData[
 RowBox[{
  RowBox[{"SetOptions", "[", 
   RowBox[{"Manipulate", ",", " ", 
    RowBox[{"{", 
     RowBox[{"SaveDefinitions", "\[Rule]", "True"}], "}"}]}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.6297203161290493`*^9, 3.629720323151328*^9}, {
  3.7893930111130047`*^9, 3.789393012058856*^9}},
 CellLabel->"In[2]:=",ExpressionUUID->"55e080cd-e300-4e2d-af1d-638581220410"],

Cell["These convert between projective to euclidean space", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.6246287058108387`*^9, 3.624628714999864*^9}, {3.625311021521913*^9, 
  3.62531102225705*^9}},ExpressionUUID->"6ae6f803-ff96-44d6-8b78-\
362a2149c793"],

Cell[BoxData[
 RowBox[{
  RowBox[{"p2e", "[", 
   RowBox[{"{", 
    RowBox[{"x_", ",", " ", "y_", ",", " ", "w_"}], "}"}], "]"}], ":=", " ", 
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{"w", "\[NotEqual]", " ", "0"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"x", "/", "w"}], ",", " ", 
      RowBox[{"y", "/", "w"}]}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"1*^100", " ", "x"}], ",", " ", 
      RowBox[{"1*^100", "y"}]}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.62462678947827*^9, 3.624626808959537*^9}, {
  3.6246271746275787`*^9, 3.624627175872758*^9}, {3.72769920182131*^9, 
  3.7276992193266087`*^9}, {3.7276992762136803`*^9, 3.7276992976690273`*^9}},
 CellLabel->"In[3]:=",ExpressionUUID->"0753600b-1864-414c-a24c-7bf6547c64ba"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.624626845624737*^9, 3.624626859357353*^9}, 
   3.662987013682782*^9},
 CellLabel->"In[4]:=",ExpressionUUID->"5d73a387-c32e-470e-a44b-1ab7f05e9130"],

Cell["\<\
This creates a vector with each element of the homogeneous Bernstein basis\
\>", "Text",
 CellChangeTimes->{{3.625403677152547*^9, 
  3.6254037117228193`*^9}},ExpressionUUID->"a56621af-f1c9-4df9-becc-\
f327fc0f6b30"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.625400603109065*^9, 3.62540061905998*^9}, {
  3.625400689189837*^9, 3.625400703654606*^9}, {3.6254011636131697`*^9, 
  3.625401165829356*^9}, {3.62541649567514*^9, 3.625416541170773*^9}},
 CellLabel->"In[5]:=",ExpressionUUID->"a47e5630-2301-4db3-896c-0316fa3ef402"],

Cell["\<\
This creates a vector with each element of the homogeneous Power basis\
\>", "Text",
 CellChangeTimes->{{3.625403677152547*^9, 
  3.625403706119804*^9}},ExpressionUUID->"e55456b8-f071-4c19-bde4-\
8643d913b825"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.6254007941008883`*^9, 3.625400823896648*^9}, {
  3.625401176213222*^9, 3.625401177799088*^9}, {3.625416563973784*^9, 
  3.62541658155799*^9}},
 CellLabel->"In[6]:=",ExpressionUUID->"767951e2-c25e-4453-b756-35dae0bcdfea"],

Cell[TextData[{
 "We ",
 StyleBox["could",
  FontSlant->"Italic"],
 " use bb[{t,1},3] directly, but ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " would expand things algebraically. Not only would this take longer, but it \
would produce indeterminate results at t=0 and t=1... "
}], "Text",
 CellChangeTimes->{{3.625404168053917*^9, 3.625404211514456*^9}, {
   3.625404253018693*^9, 3.6254044051395073`*^9}, {3.625404443749749*^9, 
   3.625404481167268*^9}, 3.6254052917001963`*^9, {3.625405323174762*^9, 
   3.625405391000595*^9}, {3.625410253914736*^9, 3.6254103882858677`*^9}, {
   3.625412969681488*^9, 3.625412972323772*^9}, {3.625415898568529*^9, 
   3.625415985472968*^9}, {3.625419537002647*^9, 3.625419649219928*^9}, 
   3.625570328378059*^9, {3.625588497891056*^9, 3.625588503841599*^9}, {
   3.628250646043508*^9, 
   3.628250646080998*^9}},ExpressionUUID->"89d0d7a5-f12d-434d-99f6-\
22ca338f527e"],

Cell[BoxData[
 RowBox[{
  RowBox[{"bb2", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"Evaluate", "[", 
   RowBox[{"bb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "1"}], "}"}], ",", " ", "2"}], "]"}], "]"}], 
  " "}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.625416724166404*^9, 3.62541674346653*^9}, {
  3.625570333048457*^9, 3.625570335545874*^9}, {3.625587260920065*^9, 
  3.62558726441683*^9}, {3.727825563683626*^9, 3.7278255664608603`*^9}},
 CellLabel->"In[7]:=",ExpressionUUID->"27976c46-9e7d-4e67-a95f-64eac39ad30f"],

Cell[BoxData[
 RowBox[{
  RowBox[{"pb2", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"Evaluate", "[", 
   RowBox[{"pb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "1"}], "}"}], ",", " ", "2"}], "]"}], "]"}], 
  " "}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.6255882905897093`*^9, 3.6255882953585443`*^9}, {
  3.727825569412755*^9, 3.7278255718272953`*^9}},
 CellLabel->"In[8]:=",ExpressionUUID->"4b914009-e5ed-497a-82eb-88fc380169bc"],

Cell[BoxData[
 RowBox[{
  RowBox[{"bb3", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"Evaluate", "[", 
   RowBox[{"bb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "1"}], "}"}], ",", " ", "3"}], "]"}], "]"}], 
  " "}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.625416724166404*^9, 3.62541674346653*^9}, {
  3.625570333048457*^9, 3.625570335545874*^9}, {3.625587260920065*^9, 
  3.62558726441683*^9}},
 CellLabel->"In[9]:=",ExpressionUUID->"14831516-97cb-4431-bc54-530d96146665"],

Cell[BoxData[
 RowBox[{
  RowBox[{"pb3", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"Evaluate", "[", 
   RowBox[{"pb", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"t", ",", "1"}], "}"}], ",", " ", "3"}], "]"}], "]"}], 
  " "}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.6255882905897093`*^9, 3.6255882953585443`*^9}},
 CellLabel->"In[10]:=",ExpressionUUID->"46ab2048-2063-4677-8a9f-7bfce9384714"],

Cell["\<\
This gives the matrix that converts from the Power basis to the Bernstein \
basis\
\>", "Text",
 CellChangeTimes->{{3.625403677152547*^9, 3.625403737552763*^9}, {
  3.625403891374422*^9, 
  3.625403896965457*^9}},ExpressionUUID->"a542163d-4d86-40c3-a92b-\
07310be54d87"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.625400625156968*^9, 3.625400656506433*^9}, 
   3.625400788888166*^9, {3.625400926159409*^9, 3.6254009607642384`*^9}, {
   3.625401193032357*^9, 3.6254011982328978`*^9}, {3.694302902786845*^9, 
   3.6943029063816957`*^9}},
 CellLabel->"In[11]:=",ExpressionUUID->"641f81b0-ecfd-4ce9-8eb3-9b099ebe2a2a"],

Cell["Check that this works", "Text",
 CellChangeTimes->{{3.625403677152547*^9, 3.625403737552763*^9}, {
  3.625403874557822*^9, 3.625403876029133*^9}, {3.625404065805759*^9, 
  3.625404069416782*^9}},ExpressionUUID->"c7130b47-2ae5-4fbc-83e7-\
a743a4acb5e4"],

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
  " ", "Simplify"}]], "Input",
 CellChangeTimes->{{3.625403739884096*^9, 3.625403772958205*^9}, {
  3.625403847410899*^9, 3.6254038574800453`*^9}, {3.694302926690906*^9, 
  3.694302930641597*^9}},ExpressionUUID->"5e3485a4-0f03-4181-99ff-\
351a455ff19b"],

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
     "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.625403763305437*^9, 3.6254038595703583`*^9, {3.62541531570603*^9, 
   3.625415332499408*^9}, 3.6254165914288807`*^9, 3.6255702704664183`*^9, 
   3.625585631977737*^9, 3.6276614229798727`*^9, 3.6943029318681917`*^9, 
   3.694305147746978*^9, 
   3.694306296352899*^9},ExpressionUUID->"14337dbc-4827-441f-89bf-\
707d7d20c547"]
}, Open  ]],

Cell["Obviously, this performs the inverse operation", "Text",
 CellChangeTimes->{{3.625403677152547*^9, 3.625403737552763*^9}, {
  3.6254038827696733`*^9, 
  3.625403888246488*^9}},ExpressionUUID->"8613ced9-0051-47ef-af4d-\
b361eb21ee78"],

Cell[BoxData[
 RowBox[{
  RowBox[{"b2p", "[", "n_", "]"}], " ", ":=", " ", 
  RowBox[{"Inverse", "[", 
   RowBox[{"p2b", "[", "n", "]"}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.625401094378034*^9, 3.62540110074754*^9}},
 CellLabel->"In[12]:=",ExpressionUUID->"21d7888e-b1d4-452b-92ac-c061e66626a4"],

Cell["Now we can plot the curve", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.6246287058108387`*^9, 
  3.624628722830035*^9}},ExpressionUUID->"49b1ac94-fbe1-4152-81b9-\
c97cea43cda3"],

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
          RowBox[{"-", "7"}], ",", " ", 
          RowBox[{"-", "3"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "3"}], ",", " ", "5"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"3", ",", " ", "5"}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"7", ",", " ", 
          RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], ",", " ", 
     RowBox[{"w1s", " ", "=", " ", "1"}], ",", " ", 
     RowBox[{"w2s", "  ", "=", " ", "1"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", " ", "=", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"e2p", "[", 
            RowBox[{"pt", "[", 
             RowBox[{"[", "1", "]"}], "]"}], "]"}], ",", " ", 
           RowBox[{"e2p", "[", 
            RowBox[{
             RowBox[{"pt", "[", 
              RowBox[{"[", "2", "]"}], "]"}], ",", " ", "w1"}], "]"}], ",", 
           " ", 
           RowBox[{"e2p", "[", 
            RowBox[{
             RowBox[{"pt", "[", 
              RowBox[{"[", "3", "]"}], "]"}], ",", "w2"}], "]"}], ",", " ", 
           RowBox[{"e2p", "[", 
            RowBox[{"pt", "[", 
             RowBox[{"[", "4", "]"}], "]"}], "]"}]}], "}"}]}], "}"}], ",", 
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
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", " ", 
     
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w1", ",", "w1s"}], "}"}], ",", " ", "0", ",", " ", "20"}], 
      "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w2", ",", "w2s"}], "}"}], ",", "0", ",", "20"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGCQAGIQHTH/gHku42vHv2cugOlDk955gugXxsleINrt73R/
EG1wuT8DRIctkKoC0W/kAsD0nT6ROhA9+VMNmJ4iyKdTDKT3pDSB6SV3JHnm
AWlvr3gwzZ7Qemc302tHbYfgeyB62pvKRyD6yZOZz0C0Dr/pexDt9SjzI4h+
17nsG4je0NjyG0T3qsdkODEDzY3JKQTRO+YHcJmzv3b04EgC0782V07rAdJd
vodng+jOQ2Z3wjheOzK8b3kCouNWckmJCbx2TFsUrwKiq32X+0kC6S3nbgSB
6F9SBlume712LJwXfABE5z1MOgaiOSbdPwOizf77XQLRXaFbb4BoJ+MZD0G0
K0PQUxDN69r3CkQ3SF0F0yc+ru2dAaQVz1zsB9FBXBV3g9peOz7miXoAogHI
z7h3
  "],
 CellLabel->"In[13]:=",ExpressionUUID->"b2b359da-c573-4a29-8af1-7b1c48ac6b29"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
    7, -3}}, $CellContext`w1$$ = 1, $CellContext`w2$$ = 1, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-7, -3}, {-3, 5}, {3, 5}, {7, -3}}}, 
      Automatic}, {{
       Hold[$CellContext`w1$$], 1}, 0, 20}, {{
       Hold[$CellContext`w2$$], 1}, 0, 20}}, Typeset`size$$ = {
    576., {285., 291.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`w1$2898$$ = 
    0, $CellContext`w2$2899$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-7, -3}, {-3, 5}, {3, 5}, {
         7, -3}}, $CellContext`w1$$ = 1, $CellContext`w2$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`w1$$, $CellContext`w1$2898$$, 0], 
        Hold[$CellContext`w2$$, $CellContext`w2$2899$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Module[{$CellContext`m$ = {
           $CellContext`e2p[
            Part[$CellContext`pt$$, 1]], 
           $CellContext`e2p[
            Part[$CellContext`pt$$, 2], $CellContext`w1$$], 
           $CellContext`e2p[
            Part[$CellContext`pt$$, 3], $CellContext`w2$$], 
           $CellContext`e2p[
            Part[$CellContext`pt$$, 4]]}}, 
        Show[
         ParametricPlot[
          $CellContext`p2e[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$]], \
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
          7, -3}}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`w1$$, 1}, 0, 20}, {{$CellContext`w2$$, 1}, 
         0, 20}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{629., {345., 352.}},
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
           Blank[]]}] := 
       If[$CellContext`w != 
         0, {$CellContext`x/$CellContext`w, $CellContext`y/$CellContext`w}, {
         100000000000000000000000000000000000000000000000000000000000000000000\
00000000000000000000000000000000 $CellContext`x, 
          10000000000000000000000000000000000000000000000000000000000000000000\
000000000000000000000000000000000 $CellContext`y}], $CellContext`bb3[
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
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.624627017428406*^9, {3.624627155644062*^9, 3.624627188849266*^9}, 
   3.624635554868844*^9, 3.624638826214241*^9, 3.624726629440505*^9, 
   3.62531198700528*^9, 3.625312055015999*^9, 3.6253121150478*^9, 
   3.625312158066448*^9, 3.6253122218948717`*^9, 3.625328532985339*^9, 
   3.625587599429202*^9, {3.627661401774221*^9, 3.6276614301344643`*^9}, 
   3.62766149315869*^9, {3.627836600813716*^9, 3.6278366385609713`*^9}, 
   3.6280077216416683`*^9, 3.628248601500711*^9, {3.628250912724452*^9, 
   3.6282509166969633`*^9}, {3.6323125961130466`*^9, 3.632312612005848*^9}, {
   3.632319113388541*^9, 3.632319128245431*^9}, 3.632433063017445*^9, 
   3.632494789105159*^9, 3.63276262963691*^9, {3.662986696531953*^9, 
   3.6629867076557217`*^9}, 3.662986755405946*^9, {3.662986832511689*^9, 
   3.662986855730302*^9}, 3.66298705310774*^9, {3.662987085271225*^9, 
   3.6629870949773197`*^9}, 3.662987153454874*^9, {3.662988388714923*^9, 
   3.6629884183035307`*^9}, 3.6943029891697073`*^9, 3.694306218634763*^9, 
   3.694306300445928*^9, 3.694307444166782*^9, 3.694471418748898*^9, 
   3.694474179485367*^9, 3.69447421843358*^9, 3.694733759010244*^9, 
   3.694733798682375*^9, 3.7259021566316338`*^9, 3.725905067317922*^9, 
   3.72592469939421*^9, 3.727559964001173*^9, 3.727564518964245*^9, 
   3.7276022897091303`*^9, 3.727611495961636*^9, 3.727627409220242*^9, 
   3.7276492090572577`*^9, 3.727697719088663*^9, 3.7278246510949907`*^9, 
   3.727872254585204*^9, 3.727883732119297*^9, 3.72795750942655*^9, 
   3.727964575050715*^9, 3.7279750584408007`*^9, 3.730829067669671*^9, 
   3.7310192738607492`*^9, 3.7339551011711893`*^9, 3.7578530011512957`*^9, 
   3.7578547633970623`*^9, 3.757866863787224*^9, 3.757867080777341*^9, {
   3.757867165212536*^9, 3.757867190607512*^9}, 3.7578673582205267`*^9, 
   3.757867575515842*^9, 3.766414271615903*^9, 3.789393025372806*^9},
 CellLabel->"Out[13]=",ExpressionUUID->"8460069b-cba0-4cd9-b6a7-377d713f7310"]
}, Open  ]],

Cell["\<\
This gives a matrix with projective control points, and another with \
euclidean points \
\>", "Text",
 CellChangeTimes->{{3.625403677152547*^9, 3.625403737552763*^9}, {
  3.6254038827696733`*^9, 3.625403968605509*^9}, {3.625404080340447*^9, 
  3.625404088631863*^9}, {3.632331825272628*^9, 
  3.632331840920671*^9}},ExpressionUUID->"8cf74a35-e6de-4c4c-9ee6-\
d224b4ef8bf9"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.6254014658306026`*^9, 3.625401531499671*^9}, {
   3.6254030623966303`*^9, 3.6254030804861507`*^9}, {3.625403529420472*^9, 
   3.625403547610016*^9}, {3.625403581891317*^9, 3.625403615422488*^9}, {
   3.625403662731501*^9, 3.6254036645195827`*^9}, 3.632331767754059*^9, {
   3.694303078979868*^9, 3.69430308101157*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"9ff3fda3-cb5e-4a75-8b81-57240a9ffe8d"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.632331845996117*^9, 3.6323318504285383`*^9}, {
  3.6943030838918467`*^9, 3.694303086387713*^9}},
 CellLabel->"In[15]:=",ExpressionUUID->"2a548d52-299a-4160-9830-2e59befe841a"],

Cell["For example, for a cubic we would have ", "Text",
 CellChangeTimes->{{3.6254040938351097`*^9, 
  3.625404102776539*^9}},ExpressionUUID->"7e5cfd74-9e3c-4163-aaee-\
9ed7723d00e4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ppoints", "[", "3", "]"}], " ", "//", " ", "MatrixForm"}]], "Input",\

 CellChangeTimes->{{3.625404103933008*^9, 3.625404109130093*^9}, 
   3.6323317709961843`*^9},ExpressionUUID->"ec745215-33fe-493e-8d4b-\
8391ad038a98"],

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
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.6254041052702627`*^9, 3.625404109484057*^9}, 
   3.625408369668674*^9, 3.625415339736742*^9, 3.625587440013674*^9, 
   3.632331857322612*^9, 3.6943030886969213`*^9, 3.694305167143538*^9, 
   3.694306311614849*^9},ExpressionUUID->"d84414ec-b7a6-4261-8d6b-\
a463495fffb5"]
}, Open  ]],

Cell["\<\
Given control points p0, p1, p2, p3, the curve can be written\
\>", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.624627300200409*^9, 3.624627329887013*^9}, {3.624628931903573*^9, 
  3.6246289415075703`*^9}, {3.624635840486067*^9, 3.624635842623612*^9}, {
  3.6323129464497633`*^9, 
  3.6323129507248096`*^9}},ExpressionUUID->"1881ced0-40cf-4dbf-9928-\
dfc1eaca735e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"pb3", "[", "t", "]"}], ".", 
    RowBox[{"p2b", "[", "3", "]"}], ".", 
    RowBox[{"ppoints", "[", "3", "]"}]}], " ", "-", "  ", 
   RowBox[{
    RowBox[{"bb3", "[", "t", "]"}], ".", 
    RowBox[{"ppoints", "[", "3", "]"}]}]}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.6943051995151*^9, 
  3.694305217362174*^9}},ExpressionUUID->"dc5dfe5a-47b3-466d-b5c8-\
53591d35c00c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", "0"}], "}"}]], "Output",
 CellChangeTimes->{{3.694305206945386*^9, 3.6943052178809233`*^9}, 
   3.694306313139504*^9},ExpressionUUID->"0fb68118-253f-4c5b-a65a-\
ab6db66a2868"]
}, Open  ]],

Cell["\<\
And if we want the first and second derivative as well, we can write\
\>", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.624627300200409*^9, 3.624627329887013*^9}, {3.62463586412401*^9, 
  3.6246358645047626`*^9}, {3.624635975812467*^9, 
  3.624635986803726*^9}},ExpressionUUID->"4b9e527a-a1a3-449c-8950-\
a81bba361d74"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"dp", "[", "t_", "]"}], " ", ":=", " ", 
   RowBox[{"Evaluate", "[", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"D", "[", 
       RowBox[{
        RowBox[{"pb3", "[", "t", "]"}], " ", ",", " ", 
        RowBox[{"{", 
         RowBox[{"t", ",", " ", "i"}], "}"}]}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", " ", "0", ",", "2"}], "}"}]}], "]"}], "]"}]}], ";", 
  " ", 
  RowBox[{
   RowBox[{"dp", "[", "t", "]"}], " ", "//", " ", "MatrixForm"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.624636126248136*^9, 3.6246361382526283`*^9}, {
   3.624637220619931*^9, 3.6246372576185713`*^9}, 3.625312815175969*^9, {
   3.625587665527425*^9, 3.62558766723764*^9}, {3.6255885327911797`*^9, 
   3.625588535468409*^9}, {3.6943031933257103`*^9, 3.6943031970613337`*^9}, {
   3.694305618382083*^9, 3.6943056196940413`*^9}, {3.694305731823716*^9, 
   3.6943057335271263`*^9}},
 CellLabel->"In[16]:=",ExpressionUUID->"e945916c-5698-4a60-b7f5-2354b81989d9"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "t", 
      SuperscriptBox["t", "2"], 
      SuperscriptBox["t", "3"]},
     {"0", "1", 
      RowBox[{"2", " ", "t"}], 
      RowBox[{"3", " ", 
       SuperscriptBox["t", "2"]}]},
     {"0", "0", "2", 
      RowBox[{"6", " ", "t"}]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.694305237555518*^9, 3.694305621747294*^9, 3.6943057343536463`*^9, 
   3.694306314389962*^9, 3.694307444307274*^9, 3.694471419050254*^9, 
   3.694474179672057*^9, 3.694474218575923*^9, 3.694733759277233*^9, 
   3.694733798829218*^9, 3.725902157082966*^9, 3.7259050676714687`*^9, 
   3.7259246995946627`*^9, 3.727559964209465*^9, 3.727564519161313*^9, 
   3.727602289960775*^9, 3.727611496769099*^9, 3.7276274093984222`*^9, 
   3.727649209326927*^9, 3.727697720111726*^9, 3.727824651833186*^9, 
   3.7278722550036583`*^9, 3.727883732346435*^9, 3.7279575098082733`*^9, 
   3.727964575328848*^9, 3.727975058707151*^9, 3.730829067903036*^9, 
   3.7310192740426826`*^9, 3.733955101400217*^9, 3.7578530013982563`*^9, 
   3.7578547636511173`*^9, 3.757866864037702*^9, 3.75786708104624*^9, {
   3.7578671654855556`*^9, 3.757867190866809*^9}, 3.757867358413762*^9, 
   3.7578675757751226`*^9, 3.766414271955522*^9, 3.789393025498601*^9},
 CellLabel->
  "Out[16]//MatrixForm=",ExpressionUUID->"4d40b6a8-36e6-441c-a6b3-\
7542aca5bf7b"]
}, Open  ]],

Cell["\<\
The inflections happen when the speed and acceleration are colinear. Start \
from a rational curve, compute the first and second derivatives of its \
projection into the affine plane, and compute the cross product. This must be \
zero.\
\>", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.624627300200409*^9, 3.624627329887013*^9}, {3.624629131623295*^9, 
  3.624629156278982*^9}, {3.624629469202085*^9, 3.624629476047751*^9}, {
  3.6323127178593693`*^9, 3.6323127497867393`*^9}, {3.632312809581088*^9, 
  3.632312866034005*^9}},ExpressionUUID->"0232a7a7-380c-4ff9-9a24-\
74a74bd58942"],

Cell[BoxData[
 RowBox[{
  RowBox[{"curve", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"x", "[", "t", "]"}], ",", " ", 
    RowBox[{"y", "[", "t", "]"}], ",", " ", 
    RowBox[{"w", "[", "t", "]"}]}], "}"}]}]], "Input",
 CellChangeTimes->{{3.6246295057520742`*^9, 3.624629511368177*^9}, 
   3.624631270106202*^9, {3.6282486178942327`*^9, 
   3.628248619592821*^9}},ExpressionUUID->"20637017-3c1f-472a-baa3-\
bde1f7c54940"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Dot", "[", 
   RowBox[{
    RowBox[{"Cross", "[", 
     RowBox[{"D", "[", 
      RowBox[{
       RowBox[{"p2e", "[", 
        RowBox[{"curve", "[", "t", "]"}], "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"t", ",", "1"}], "}"}]}], "]"}], "]"}], ",", 
    RowBox[{"D", "[", 
     RowBox[{
      RowBox[{"p2e", "[", 
       RowBox[{"curve", "[", "t", "]"}], "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"t", ",", "2"}], "}"}]}], "]"}]}], "]"}], " ", "//", " ", 
  "Expand"}]], "Input",
 CellChangeTimes->{{3.624629478070526*^9, 3.6246295226174793`*^9}, {
   3.624630080182042*^9, 3.624630131065096*^9}, {3.6282486236439323`*^9, 
   3.628248626300181*^9}, 
   3.632312664974511*^9},ExpressionUUID->"f8d07c1b-44aa-4e17-b9c3-\
866bb297c482"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   FractionBox[
    RowBox[{
     RowBox[{"y", "[", "t", "]"}], " ", 
     RowBox[{
      SuperscriptBox["x", "\[Prime]",
       MultilineFunction->None], "[", "t", "]"}], " ", 
     RowBox[{
      SuperscriptBox["w", "\[Prime]\[Prime]",
       MultilineFunction->None], "[", "t", "]"}]}], 
    SuperscriptBox[
     RowBox[{"w", "[", "t", "]"}], "3"]]}], "+", 
  FractionBox[
   RowBox[{
    RowBox[{"x", "[", "t", "]"}], " ", 
    RowBox[{
     SuperscriptBox["y", "\[Prime]",
      MultilineFunction->None], "[", "t", "]"}], " ", 
    RowBox[{
     SuperscriptBox["w", "\[Prime]\[Prime]",
      MultilineFunction->None], "[", "t", "]"}]}], 
   SuperscriptBox[
    RowBox[{"w", "[", "t", "]"}], "3"]], "+", 
  FractionBox[
   RowBox[{
    RowBox[{"y", "[", "t", "]"}], " ", 
    RowBox[{
     SuperscriptBox["w", "\[Prime]",
      MultilineFunction->None], "[", "t", "]"}], " ", 
    RowBox[{
     SuperscriptBox["x", "\[Prime]\[Prime]",
      MultilineFunction->None], "[", "t", "]"}]}], 
   SuperscriptBox[
    RowBox[{"w", "[", "t", "]"}], "3"]], "-", 
  FractionBox[
   RowBox[{
    RowBox[{
     SuperscriptBox["y", "\[Prime]",
      MultilineFunction->None], "[", "t", "]"}], " ", 
    RowBox[{
     SuperscriptBox["x", "\[Prime]\[Prime]",
      MultilineFunction->None], "[", "t", "]"}]}], 
   SuperscriptBox[
    RowBox[{"w", "[", "t", "]"}], "2"]], "-", 
  FractionBox[
   RowBox[{
    RowBox[{"x", "[", "t", "]"}], " ", 
    RowBox[{
     SuperscriptBox["w", "\[Prime]",
      MultilineFunction->None], "[", "t", "]"}], " ", 
    RowBox[{
     SuperscriptBox["y", "\[Prime]\[Prime]",
      MultilineFunction->None], "[", "t", "]"}]}], 
   SuperscriptBox[
    RowBox[{"w", "[", "t", "]"}], "3"]], "+", 
  FractionBox[
   RowBox[{
    RowBox[{
     SuperscriptBox["x", "\[Prime]",
      MultilineFunction->None], "[", "t", "]"}], " ", 
    RowBox[{
     SuperscriptBox["y", "\[Prime]\[Prime]",
      MultilineFunction->None], "[", "t", "]"}]}], 
   SuperscriptBox[
    RowBox[{"w", "[", "t", "]"}], "2"]]}]], "Output",
 CellChangeTimes->{
  3.624629523438809*^9, {3.624630103199943*^9, 3.624630131415728*^9}, 
   3.624635560444529*^9, 3.628248628621698*^9, 3.6282486655973663`*^9, 
   3.632312666333271*^9, 3.694303011558864*^9, 
   3.694306307735641*^9},ExpressionUUID->"a6152f93-b3be-4514-99db-\
8dadf91dab14"]
}, Open  ]],

Cell["\<\
This is the same expression as (a multiple of) the determinant of the matrix \
that contains a projective point, the projective speed at that point, and the \
projective acceleration at that point.\
\>", "Text",
 CellChangeTimes->{{3.6323127547658787`*^9, 3.632312787756879*^9}, {
  3.632312871268009*^9, 3.6323129274934473`*^9}, {3.694303036805636*^9, 
  3.6943030383893414`*^9}, {3.725902176862905*^9, 
  3.725902185354517*^9}},ExpressionUUID->"4a24fb55-4f02-419f-a463-\
292640f49e68"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Dot", "[", 
     RowBox[{
      RowBox[{"Cross", "[", 
       RowBox[{"D", "[", 
        RowBox[{
         RowBox[{"p2e", "[", 
          RowBox[{"curve", "[", "t", "]"}], "]"}], ",", " ", 
         RowBox[{"{", 
          RowBox[{"t", ",", "1"}], "}"}]}], "]"}], "]"}], ",", 
      RowBox[{"D", "[", 
       RowBox[{
        RowBox[{"p2e", "[", 
         RowBox[{"curve", "[", "t", "]"}], "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"t", ",", "2"}], "}"}]}], "]"}]}], "]"}], " ", 
    RowBox[{
     RowBox[{"w", "[", "t", "]"}], "^", "3"}]}], " ", "-", " ", 
   RowBox[{"Det", "[", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"D", "[", 
       RowBox[{
        RowBox[{"curve", "[", "t", "]"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"t", ",", " ", "i"}], "}"}]}], "]"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"i", ",", " ", "0", ",", " ", "2"}], "}"}]}], "]"}], "]"}]}], 
  " ", "//", " ", "Simplify"}]], "Input",
 CellChangeTimes->{{3.624630182004654*^9, 3.624630216453333*^9}, {
  3.6282486315872183`*^9, 3.628248640678286*^9}, {3.628248677195589*^9, 
  3.628248677511743*^9}},ExpressionUUID->"95bb9099-e30b-45b2-ab80-\
860dfb2279a9"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{
  3.6246302168157682`*^9, 3.6246355633528843`*^9, {3.628248642046962*^9, 
   3.6282486778675337`*^9}, 3.632312683994131*^9, 
   3.6943063090499363`*^9},ExpressionUUID->"21ff825c-550d-4c04-81d7-\
2aea3ffe8b6c"]
}, Open  ]],

Cell["So the inflection condition is", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.624627300200409*^9, 3.624627329887013*^9}, {3.624629131623295*^9, 
  3.624629156278982*^9}, {3.624629219812546*^9, 3.624629232489477*^9}, {
  3.624637316106635*^9, 3.624637318871819*^9}, {3.632312980234671*^9, 
  3.632312980920012*^9}},ExpressionUUID->"7b15e930-a506-4dce-9595-\
cb00c9b79557"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Det", "[", 
   RowBox[{
    RowBox[{"dp", "[", "t", "]"}], ".", 
    RowBox[{"p2b", "[", "3", "]"}], ".", 
    RowBox[{"ppoints", "[", "3", "]"}]}], "]"}], " ", "\[Equal]", " ", 
  "0"}]], "Input",
 CellChangeTimes->{{3.625312580922978*^9, 3.625312619570743*^9}, {
   3.694303226041586*^9, 3.694303250819188*^9}, {3.694303287379423*^9, 
   3.694303291550652*^9}, 3.6943056425289307`*^9, 3.6943057505464582`*^9, {
   3.725902948420265*^9, 3.725902957612401*^9}, {3.725908960294991*^9, 
   3.725908966141533*^9}, 
   3.7259090618359833`*^9},ExpressionUUID->"f7f53448-15da-4f57-9ed5-\
a6ad975875dc"],

Cell[BoxData[
 RowBox[{
  RowBox[{"18", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "w2"}], " ", "x1", " ", "y0"}], "+", 
     RowBox[{"3", " ", "t", " ", "w2", " ", "x1", " ", "y0"}], "-", 
     RowBox[{"3", " ", 
      SuperscriptBox["t", "2"], " ", "w2", " ", "x1", " ", "y0"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w2", " ", "x1", " ", "y0"}], "-", 
     RowBox[{"t", " ", "w3", " ", "x1", " ", "y0"}], "+", 
     RowBox[{"2", " ", 
      SuperscriptBox["t", "2"], " ", "w3", " ", "x1", " ", "y0"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w3", " ", "x1", " ", "y0"}], "+", 
     RowBox[{"w1", " ", "x2", " ", "y0"}], "-", 
     RowBox[{"3", " ", "t", " ", "w1", " ", "x2", " ", "y0"}], "+", 
     RowBox[{"3", " ", 
      SuperscriptBox["t", "2"], " ", "w1", " ", "x2", " ", "y0"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w1", " ", "x2", " ", "y0"}], "-", 
     RowBox[{
      SuperscriptBox["t", "2"], " ", "w3", " ", "x2", " ", "y0"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w3", " ", "x2", " ", "y0"}], "+", 
     RowBox[{"t", " ", "w1", " ", "x3", " ", "y0"}], "-", 
     RowBox[{"2", " ", 
      SuperscriptBox["t", "2"], " ", "w1", " ", "x3", " ", "y0"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w1", " ", "x3", " ", "y0"}], "+", 
     RowBox[{
      SuperscriptBox["t", "2"], " ", "w2", " ", "x3", " ", "y0"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w2", " ", "x3", " ", "y0"}], "+", 
     RowBox[{"w2", " ", "x0", " ", "y1"}], "-", 
     RowBox[{"3", " ", "t", " ", "w2", " ", "x0", " ", "y1"}], "+", 
     RowBox[{"3", " ", 
      SuperscriptBox["t", "2"], " ", "w2", " ", "x0", " ", "y1"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w2", " ", "x0", " ", "y1"}], "+", 
     RowBox[{"t", " ", "w3", " ", "x0", " ", "y1"}], "-", 
     RowBox[{"2", " ", 
      SuperscriptBox["t", "2"], " ", "w3", " ", "x0", " ", "y1"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w3", " ", "x0", " ", "y1"}], "-", 
     RowBox[{"w0", " ", "x2", " ", "y1"}], "+", 
     RowBox[{"3", " ", "t", " ", "w0", " ", "x2", " ", "y1"}], "-", 
     RowBox[{"3", " ", 
      SuperscriptBox["t", "2"], " ", "w0", " ", "x2", " ", "y1"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w0", " ", "x2", " ", "y1"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w3", " ", "x2", " ", "y1"}], "-", 
     RowBox[{"t", " ", "w0", " ", "x3", " ", "y1"}], "+", 
     RowBox[{"2", " ", 
      SuperscriptBox["t", "2"], " ", "w0", " ", "x3", " ", "y1"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w0", " ", "x3", " ", "y1"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w2", " ", "x3", " ", "y1"}], "-", 
     RowBox[{"w1", " ", "x0", " ", "y2"}], "+", 
     RowBox[{"3", " ", "t", " ", "w1", " ", "x0", " ", "y2"}], "-", 
     RowBox[{"3", " ", 
      SuperscriptBox["t", "2"], " ", "w1", " ", "x0", " ", "y2"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w1", " ", "x0", " ", "y2"}], "+", 
     RowBox[{
      SuperscriptBox["t", "2"], " ", "w3", " ", "x0", " ", "y2"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w3", " ", "x0", " ", "y2"}], "+", 
     RowBox[{"w0", " ", "x1", " ", "y2"}], "-", 
     RowBox[{"3", " ", "t", " ", "w0", " ", "x1", " ", "y2"}], "+", 
     RowBox[{"3", " ", 
      SuperscriptBox["t", "2"], " ", "w0", " ", "x1", " ", "y2"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w0", " ", "x1", " ", "y2"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w3", " ", "x1", " ", "y2"}], "-", 
     RowBox[{
      SuperscriptBox["t", "2"], " ", "w0", " ", "x3", " ", "y2"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w0", " ", "x3", " ", "y2"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w1", " ", "x3", " ", "y2"}], "-", 
     RowBox[{"t", " ", "w1", " ", "x0", " ", "y3"}], "+", 
     RowBox[{"2", " ", 
      SuperscriptBox["t", "2"], " ", "w1", " ", "x0", " ", "y3"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w1", " ", "x0", " ", "y3"}], "-", 
     RowBox[{
      SuperscriptBox["t", "2"], " ", "w2", " ", "x0", " ", "y3"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w2", " ", "x0", " ", "y3"}], "+", 
     RowBox[{"t", " ", "w0", " ", "x1", " ", "y3"}], "-", 
     RowBox[{"2", " ", 
      SuperscriptBox["t", "2"], " ", "w0", " ", "x1", " ", "y3"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w0", " ", "x1", " ", "y3"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w2", " ", "x1", " ", "y3"}], "+", 
     RowBox[{
      SuperscriptBox["t", "2"], " ", "w0", " ", "x2", " ", "y3"}], "-", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w0", " ", "x2", " ", "y3"}], "+", 
     RowBox[{
      SuperscriptBox["t", "3"], " ", "w1", " ", "x2", " ", "y3"}]}], ")"}]}], 
  "\[Equal]", "0"}]], "Output",
 CellChangeTimes->{
  3.694305646207264*^9, 3.6943057524446983`*^9, 3.6943063164708967`*^9, 
   3.725902960348475*^9, 3.7259089667547283`*^9, {3.725909047492729*^9, 
   3.7259090640876904`*^9}},ExpressionUUID->"bab0b551-27d0-405c-b67d-\
8dc49e74157d"]
}, Open  ]],

Cell["\<\
This looks terrible. 

It is much better to use the epsilon-delta rule to rewrite this as 

Det[A . B] = Cross[A] . Cross[B]\
\>", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
   3.624627300200409*^9, 3.624627329887013*^9}, {3.624629131623295*^9, 
   3.624629156278982*^9}, {3.624629219812546*^9, 3.624629232489477*^9}, {
   3.632312996512845*^9, 3.6323130047475357`*^9}, {3.632318433542553*^9, 
   3.632318481432536*^9}, {3.632318555401775*^9, 3.632318555581641*^9}, 
   3.725902402116845*^9},ExpressionUUID->"1b651ec1-8b0f-442f-81f3-\
35db5391563c"],

Cell["They are equivalent:", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.624627300200409*^9, 3.624627329887013*^9}, {3.624629131623295*^9, 
  3.624629156278982*^9}, {3.624629219812546*^9, 3.624629232489477*^9}, {
  3.624629288493771*^9, 3.624629295411364*^9}, {3.624630276852923*^9, 
  3.624630277548029*^9}},ExpressionUUID->"f3da6ec5-9876-48da-8783-\
c0633e372691"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Apply", "[", 
     RowBox[{"Cross", ",", 
      RowBox[{"dp", "[", "t", "]"}]}], "]"}], ".", 
    RowBox[{"Apply", "[", 
     RowBox[{"Cross", ",", 
      RowBox[{"Transpose", "[", 
       RowBox[{
        RowBox[{"p2b", "[", "3", "]"}], ".", 
        RowBox[{"ppoints", "[", "3", "]"}]}], "]"}]}], "]"}]}], "   ", "-", 
   " ", 
   RowBox[{"Det", "[", " ", 
    RowBox[{
     RowBox[{"dp", "[", "t", "]"}], ".", 
     RowBox[{"p2b", "[", "3", "]"}], ".", 
     RowBox[{"ppoints", "[", "3", "]"}]}], "]"}]}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.624629305877102*^9, 3.6246293146181383`*^9}, {
   3.6246355244088078`*^9, 3.62463553221332*^9}, {3.624636204170165*^9, 
   3.624636209930294*^9}, 3.624636241441744*^9, {3.6246364464393167`*^9, 
   3.624636451051836*^9}, {3.624637335303279*^9, 3.624637340487884*^9}, {
   3.6253114779305353`*^9, 3.6253114856702547`*^9}, {3.625587735131205*^9, 
   3.6255877442078943`*^9}, {3.632318526468115*^9, 3.6323185295390778`*^9}, {
   3.632331780203113*^9, 3.632331780956064*^9}, {3.694303353567482*^9, 
   3.694303443812025*^9}, {3.694303490491377*^9, 3.6943034953624372`*^9}, {
   3.694304902593371*^9, 3.694304918054274*^9}, {3.694305435845757*^9, 
   3.6943054501884727`*^9}, {3.6943056610619373`*^9, 3.694305697678782*^9}, {
   3.725902974582467*^9, 3.72590300672822*^9}, {3.725908984015058*^9, 
   3.725909008686482*^9}, {3.725909083566053*^9, 
   3.725909093757546*^9}},ExpressionUUID->"caba9759-9927-46ce-a8e4-\
3e4b93047fea"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{
  3.624629314945589*^9, 3.624635535358057*^9, 3.624635605199401*^9, 
   3.624636212588851*^9, 3.624636242725211*^9, 3.624636452202148*^9, 
   3.6246373433082314`*^9, 3.625311489314942*^9, 3.6255877457252007`*^9, {
   3.632318523301502*^9, 3.632318533361384*^9}, 3.69430338255923*^9, 
   3.694303445480514*^9, 3.694303496499107*^9, {3.6943049074651337`*^9, 
   3.694304918945956*^9}, 3.69430545193976*^9, {3.694305657762149*^9, 
   3.694305678505354*^9}, 3.694305710442271*^9, 3.6943057610888023`*^9, 
   3.69430632185504*^9, 3.725903008748209*^9, {3.725908998210207*^9, 
   3.725909010205546*^9}, {3.725909090904377*^9, 
   3.725909094161577*^9}},ExpressionUUID->"e678839c-8078-408f-87f4-\
21193722d2da"]
}, Open  ]],

Cell["\<\
Given a collection of (n-1)  n-vectors, the Cross of the collection gives you \
an n-vector perpendicular to the other n-1 n-vectors.\
\>", "Text",
 CellChangeTimes->{{3.632318598268134*^9, 
  3.63231868036799*^9}},ExpressionUUID->"15bc06ef-9b6e-4ff4-a458-\
f44dbad2b93d"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Apply", "[", 
  RowBox[{"Cross", ",", 
   RowBox[{"dp", "[", "t", "]"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.624622903447987*^9, 3.624622922494557*^9}, {
   3.6246229561670103`*^9, 3.624622962420661*^9}, {3.6246272444583263`*^9, 
   3.624627244714674*^9}, 3.624636260037621*^9, 3.624637358320445*^9, {
   3.694303508848179*^9, 3.694303511680108*^9}, {3.6943054567710752`*^9, 
   3.694305456804414*^9}, {3.694305715982436*^9, 3.694305716686741*^9}, {
   3.72590302156418*^9, 3.72590302161028*^9}, {3.725909098734146*^9, 
   3.7259091026927633`*^9}},ExpressionUUID->"cfedfd90-a1cb-48d0-8219-\
4ae0eea4b02c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"-", "2"}], " ", 
    SuperscriptBox["t", "3"]}], ",", 
   RowBox[{"6", " ", 
    SuperscriptBox["t", "2"]}], ",", 
   RowBox[{
    RowBox[{"-", "6"}], " ", "t"}], ",", "2"}], "}"}]], "Output",
 CellChangeTimes->{
  3.694304139204482*^9, {3.6943054578347483`*^9, 3.69430548747261*^9}, 
   3.6943057175799217`*^9, 3.694305766615657*^9, 3.6943058626269913`*^9, 
   3.694306324812705*^9, 3.7259030226247168`*^9, {3.725909099099132*^9, 
   3.725909114563163*^9}},ExpressionUUID->"fc132c53-7dc3-4213-a2de-\
28c15ac46291"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"%", " ", "/", 
   RowBox[{"(", 
    RowBox[{"-", "2"}], ")"}]}], " ", "//", " ", "Simplify"}]], "Input",
 CellChangeTimes->{{3.624623052684477*^9, 3.624623059912875*^9}, {
   3.624627253019045*^9, 3.624627254335784*^9}, 3.624636266256545*^9, {
   3.69430547711605*^9, 3.6943054903646383`*^9}, {3.694305860270544*^9, 
   3.694305860559825*^9}, {3.725903025498865*^9, 3.72590302600289*^9}, {
   3.725909107230083*^9, 
   3.725909111181314*^9}},ExpressionUUID->"9980fec4-c760-46d6-bd86-\
7ffdfb2f695c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SuperscriptBox["t", "3"], ",", 
   RowBox[{
    RowBox[{"-", "3"}], " ", 
    SuperscriptBox["t", "2"]}], ",", 
   RowBox[{"3", " ", "t"}], ",", 
   RowBox[{"-", "1"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.69430586343581*^9, 3.694306326130576*^9, 3.725903026348467*^9, {
   3.725909107693667*^9, 
   3.7259091153398438`*^9}},ExpressionUUID->"0115ccae-7201-49db-b0bb-\
fd8bee074078"]
}, Open  ]],

Cell["\<\
So this is a vector perpendicular to the Bernstein basis, its first \
derivative, and its second derivative\
\>", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.624627268644024*^9, 3.624627273952292*^9}, {3.624627337088922*^9, 
  3.624627386339875*^9}, {3.6246362909383307`*^9, 3.624636295121688*^9}, {
  3.624636811586606*^9, 3.624636816289913*^9}, {3.6253115127355433`*^9, 
  3.625311527641512*^9}, {3.632318684193709*^9, 3.632318687511945*^9}, {
  3.725905160068612*^9, 
  3.725905160894782*^9}},ExpressionUUID->"f8a6fc08-9e2d-4fae-a113-\
27940315d278"],

Cell[BoxData[
 RowBox[{
  RowBox[{"crosstmatrixp", "[", "t_", "]"}], " ", ":=", " ", 
  RowBox[{"{", 
   RowBox[{
    SuperscriptBox["t", "3"], ",", 
    RowBox[{
     RowBox[{"-", "3"}], " ", 
     SuperscriptBox["t", "2"]}], ",", 
    RowBox[{"3", " ", "t"}], ",", 
    RowBox[{"-", "1"}]}], "}"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.6246231053725777`*^9, 3.62462310624086*^9}, 
   3.62462315107446*^9, {3.624626288084065*^9, 3.6246263196382713`*^9}, 
   3.624636282673037*^9, 3.725903044008719*^9, 3.725909124671399*^9, 
   3.73082984305193*^9},
 CellLabel->"In[17]:=",ExpressionUUID->"0de34b2c-663d-4b8b-a9d1-b24424ca74e1"],

Cell["\<\
And this is a vector perpendicular to all control point coordinates in the \
power basis\
\>", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.624627268644024*^9, 3.624627273952292*^9}, {3.624627337088922*^9, 
  3.624627386339875*^9}, {3.624628560337134*^9, 3.624628563844886*^9}, {
  3.6246367600978107`*^9, 3.624636782652459*^9}, {3.632318691831994*^9, 
  3.632318695150235*^9}, {3.7259024255096617`*^9, 
  3.725902426423176*^9}},ExpressionUUID->"4cb411e0-0682-47a8-ace8-\
db30909ab158"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.624626139375463*^9, 3.62462619322294*^9}, {
   3.624626235217763*^9, 3.624626236140121*^9}, {3.624626305092184*^9, 
   3.6246263244332*^9}, {3.624627566512486*^9, 3.624627582508123*^9}, 
   3.62463631404958*^9, 3.624636481742187*^9, {3.624637373463726*^9, 
   3.624637392351576*^9}, {3.625311535486609*^9, 3.625311546555278*^9}, {
   3.6253115775374413`*^9, 3.625311632943769*^9}, {3.6255877724922657`*^9, 
   3.6255877729209347`*^9}, {3.6323187662996063`*^9, 
   3.6323187725973663`*^9}, {3.632432727749424*^9, 3.63243273139333*^9}, {
   3.632432838292769*^9, 3.632432838381956*^9}, 3.632433038466045*^9, {
   3.6943035323624573`*^9, 3.694303543610878*^9}, {3.694303576739272*^9, 
   3.6943035904992847`*^9}, {3.694304348547592*^9, 3.69430437100051*^9}, {
   3.725903052841029*^9, 3.7259030541189003`*^9}, {3.725909139687263*^9, 
   3.725909139942202*^9}, 3.730829770956026*^9, 3.730830078339095*^9},
 CellLabel->"In[18]:=",ExpressionUUID->"66ce2925-706e-4885-a645-752d284fb0eb"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.627825196828309*^9, 3.627825227776699*^9}, {
   3.6323187859521027`*^9, 3.6323187929826803`*^9}, {3.632432733857235*^9, 
   3.632432739909893*^9}, {3.694303602458084*^9, 3.6943036263475122`*^9}, {
   3.694304392851136*^9, 3.6943044052252893`*^9}, {3.6943044964039097`*^9, 
   3.694304500827879*^9}, 3.725903065250888*^9, {3.7259091491828213`*^9, 
   3.725909157981089*^9}, {3.730829776627324*^9, 3.730829797102645*^9}, {
   3.730830081698048*^9, 3.730830086901813*^9}},
 CellLabel->"In[19]:=",ExpressionUUID->"1fb71b66-e0bf-48c9-9893-638f2c629363"],

Cell["\<\
Let' s look at the the control points coordinates in the integral cubic case \
when we change to the power basis\
\>", "Text",
 CellChangeTimes->{{3.6246368840298843`*^9, 3.624636909342594*^9}, {
   3.632318835372129*^9, 3.632318870944645*^9}, 3.6943036611630163`*^9, {
   3.7259052829224*^9, 3.725905291450494*^9}, {3.7259091790929117`*^9, 
   3.7259091838767967`*^9}},ExpressionUUID->"623bfb9c-6eaa-428c-a19d-\
b6475f381a40"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"p2b", "[", "3", "]"}], ".", 
    RowBox[{"ppoints", "[", "3", "]"}]}], " ", "/.", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"w0", "\[Rule]", "1"}], ",", 
     RowBox[{"w1", "\[Rule]", "1"}], ",", 
     RowBox[{"w2", "\[Rule]", " ", "1"}], ",", " ", 
     RowBox[{"w3", "\[Rule]", "1"}]}], "}"}]}], "//", " ", 
  "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.694305880619082*^9, 3.694305918760507*^9}, {
   3.6943059529292088`*^9, 3.694306006377633*^9}, {3.694306084833832*^9, 
   3.694306088114072*^9}, 3.725903114583853*^9, {3.7259091874852533`*^9, 
   3.7259091916451473`*^9}},ExpressionUUID->"af78b0fc-08f0-4b9e-ac09-\
383e4e25ba0b"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"x0", "y0", "1"},
     {
      RowBox[{
       RowBox[{
        RowBox[{"-", "3"}], " ", "x0"}], "+", 
       RowBox[{"3", " ", "x1"}]}], 
      RowBox[{
       RowBox[{
        RowBox[{"-", "3"}], " ", "y0"}], "+", 
       RowBox[{"3", " ", "y1"}]}], "0"},
     {
      RowBox[{
       RowBox[{"3", " ", "x0"}], "-", 
       RowBox[{"6", " ", "x1"}], "+", 
       RowBox[{"3", " ", "x2"}]}], 
      RowBox[{
       RowBox[{"3", " ", "y0"}], "-", 
       RowBox[{"6", " ", "y1"}], "+", 
       RowBox[{"3", " ", "y2"}]}], "0"},
     {
      RowBox[{
       RowBox[{"-", "x0"}], "+", 
       RowBox[{"3", " ", "x1"}], "-", 
       RowBox[{"3", " ", "x2"}], "+", "x3"}], 
      RowBox[{
       RowBox[{"-", "y0"}], "+", 
       RowBox[{"3", " ", "y1"}], "-", 
       RowBox[{"3", " ", "y2"}], "+", "y3"}], "0"}
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
 CellChangeTimes->{{3.694305911629253*^9, 3.694305919102953*^9}, 
   3.694305957773327*^9, {3.6943059954446087`*^9, 3.6943060070303164`*^9}, 
   3.694306088986061*^9, 3.6943062509367123`*^9, 3.694306348685903*^9, 
   3.725903116739667*^9, 
   3.725909192621724*^9},ExpressionUUID->"d19cbba7-583d-42ee-9528-\
be761ccd08b3"]
}, Open  ]],

Cell["\<\
So if {d1, d2, d3, d4} is a vector perpendicular to them all, then we know \
that d1 == 0. When we compute the dot product with the vector perpendicular \
to the power basis and its first and second derivatives, we get\
\>", "Text",
 CellChangeTimes->{{3.624636916157653*^9, 3.6246369735212297`*^9}, {
  3.6323188476908007`*^9, 3.632318913942623*^9}, {3.694303904733395*^9, 
  3.694303975797987*^9}, {3.694304545547139*^9, 3.694304547455532*^9}, {
  3.6943063623159113`*^9, 3.6943063625237617`*^9}, {3.725903137992269*^9, 
  3.7259031400001*^9}, {3.725905247843782*^9, 3.725905248755521*^9}, {
  3.725909202773048*^9, 
  3.725909216092978*^9}},ExpressionUUID->"1152cf2c-bbc2-4e72-b396-\
36054d39cd8e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{"d1", ",", " ", "d2", ",", " ", "d3", ",", " ", "d4"}], "}"}], ".",
   " ", 
  RowBox[{"crosstmatrixp", "[", "t", "]"}], " "}]], "Input",
 CellChangeTimes->{{3.624623313880825*^9, 3.624623394052286*^9}, {
   3.6246264157918587`*^9, 3.624626464743442*^9}, {3.624627916442422*^9, 
   3.624627920514654*^9}, {3.6246283516840267`*^9, 3.624628360086067*^9}, {
   3.624636981047534*^9, 3.62463698181207*^9}, {3.694303866981771*^9, 
   3.694303870197836*^9}, {3.694304011856221*^9, 3.694304014951215*^9}, {
   3.694304779847522*^9, 3.6943047803980637`*^9}, {3.725903156612629*^9, 
   3.725903162473295*^9}, 3.725903192894432*^9, 
   3.7308298806266317`*^9},ExpressionUUID->"ff3bc840-567e-4df2-84a1-\
78aabe74d999"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "d4"}], "+", 
  RowBox[{"3", " ", "d3", " ", "t"}], "-", 
  RowBox[{"3", " ", "d2", " ", 
   SuperscriptBox["t", "2"]}], "+", 
  RowBox[{"d1", " ", 
   SuperscriptBox["t", "3"]}]}]], "Output",
 CellChangeTimes->{{3.6246233631781063`*^9, 3.62462339522202*^9}, {
   3.624626419296093*^9, 3.624626465248045*^9}, 3.624627920952035*^9, 
   3.624628360787841*^9, 3.62463648911069*^9, 3.6246369829043694`*^9, 
   3.6247225262257757`*^9, 3.625311675642611*^9, 3.6255878022394743`*^9, 
   3.694304016596446*^9, 3.694304781147324*^9, 3.694306439178246*^9, {
   3.725903151073744*^9, 3.725903162773493*^9}, 3.7259031936097527`*^9, {
   3.725909220913024*^9, 
   3.725909229472711*^9}},ExpressionUUID->"a7984716-1110-4a6c-8004-\
d13468d31a8b"]
}, Open  ]],

Cell["\<\
So in the case of integral cubics, the polynomial is a quadratic.\
\>", "Text",
 CellChangeTimes->{{3.72590526080245*^9, 3.725905312881503*^9}, {
  3.725909239524991*^9, 
  3.725909242437269*^9}},ExpressionUUID->"94f468aa-b45b-46c1-991f-\
45d7995221ad"],

Cell["Here is the inflection polynomial", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.624627268644024*^9, 3.624627273952292*^9}, {3.624627337088922*^9, 
  3.624627386339875*^9}, {3.624628560337134*^9, 3.624628563844886*^9}, {
  3.624636989406992*^9, 3.624636990349947*^9}, {3.625587811088955*^9, 
  3.62558782243983*^9}, {3.632318920962798*^9, 3.6323189508766603`*^9}, {
  3.632319143749195*^9, 3.632319144547119*^9}, {3.725905316570457*^9, 
  3.725905320608899*^9}},ExpressionUUID->"533255aa-95c9-4cc8-b231-\
ce209821278c"],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionpolyp", "[", 
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
   RowBox[{"crosstmatrixp", "[", "t", "]"}], ".", 
   RowBox[{"crosspmatrix", "[", "m", "]"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.624626242844881*^9, 3.624626267124757*^9}, {
   3.624626361523507*^9, 3.62462639978343*^9}, {3.624626479311077*^9, 
   3.624626611027046*^9}, {3.624627900221631*^9, 3.624627903854163*^9}, {
   3.6246279489823303`*^9, 3.624627962447043*^9}, 3.624628372420541*^9, {
   3.624628788108274*^9, 3.624628820303678*^9}, {3.624637002278943*^9, 
   3.624637014139344*^9}, {3.624637413961741*^9, 3.624637418551787*^9}, {
   3.6253116826585407`*^9, 3.6253117409902287`*^9}, {3.627825182057341*^9, 
   3.627825182664125*^9}, 3.632318975384108*^9, {3.632432702110032*^9, 
   3.6324327102662163`*^9}, {3.662987220966526*^9, 3.662987303511965*^9}, 
   3.694306472656045*^9, {3.7259053868162613`*^9, 3.7259053952074337`*^9}, {
   3.730829809657699*^9, 3.730829814900054*^9}, 3.730829884959928*^9, 
   3.7308301050920887`*^9},
 CellLabel->"In[20]:=",ExpressionUUID->"cd105d7a-a0fe-43b6-8346-bb6d3546c2cf"],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionpolyp", "[", 
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
   RowBox[{"crosstmatrixp", "[", "t", "]"}], ".", 
   RowBox[{"crosspmatrix", "[", "m", "]"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.66298729076252*^9, 3.662987297996119*^9}, 
   3.694306464463996*^9, 3.72590540351239*^9, {3.730829812655799*^9, 
   3.730829816498056*^9}, 3.7308298868848963`*^9, 3.730830106923147*^9},
 CellLabel->"In[21]:=",ExpressionUUID->"a53083c2-fac8-4edf-8fa9-7d9e35500b36"],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionsp", "[", 
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
          RowBox[{"inflectionpolyp", "[", 
           RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", "0"}], ",", 
         " ", "t", ",", " ", "Reals"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True,
 CellChangeTimes->{{3.662987531573202*^9, 3.6629875315939083`*^9}, 
   3.6943064872376537`*^9, {3.730829898308526*^9, 3.730829914452981*^9}},
 CellLabel->"In[22]:=",ExpressionUUID->"36497b00-548f-447a-b9d0-4931020fc6e8"],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionsp", "[", 
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
          RowBox[{"inflectionpolyp", "[", 
           RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", "0"}], ",", 
         " ", "t", ",", " ", "Reals"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True,
 CellChangeTimes->{{3.6279189684765177`*^9, 3.6279189771585913`*^9}, 
   3.632318981244285*^9, {3.632416836446454*^9, 3.632416837570549*^9}, 
   3.632432717322267*^9, {3.632432748122875*^9, 3.632432748381591*^9}, {
   3.662987338215919*^9, 3.662987346047377*^9}, 3.662987521685961*^9, 
   3.6943064962456017`*^9, {3.7308298996571712`*^9, 3.730829916225997*^9}},
 CellLabel->"In[23]:=",ExpressionUUID->"897d623c-8f3d-4586-b919-ec27f76ec233"],

Cell["\<\
Of course, we can perform these computations directly in the Bernstein basis, \
to avoid transforming coefficients to the Power basis. \
\>", "Text",
 CellChangeTimes->{{3.727559994749732*^9, 3.7275601129623117`*^9}, {
  3.7275601501623507`*^9, 3.727560150818179*^9}, {3.727560250491933*^9, 
  3.727560251898368*^9}, {3.727560338170495*^9, 3.727560338746282*^9}, {
  3.727560419610559*^9, 3.727560419714381*^9}, {3.727649929379304*^9, 
  3.727649939826097*^9}},ExpressionUUID->"20beae21-fb6c-4915-a783-\
51010c36cd06"],

Cell["\<\
Note that, if a vector {b3, -3 b2, 3 b1, -b0} is perpendicular to the three \
columns of the Bernstein-basis control-point matrix,\
\>", "Text",
 CellChangeTimes->{{3.727649942417663*^9, 3.7276499609747353`*^9}, {
  3.727910949805252*^9, 3.7279109597411833`*^9}, {3.727916983273466*^9, 
  3.727916988688253*^9}, {3.730829561787367*^9, 3.730829563334898*^9}, {
  3.7664152168048983`*^9, 
  3.766415245592662*^9}},ExpressionUUID->"07d4976f-42e5-4c9a-9e3e-\
8fc3694818f8"],

Cell["\<\
Then that vector {b3, -3 b2, 3 b1, -b0} multiplied by b2p[3] is perpendicular \
to the three columns of the Power-basis control-point matrix because\
\>", "Text",
 CellChangeTimes->{{3.727560166069642*^9, 3.727560296507922*^9}, {
   3.727560345995117*^9, 3.727560371338361*^9}, {3.727910963573412*^9, 
   3.727910966229289*^9}, {3.7279169980321827`*^9, 3.7279170015283537`*^9}, {
   3.730829569007156*^9, 3.730829570488151*^9}, 3.7664152873787737`*^9, {
   3.766416703959283*^9, 3.766416732812723*^9}, 
   3.76641686275141*^9},ExpressionUUID->"436c53eb-5439-49af-a9b6-\
ec69bd1753f1"],

Cell[BoxData[
 RowBox[{" ", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"b3", ",", 
        RowBox[{
         RowBox[{"-", "3"}], " ", "b2"}], ",", 
        RowBox[{"3", " ", "b1"}], ",", 
        RowBox[{"-", "b0"}]}], "}"}], ".", 
      RowBox[{"b2p", "[", "3", "]"}]}], ")"}], ".", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p2b", "[", "3", "]"}], ".", 
      RowBox[{"ppoints", "[", "3", "]"}]}], ")"}]}], " ", "==", " ", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"b3", ",", " ", 
      RowBox[{
       RowBox[{"-", "3"}], " ", "b2"}], ",", " ", 
      RowBox[{"3", " ", "b1"}], ",", " ", 
      RowBox[{"-", "b0"}]}], "}"}], ".", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"b2p", "[", "3", "]"}], ".", 
      RowBox[{"p2b", "[", "3", "]"}]}], ")"}], ".", 
    RowBox[{"ppoints", "[", "3", "]"}]}], " ", "\[Equal]", " ", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"b3", ",", " ", 
      RowBox[{
       RowBox[{"-", "3"}], " ", "b2"}], ",", " ", 
      RowBox[{"3", " ", "b1"}], ",", " ", 
      RowBox[{"-", "b0"}]}], "}"}], ".", 
    RowBox[{"ppoints", "[", "3", "]"}]}], " ", "\[Equal]", " ", 
   "0"}]}]], "Input",
 CellChangeTimes->{{3.7275602997638617`*^9, 3.727560330074356*^9}, 
   3.7275603781708097`*^9, {3.72791097079766*^9, 3.7279109861177063`*^9}, {
   3.7279170051926937`*^9, 3.7279170251849422`*^9}, {3.730829575556365*^9, 
   3.730829585619691*^9}, {3.766415299896016*^9, 3.766415327347315*^9}, {
   3.766416536190424*^9, 3.766416550617275*^9}, 
   3.76641674780291*^9},ExpressionUUID->"8309114d-5b66-4bb8-8f1e-\
5df18f5e5194"],

Cell[BoxData[
 RowBox[{
  RowBox[{"crossbmatrix", "[", 
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
  RowBox[{
   RowBox[{"DiagonalMatrix", "[", 
    RowBox[{"{", 
     RowBox[{"3", ",", 
      RowBox[{"-", "1"}], ",", "1", ",", 
      RowBox[{"-", "3"}]}], "}"}], "]"}], ".", 
   RowBox[{"Apply", "[", 
    RowBox[{"Cross", ",", 
     RowBox[{"Transpose", "[", "m", "]"}]}], "]"}], " "}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.624626139375463*^9, 3.62462619322294*^9}, {
   3.624626235217763*^9, 3.624626236140121*^9}, {3.624626305092184*^9, 
   3.6246263244332*^9}, {3.624627566512486*^9, 3.624627582508123*^9}, 
   3.62463631404958*^9, 3.624636481742187*^9, {3.624637373463726*^9, 
   3.624637392351576*^9}, {3.625311535486609*^9, 3.625311546555278*^9}, {
   3.6253115775374413`*^9, 3.625311632943769*^9}, {3.6255877724922657`*^9, 
   3.6255877729209347`*^9}, {3.6323187662996063`*^9, 
   3.6323187725973663`*^9}, {3.632432727749424*^9, 3.63243273139333*^9}, {
   3.632432838292769*^9, 3.632432838381956*^9}, 3.632433038466045*^9, {
   3.6943035323624573`*^9, 3.694303543610878*^9}, {3.694303576739272*^9, 
   3.6943035904992847`*^9}, {3.694304348547592*^9, 3.69430437100051*^9}, {
   3.725903052841029*^9, 3.7259030541189003`*^9}, {3.725909139687263*^9, 
   3.725909139942202*^9}, {3.7276500176449013`*^9, 3.727650026826453*^9}, {
   3.7279179982691593`*^9, 3.727918016236457*^9}, 3.727918172855432*^9, {
   3.730829963911401*^9, 3.73082997398878*^9}, {3.766415187447096*^9, 
   3.76641519294449*^9}, {3.7664161461782513`*^9, 3.766416146471169*^9}, {
   3.766416234742989*^9, 3.766416235824095*^9}, {3.766416581472288*^9, 
   3.766416582759907*^9}, {3.766417036460301*^9, 3.766417049702552*^9}},
 CellLabel->"In[24]:=",ExpressionUUID->"858ed7b3-e837-4a9e-9544-7fc664046ae7"],

Cell[BoxData[
 RowBox[{
  RowBox[{"crossbmatrix", "[", 
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
  RowBox[{"crossbmatrix", "[", 
   RowBox[{"Map", "[", 
    RowBox[{"e2p", ",", "m"}], "]"}], "]"}], " "}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.627825196828309*^9, 3.627825227776699*^9}, {
   3.6323187859521027`*^9, 3.6323187929826803`*^9}, {3.632432733857235*^9, 
   3.632432739909893*^9}, {3.694303602458084*^9, 3.6943036263475122`*^9}, {
   3.694304392851136*^9, 3.6943044052252893`*^9}, {3.6943044964039097`*^9, 
   3.694304500827879*^9}, 3.725903065250888*^9, {3.7259091491828213`*^9, 
   3.725909157981089*^9}, {3.727650020442347*^9, 3.727650031914289*^9}},
 CellLabel->"In[25]:=",ExpressionUUID->"8e11b6db-6448-4f4a-81bc-4c997281448e"],

Cell["\<\
We don' t have to redo all the algebra we just did. We can simply adapt it. \
Since\
\>", "Text",
 CellChangeTimes->{{3.727649978559361*^9, 3.7276499943224373`*^9}, {
  3.766422532199087*^9, 
  3.7664225333891687`*^9}},ExpressionUUID->"8c7a1ce3-b46b-4202-a75a-\
9dfd72ceb075"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{"b3", ",", " ", 
     RowBox[{
      RowBox[{"-", "3"}], " ", "b2"}], ",", " ", 
     RowBox[{"3", " ", "b1"}], ",", " ", 
     RowBox[{"-", "b0"}]}], "}"}], ".", 
   RowBox[{"b2p", "[", "3", "]"}]}], " ", "//", " ", "Simplify"}]], "Input",
 CellChangeTimes->{{3.727560387440846*^9, 3.727560388850547*^9}, {
   3.727560461042572*^9, 3.72756052214828*^9}, {3.727910989013916*^9, 
   3.727910998750196*^9}, {3.7279170269214573`*^9, 3.727917032352997*^9}, {
   3.730829588830263*^9, 3.730829589811286*^9}, 
   3.766415430119237*^9},ExpressionUUID->"50c8d60f-d757-4d66-bc03-\
56df3cf5f868"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"-", "b0"}], "+", 
    RowBox[{"3", " ", "b1"}], "-", 
    RowBox[{"3", " ", "b2"}], "+", "b3"}], ",", 
   RowBox[{
    RowBox[{"-", "b0"}], "+", 
    RowBox[{"2", " ", "b1"}], "-", "b2"}], ",", 
   RowBox[{
    RowBox[{"-", "b0"}], "+", "b1"}], ",", 
   RowBox[{"-", "b0"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.727560494250041*^9, 3.727560522456753*^9}, {
   3.72791099365361*^9, 3.7279109999623137`*^9}, 3.7279170331103354`*^9, 
   3.7664154337251463`*^9},ExpressionUUID->"910ea1e1-2ff2-4556-aa13-\
8d5c7ae789da"]
}, Open  ]],

Cell[TextData[{
 "The inflection polynomial ",
 Cell[BoxData[
  RowBox[{
   RowBox[{"-", "d4"}], "+", 
   RowBox[{"3", " ", "d3", " ", "t"}], "-", 
   RowBox[{"3", " ", "d2", " ", 
    SuperscriptBox["t", "2"]}], "+", 
   RowBox[{"d1", " ", 
    SuperscriptBox["t", "3"], " "}]}]],ExpressionUUID->
  "7bde43c4-a508-4901-9e31-719e2d21d7f2"],
 " can be written as "
}], "Text",
 CellChangeTimes->{{3.727560557608055*^9, 3.727560599597822*^9}, 
   3.727650000234329*^9},ExpressionUUID->"c3117c6d-4c41-4a27-ac2d-\
976f4136058a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"CoefficientList", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "d4"}], "+", 
      RowBox[{"3", " ", "d3", " ", "t"}], "-", 
      RowBox[{"3", " ", "d2", " ", 
       SuperscriptBox["t", "2"]}], "+", 
      RowBox[{"d1", " ", 
       SuperscriptBox["t", "3"]}]}], ",", "t"}], "]"}], " ", "/.", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"d1", "->", 
      RowBox[{
       RowBox[{"-", "b0"}], "+", 
       RowBox[{"3", " ", "b1"}], "-", 
       RowBox[{"3", " ", "b2"}], "+", "b3"}]}], ",", 
     RowBox[{"d2", "->", 
      RowBox[{
       RowBox[{"-", "b0"}], "+", 
       RowBox[{"2", " ", "b1"}], "-", "b2"}]}], ",", " ", 
     RowBox[{"d3", "->", 
      RowBox[{
       RowBox[{"-", "b0"}], "+", "b1"}]}], ",", " ", 
     RowBox[{"d4", "\[Rule]", 
      RowBox[{"-", "b0"}]}]}], "}"}]}], "//", "Simplify"}]], "Input",
 CellChangeTimes->{{3.7275605263039503`*^9, 3.727560544531847*^9}, {
   3.727560606796927*^9, 3.72756064817362*^9}, {3.727560972229352*^9, 
   3.727560976867834*^9}, 3.727611557897822*^9, {3.727911009678165*^9, 
   3.727911041654188*^9}, {3.766415457444483*^9, 
   3.766415481781999*^9}},ExpressionUUID->"9013b3f3-7804-4702-92b0-\
ffafc6ed110a"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"b0", ",", 
   RowBox[{"3", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "b0"}], "+", "b1"}], ")"}]}], ",", 
   RowBox[{"3", " ", 
    RowBox[{"(", 
     RowBox[{"b0", "-", 
      RowBox[{"2", " ", "b1"}], "+", "b2"}], ")"}]}], ",", 
   RowBox[{
    RowBox[{"-", "b0"}], "+", 
    RowBox[{"3", " ", "b1"}], "-", 
    RowBox[{"3", " ", "b2"}], "+", "b3"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.7275606096275883`*^9, 3.72756064837716*^9}, 
   3.727560708002582*^9, {3.727560764335121*^9, 3.7275607696173763`*^9}, 
   3.727560977983316*^9, 3.727611559874308*^9, 3.727911045196658*^9, 
   3.727917044281851*^9, 3.766415487193769*^9, 3.766416381073324*^9, 
   3.7664164261124687`*^9, 3.766417204501438*^9, 3.76641727383466*^9, {
   3.7664219953171062`*^9, 3.7664220103017483`*^9}, 3.76642216922688*^9, 
   3.766422245849142*^9},ExpressionUUID->"54530dc5-57bc-4c6a-9bdb-\
a0226584fa81"]
}, Open  ]],

Cell["\<\
Better yet, we can write the polynomial itself the Bernstein basis\
\>", "Text",
 CellChangeTimes->{{3.7275606559588947`*^9, 3.727560679938581*^9}, 
   3.727560996308519*^9},ExpressionUUID->"aa4bdab0-64b7-45cf-8941-\
285042c8322f"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"b2p", "[", "3", "]"}], ".", "%"}], "//", "Simplify"}]], "Input",
 CellChangeTimes->{{3.727560687510125*^9, 3.727560767900182*^9}, {
   3.727560988125803*^9, 3.727560989620008*^9}, 3.727911051534461*^9, {
   3.7664163765073137`*^9, 3.766416384890225*^9}, {3.766416415589575*^9, 
   3.766416420560005*^9}, {3.766417266164774*^9, 3.766417270893958*^9}, {
   3.766422160195784*^9, 3.766422166802021*^9}, {3.7664222393845882`*^9, 
   3.76642223976847*^9}},ExpressionUUID->"8ee3ef55-284c-4690-a7ab-\
d7eaa963845a"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"b0", ",", "b1", ",", "b2", ",", "b3"}], "}"}]], "Output",
 CellChangeTimes->{
  3.727560695050002*^9, {3.7275607572823544`*^9, 3.727560771566318*^9}, 
   3.727560990955099*^9, 3.727911052798913*^9, 3.727917047537198*^9, 
   3.766415492249977*^9, 3.766416385966021*^9, 3.766417275551043*^9, {
   3.7664219981408463`*^9, 3.766422013529985*^9}, 3.766422171888349*^9, {
   3.766422241109652*^9, 
   3.766422248929435*^9}},ExpressionUUID->"c7919f65-4601-4ac0-bd70-\
acb14d8f17fd"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionpolyb", "[", 
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
   RowBox[{"bb3", "[", "t", "]"}], ".", 
   RowBox[{"Reverse", "[", 
    RowBox[{"crossbmatrix", "[", "m", "]"}], "]"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.624626242844881*^9, 3.624626267124757*^9}, {
   3.624626361523507*^9, 3.62462639978343*^9}, {3.624626479311077*^9, 
   3.624626611027046*^9}, {3.624627900221631*^9, 3.624627903854163*^9}, {
   3.6246279489823303`*^9, 3.624627962447043*^9}, 3.624628372420541*^9, {
   3.624628788108274*^9, 3.624628820303678*^9}, {3.624637002278943*^9, 
   3.624637014139344*^9}, {3.624637413961741*^9, 3.624637418551787*^9}, {
   3.6253116826585407`*^9, 3.6253117409902287`*^9}, {3.627825182057341*^9, 
   3.627825182664125*^9}, 3.632318975384108*^9, {3.632432702110032*^9, 
   3.6324327102662163`*^9}, {3.662987220966526*^9, 3.662987303511965*^9}, 
   3.694306472656045*^9, {3.7259053868162613`*^9, 3.7259053952074337`*^9}, {
   3.730829809657699*^9, 3.730829814900054*^9}, 3.730829884959928*^9, {
   3.730830014796962*^9, 3.730830051238422*^9}, {3.730830278199607*^9, 
   3.7308302798192797`*^9}, {3.730830816052721*^9, 3.730830857212481*^9}, {
   3.730830895195376*^9, 3.730830908924365*^9}, {3.766415527839336*^9, 
   3.766415528547495*^9}, {3.766422301219194*^9, 3.766422306984198*^9}},
 CellLabel->"In[26]:=",ExpressionUUID->"113cecec-bf4e-42ad-9d4a-6b531fca29c9"],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionpolyb", "[", 
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
   RowBox[{"bb3", "[", "t", "]"}], ".", 
   RowBox[{"Reverse", "[", 
    RowBox[{"crossbmatrix", "[", "m", "]"}], "]"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.66298729076252*^9, 3.662987297996119*^9}, 
   3.694306464463996*^9, 3.72590540351239*^9, {3.730829812655799*^9, 
   3.730829816498056*^9}, 3.7308298868848963`*^9, {3.7308300180171824`*^9, 
   3.730830046407077*^9}, {3.730830284941421*^9, 3.730830287516807*^9}, {
   3.73083081937871*^9, 3.730830819752923*^9}, {3.7308308668309193`*^9, 
   3.730830868019738*^9}, 3.730830950692896*^9, {3.7664155376966057`*^9, 
   3.76641553817267*^9}, {3.766422348674863*^9, 3.766422351684647*^9}},
 CellLabel->"In[27]:=",ExpressionUUID->"917f547b-52b6-494c-95c3-fa12c01fe8a8"],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionsb", "[", 
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
          RowBox[{"inflectionpolyb", "[", 
           RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", "0"}], ",", 
         " ", "t", ",", " ", "Reals"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True,
 CellChangeTimes->{{3.662987531573202*^9, 3.6629875315939083`*^9}, 
   3.6943064872376537`*^9, {3.730829898308526*^9, 3.730829914452981*^9}, {
   3.730830129797083*^9, 3.730830133617844*^9}},
 CellLabel->"In[28]:=",ExpressionUUID->"216ea60f-66ca-44cd-a028-da44be5a9256"],

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionsb", "[", 
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
          RowBox[{"inflectionpolyb", "[", 
           RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", "0"}], ",", 
         " ", "t", ",", " ", "Reals"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True,
 CellChangeTimes->{{3.6279189684765177`*^9, 3.6279189771585913`*^9}, 
   3.632318981244285*^9, {3.632416836446454*^9, 3.632416837570549*^9}, 
   3.632432717322267*^9, {3.632432748122875*^9, 3.632432748381591*^9}, {
   3.662987338215919*^9, 3.662987346047377*^9}, 3.662987521685961*^9, 
   3.6943064962456017`*^9, {3.7308298996571712`*^9, 3.730829916225997*^9}, {
   3.730830137178494*^9, 3.730830140474264*^9}},
 CellLabel->"In[29]:=",ExpressionUUID->"a2175c97-fdca-4a81-812c-663f49ee7ec2"],

Cell["So now we can plot the inflections together with the curve", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.624627268644024*^9, 3.624627273952292*^9}, {3.624627337088922*^9, 
  3.62462741416122*^9}, {3.624628432616747*^9, 
  3.624628441928463*^9}},ExpressionUUID->"bcdb0808-4d89-40fd-ab45-\
d121c8c7316d"],

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
          RowBox[{"-", "4"}], ",", 
          RowBox[{"-", "1.5"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1", ",", "4"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "6.5"}], ",", "4"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"4", ",", 
          RowBox[{"-", "1.5"}]}], "}"}]}], "}"}]}], ",", " ", 
     RowBox[{"w1s", " ", "=", " ", "1.5"}], ",", " ", 
     RowBox[{"w2s", " ", "=", ".25"}]}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", 
         RowBox[{"N", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{
              RowBox[{"pt", "[", 
               RowBox[{"[", "2", "]"}], "]"}], ",", " ", "w1"}], "]"}], ",", 
            " ", 
            RowBox[{"e2p", "[", 
             RowBox[{
              RowBox[{"pt", "[", 
               RowBox[{"[", "3", "]"}], "]"}], ",", "w2"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "4", "]"}], "]"}], "]"}]}], "}"}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{"p2e", "[", 
            RowBox[{
             RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", "0", ",", "4"}], "}"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
           RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"PointSize", "[", "Large", "]"}], ",", "Red", ",", 
            RowBox[{"Point", "[", 
             RowBox[{"Map", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"p2e", "[", 
                 RowBox[{
                  RowBox[{"bb3", "[", "#", "]"}], ".", "m"}], "]"}], "&"}], 
               ",", 
               RowBox[{"inflectionsp", "[", "m", "]"}]}], "]"}], "]"}], ",", 
            "\[IndentingNewLine]", "Black", ",", "Dashed", ",", " ", 
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
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w1", ",", "w1s"}], "}"}], ",", " ", "0", ",", " ", "20"}], 
      "}"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w2", ",", "w2s"}], "}"}], ",", "0", ",", "20"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.624626622019451*^9, 3.624626622525023*^9}, {
   3.624626767455415*^9, 3.624626771100086*^9}, {3.624626812749667*^9, 
   3.6246270124945297`*^9}, {3.6246271528320723`*^9, 
   3.6246271545037746`*^9}, {3.624627184642439*^9, 3.624627187904611*^9}, {
   3.6246274318275747`*^9, 3.62462753448449*^9}, {3.624627592614477*^9, 
   3.6246276151582413`*^9}, {3.624627999525258*^9, 3.624628254728108*^9}, {
   3.6246283958883543`*^9, 3.624628409488161*^9}, {3.6246374292416363`*^9, 
   3.624637439399742*^9}, {3.624638838148261*^9, 3.624638838260764*^9}, {
   3.624638918518223*^9, 3.624638946563499*^9}, {3.625311824691402*^9, 
   3.625311847550606*^9}, {3.6253119023167553`*^9, 3.625311909989506*^9}, 
   3.625311941827697*^9, {3.625312283266288*^9, 3.625312353440363*^9}, {
   3.625328603877275*^9, 3.625328611886648*^9}, {3.625587841692792*^9, 
   3.625587863035974*^9}, 3.62558812835749*^9, {3.6255881805010557`*^9, 
   3.625588185708931*^9}, 3.627661447222733*^9, {3.627825279947731*^9, 
   3.627825297103896*^9}, {3.627836566586624*^9, 3.627836569032062*^9}, 
   3.627904533445821*^9, {3.6279073295474463`*^9, 3.6279073874931993`*^9}, {
   3.6279193044462023`*^9, 3.627919320148974*^9}, {3.632318990109364*^9, 
   3.632319076196125*^9}, {3.632430693171575*^9, 3.6324306970632343`*^9}, {
   3.632432902591085*^9, 3.632432909203328*^9}, {3.6629873767609987`*^9, 
   3.6629874514613733`*^9}, {3.662987658465564*^9, 3.662987659971674*^9}, {
   3.662987768728888*^9, 3.66298777072011*^9}, {3.662987830595929*^9, 
   3.662987832551668*^9}, {3.662987882055271*^9, 3.6629879087033253`*^9}, {
   3.662988158931275*^9, 3.6629882557719088`*^9}, {3.662988286372191*^9, 
   3.662988307793429*^9}, {3.694306507944326*^9, 3.694306534823254*^9}, {
   3.694471448770442*^9, 3.694471530801256*^9}, {3.694471751873754*^9, 
   3.6944717590095778`*^9}, 3.730830145266911*^9},
 CellLabel->"In[30]:=",ExpressionUUID->"f96b3e19-7aaf-4b16-90cb-447644b11dd2"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-4, -1.5}, {1, 4}, {-6.5, 4}, {
     4, -1.5}}, $CellContext`w1$$ = 1.5, $CellContext`w2$$ = 0.25, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-4, -1.5}, {1, 4}, {-6.5, 4}, {4, -1.5}}}, 
      Automatic}, {{
       Hold[$CellContext`w1$$], 1.5}, 0, 20}, {{
       Hold[$CellContext`w2$$], 0.25}, 0, 20}}, Typeset`size$$ = {
    576., {285., 291.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`w1$2979$$ = 
    0, $CellContext`w2$2980$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-4, -1.5}, {1, 4}, {-6.5, 4}, {
          4, -1.5}}, $CellContext`w1$$ = 1.5, $CellContext`w2$$ = 0.25}, 
      "ControllerVariables" :> {
        Hold[$CellContext`w1$$, $CellContext`w1$2979$$, 0], 
        Hold[$CellContext`w2$$, $CellContext`w2$2980$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Module[{$CellContext`m$ = N[{
            $CellContext`e2p[
             Part[$CellContext`pt$$, 1]], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 2], $CellContext`w1$$], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 3], $CellContext`w2$$], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 4]]}]}, 
        Show[
         ParametricPlot[
          $CellContext`p2e[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$]], \
{$CellContext`t, 0, 4}, PlotRange -> 10, PlotStyle -> Thick, Axes -> False], 
         Graphics[{
           PointSize[Large], Red, 
           Point[
            Map[$CellContext`p2e[
              Dot[
               $CellContext`bb3[#], $CellContext`m$]]& , 
             $CellContext`inflectionsp[$CellContext`m$]]], Black, Dashed, 
           Line[$CellContext`pt$$]}], 
         Graphics[
          Table[
           Text[
            Style[
             Subscript[$CellContext`p, $CellContext`i - 1], Large], 
            Part[$CellContext`pt$$, $CellContext`i] + {0, 
             1}], {$CellContext`i, 1, 
            Length[$CellContext`pt$$]}]], ImageSize -> Large]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-4, -1.5}, {1, 
           4}, {-6.5, 4}, {4, -1.5}}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`w1$$, 1.5}, 0, 
         20}, {{$CellContext`w2$$, 0.25}, 0, 20}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{629., {345., 352.}},
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
           Blank[]]}] := 
       If[$CellContext`w != 
         0, {$CellContext`x/$CellContext`w, $CellContext`y/$CellContext`w}, {
         100000000000000000000000000000000000000000000000000000000000000000000\
00000000000000000000000000000000 $CellContext`x, 
          10000000000000000000000000000000000000000000000000000000000000000000\
000000000000000000000000000000000 $CellContext`y}], $CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, \
$CellContext`inflectionsp[
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
           
           Solve[$CellContext`inflectionpolyp[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`inflectionsp[
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
           Solve[$CellContext`inflectionpolyp[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`inflectionpolyp[
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
         $CellContext`crosstmatrixp[$CellContext`t], 
         $CellContext`crosspmatrix[$CellContext`m]], \
$CellContext`inflectionpolyp[
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
         $CellContext`crosstmatrixp[$CellContext`t], 
         $CellContext`crosspmatrix[$CellContext`m]], \
$CellContext`crosstmatrixp[
         Pattern[$CellContext`t, 
          Blank[]]] := {$CellContext`t^3, (-3) $CellContext`t^2, 
         3 $CellContext`t, -1}, $CellContext`crosspmatrix[
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
$CellContext`v -> $CellContext`t}]], Attributes[Subscript] = {NHoldRest}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.694471502588092*^9, 3.694471531862524*^9}, {
   3.694471760119083*^9, 3.694471769353334*^9}, 3.694474179923805*^9, 
   3.694474218707847*^9, 3.694733759430009*^9, 3.69473379895417*^9, 
   3.7259021573754873`*^9, 3.7259050679494*^9, 3.725905415924889*^9, 
   3.725909256876968*^9, 3.725924699770506*^9, 3.727559964479773*^9, 
   3.727564519488002*^9, 3.727602290168494*^9, 3.727611496940323*^9, 
   3.727627409539071*^9, 3.7276492095314093`*^9, 3.72769772132099*^9, 
   3.727824652139619*^9, 3.727872255254162*^9, 3.727883732620537*^9, 
   3.727957510058832*^9, 3.7279645755615807`*^9, 3.727975058949259*^9, 
   3.730829068561277*^9, 3.730830145589253*^9, 3.730830378505539*^9, 
   3.731019274347706*^9, 3.733955101773138*^9, 3.757853002336399*^9, 
   3.757854764840004*^9, 3.75786686518919*^9, 3.7578670819813433`*^9, {
   3.757867166474354*^9, 3.7578671918165083`*^9}, 3.757867358544436*^9, 
   3.757867576688367*^9, 3.766414272988131*^9, 3.7664155479386187`*^9, 
   3.789393025613036*^9},
 CellLabel->"Out[30]=",ExpressionUUID->"33d17a6d-12cf-42e0-af6d-47ab00ef7e73"]
}, Open  ]],

Cell["Or, using the Bernstein formulation:", "Text",
 CellChangeTimes->{{3.730829722474537*^9, 
  3.7308297488715687`*^9}},ExpressionUUID->"843255f9-6537-40e5-8a3c-\
6752d414fe85"],

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
          RowBox[{"-", "4"}], ",", 
          RowBox[{"-", "1.5"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"1", ",", "4"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "6.5"}], ",", "4"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"4", ",", 
          RowBox[{"-", "1.5"}]}], "}"}]}], "}"}]}], ",", " ", 
     RowBox[{"w1s", " ", "=", " ", "1.5"}], ",", " ", 
     RowBox[{"w2s", " ", "=", ".25"}]}], "}"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", 
         RowBox[{"N", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{
              RowBox[{"pt", "[", 
               RowBox[{"[", "2", "]"}], "]"}], ",", " ", "w1"}], "]"}], ",", 
            " ", 
            RowBox[{"e2p", "[", 
             RowBox[{
              RowBox[{"pt", "[", 
               RowBox[{"[", "3", "]"}], "]"}], ",", "w2"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "4", "]"}], "]"}], "]"}]}], "}"}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{"p2e", "[", 
            RowBox[{
             RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", "0", ",", "4"}], "}"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", 
           RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"PointSize", "[", "Large", "]"}], ",", "Red", ",", 
            RowBox[{"Point", "[", 
             RowBox[{"Map", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"p2e", "[", 
                 RowBox[{
                  RowBox[{"bb3", "[", "#", "]"}], ".", "m"}], "]"}], "&"}], 
               ",", 
               RowBox[{"inflectionsb", "[", "m", "]"}]}], "]"}], "]"}], ",", 
            "\[IndentingNewLine]", "Black", ",", "Dashed", ",", " ", 
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
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", " ", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w1", ",", "w1s"}], "}"}], ",", " ", "0", ",", " ", "20"}], 
      "}"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w2", ",", "w2s"}], "}"}], ",", "0", ",", "20"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.624626622019451*^9, 3.624626622525023*^9}, {
   3.624626767455415*^9, 3.624626771100086*^9}, {3.624626812749667*^9, 
   3.6246270124945297`*^9}, {3.6246271528320723`*^9, 
   3.6246271545037746`*^9}, {3.624627184642439*^9, 3.624627187904611*^9}, {
   3.6246274318275747`*^9, 3.62462753448449*^9}, {3.624627592614477*^9, 
   3.6246276151582413`*^9}, {3.624627999525258*^9, 3.624628254728108*^9}, {
   3.6246283958883543`*^9, 3.624628409488161*^9}, {3.6246374292416363`*^9, 
   3.624637439399742*^9}, {3.624638838148261*^9, 3.624638838260764*^9}, {
   3.624638918518223*^9, 3.624638946563499*^9}, {3.625311824691402*^9, 
   3.625311847550606*^9}, {3.6253119023167553`*^9, 3.625311909989506*^9}, 
   3.625311941827697*^9, {3.625312283266288*^9, 3.625312353440363*^9}, {
   3.625328603877275*^9, 3.625328611886648*^9}, {3.625587841692792*^9, 
   3.625587863035974*^9}, 3.62558812835749*^9, {3.6255881805010557`*^9, 
   3.625588185708931*^9}, 3.627661447222733*^9, {3.627825279947731*^9, 
   3.627825297103896*^9}, {3.627836566586624*^9, 3.627836569032062*^9}, 
   3.627904533445821*^9, {3.6279073295474463`*^9, 3.6279073874931993`*^9}, {
   3.6279193044462023`*^9, 3.627919320148974*^9}, {3.632318990109364*^9, 
   3.632319076196125*^9}, {3.632430693171575*^9, 3.6324306970632343`*^9}, {
   3.632432902591085*^9, 3.632432909203328*^9}, {3.6629873767609987`*^9, 
   3.6629874514613733`*^9}, {3.662987658465564*^9, 3.662987659971674*^9}, {
   3.662987768728888*^9, 3.66298777072011*^9}, {3.662987830595929*^9, 
   3.662987832551668*^9}, {3.662987882055271*^9, 3.6629879087033253`*^9}, {
   3.662988158931275*^9, 3.6629882557719088`*^9}, {3.662988286372191*^9, 
   3.662988307793429*^9}, {3.694306507944326*^9, 3.694306534823254*^9}, {
   3.694471448770442*^9, 3.694471530801256*^9}, {3.694471751873754*^9, 
   3.6944717590095778`*^9}, 3.730830153532886*^9},
 CellLabel->"In[31]:=",ExpressionUUID->"9994333e-2d38-499b-879c-c6d811a1a44d"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-4, -1.5}, {1, 4}, {-6.5, 4}, {
     4, -1.5}}, $CellContext`w1$$ = 1.5, $CellContext`w2$$ = 0.25, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-4, -1.5}, {1, 4}, {-6.5, 4}, {4, -1.5}}}, 
      Automatic}, {{
       Hold[$CellContext`w1$$], 1.5}, 0, 20}, {{
       Hold[$CellContext`w2$$], 0.25}, 0, 20}}, Typeset`size$$ = {
    576., {285., 291.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`w1$3119$$ = 
    0, $CellContext`w2$3120$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-4, -1.5}, {1, 4}, {-6.5, 4}, {
          4, -1.5}}, $CellContext`w1$$ = 1.5, $CellContext`w2$$ = 0.25}, 
      "ControllerVariables" :> {
        Hold[$CellContext`w1$$, $CellContext`w1$3119$$, 0], 
        Hold[$CellContext`w2$$, $CellContext`w2$3120$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Module[{$CellContext`m$ = N[{
            $CellContext`e2p[
             Part[$CellContext`pt$$, 1]], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 2], $CellContext`w1$$], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 3], $CellContext`w2$$], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 4]]}]}, 
        Show[
         ParametricPlot[
          $CellContext`p2e[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$]], \
{$CellContext`t, 0, 4}, PlotRange -> 10, PlotStyle -> Thick, Axes -> False], 
         Graphics[{
           PointSize[Large], Red, 
           Point[
            Map[$CellContext`p2e[
              Dot[
               $CellContext`bb3[#], $CellContext`m$]]& , 
             $CellContext`inflectionsb[$CellContext`m$]]], Black, Dashed, 
           Line[$CellContext`pt$$]}], 
         Graphics[
          Table[
           Text[
            Style[
             Subscript[$CellContext`p, $CellContext`i - 1], Large], 
            Part[$CellContext`pt$$, $CellContext`i] + {0, 
             1}], {$CellContext`i, 1, 
            Length[$CellContext`pt$$]}]], ImageSize -> Large]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-4, -1.5}, {1, 
           4}, {-6.5, 4}, {4, -1.5}}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`w1$$, 1.5}, 0, 
         20}, {{$CellContext`w2$$, 0.25}, 0, 20}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{629., {345., 352.}},
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
           Blank[]]}] := 
       If[$CellContext`w != 
         0, {$CellContext`x/$CellContext`w, $CellContext`y/$CellContext`w}, {
         100000000000000000000000000000000000000000000000000000000000000000000\
00000000000000000000000000000000 $CellContext`x, 
          10000000000000000000000000000000000000000000000000000000000000000000\
000000000000000000000000000000000 $CellContext`y}], $CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, \
$CellContext`inflectionsb[
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
           
           Solve[$CellContext`inflectionpolyb[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`inflectionsb[
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
           Solve[$CellContext`inflectionpolyb[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`inflectionpolyb[
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
         $CellContext`bb3[$CellContext`t], 
         Reverse[
          $CellContext`crossbmatrix[$CellContext`m]]], \
$CellContext`inflectionpolyb[
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
         $CellContext`bb3[$CellContext`t], 
         Reverse[
          $CellContext`crossbmatrix[$CellContext`m]]], \
$CellContext`crossbmatrix[
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
             Blank[]]}}]] := Dot[
         DiagonalMatrix[{3, -1, 1, -3}], 
         Apply[Cross, 
          Transpose[$CellContext`m]]], $CellContext`crossbmatrix[
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
             Blank[]]}}]] := $CellContext`crossbmatrix[
         Map[$CellContext`e2p, $CellContext`m]], 
       Attributes[Subscript] = {NHoldRest}}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.730830155027445*^9, 3.73083029477217*^9, 3.7308303831119003`*^9, 
   3.7308308736797523`*^9, 3.7308309611337957`*^9, 3.731019274612954*^9, 
   3.7339551019908047`*^9, 3.757853002493602*^9, 3.757854765125383*^9, 
   3.757866865508456*^9, 3.757867082144562*^9, {3.757867166648057*^9, 
   3.757867191980237*^9}, 3.757867358645336*^9, 3.75786757683972*^9, 
   3.766414273167203*^9, 3.766415809612598*^9, 3.766416282882615*^9, 
   3.766422358721696*^9, 3.789393025739935*^9},
 CellLabel->"Out[31]=",ExpressionUUID->"e8980ef8-ab97-4876-acad-25376f2c7253"]
}, Open  ]],

Cell["\<\
In the rational case, the inflection polynomial is a cubic. 
In fact, we can consider the inflection polynomial for the integral case as a \
degenerate cubic in which one of the roots is at infinity. 
For integral curves (except when degenerate to a point), a parameter at \
infinity corresponds to a point at infinity. 
For a rational curve, a parameter at infinity may correspond to a point that \
is not at infinity at all. 
So we may in fact have three proper inflection points. 
One interesting result is that these inflection points are colinear! 

If we know the three roots of the cubic inflection polynomials, we can \
compute the positions of the inflection points as such\
\>", "Text",
 CellChangeTimes->{{3.627912936700048*^9, 3.627913022367626*^9}, {
  3.627913054890752*^9, 3.627913209592766*^9}, {3.627913385029265*^9, 
  3.62791339501926*^9}, {3.6323191974359827`*^9, 3.6323192219929113`*^9}, {
  3.632319786928399*^9, 3.632319798032262*^9}, {3.725909310022747*^9, 
  3.7259093116932383`*^9}},ExpressionUUID->"3ed01dfd-7c24-424e-8c94-\
25f729cca5a1"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"pb3", "[", "t", "]"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"t", ",", " ", 
      RowBox[{"{", 
       RowBox[{"t1", ",", "t2", ",", " ", "t3"}], "}"}]}], "}"}]}], "]"}], "//",
   " ", "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.72590931311616*^9, 
  3.72590935123114*^9}},ExpressionUUID->"972c0556-6e37-4e82-8534-\
da90afcb86fd"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "t1", 
      SuperscriptBox["t1", "2"], 
      SuperscriptBox["t1", "3"]},
     {"1", "t2", 
      SuperscriptBox["t2", "2"], 
      SuperscriptBox["t2", "3"]},
     {"1", "t3", 
      SuperscriptBox["t3", "2"], 
      SuperscriptBox["t3", "3"]}
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
 CellChangeTimes->{{3.7259093160505457`*^9, 
  3.725909351538932*^9}},ExpressionUUID->"9ee6b15b-e4f3-4e0c-961b-\
0566f3660964"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"p2b", "[", "3", "]"}], " ", "//", " ", "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.7259093546461887`*^9, 
  3.725909368517735*^9}},ExpressionUUID->"d51ba376-7268-4897-9a60-\
4872a0d2afc4"],

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
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.7259093601315403`*^9, 
  3.72590936906009*^9}},ExpressionUUID->"b05c93ca-7b62-4101-8770-\
23832b134d32"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"1", "t1", 
       SuperscriptBox["t1", "2"], 
       SuperscriptBox["t1", "3"]},
      {"1", "t2", 
       SuperscriptBox["t2", "2"], 
       SuperscriptBox["t2", "3"]},
      {"1", "t3", 
       SuperscriptBox["t3", "2"], 
       SuperscriptBox["t3", "3"]}
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
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}], ".", 
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
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}], ".", 
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
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}], "=", 
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"ix1", "iy1", "iw1"},
     {"ix2", "iy2", "iw2"},
     {"ix3", "iy3", "iw3"}
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
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}]], "Input",
 CellChangeTimes->{{3.627913699395956*^9, 3.627913717051269*^9}, 
   3.627913761154029*^9, 3.694307042666431*^9, {3.694307089982658*^9, 
   3.694307114667582*^9}, {3.6943071858610363`*^9, 3.694307311573328*^9}, {
   3.725905934957727*^9, 3.725905938331976*^9}, {3.7259093739050407`*^9, 
   3.7259093809766407`*^9}},ExpressionUUID->"6f00a161-8b44-40d4-90de-\
871423986ead"],

Cell["\<\
The collinearity of the inflection points is equivalent to the determinant of \
this 3x3 matrix being zero. 
But this is the same situation we had before. We have a determinant that we \
can use the epsilon-delta rule to compute. 
We already know that the cross of the coefficient matrix is {d1, d2, d3, d4}. 

But what about the cross of the matrix with the power basis in t1, t2, t3? 
Well, we know that these values for t are roots of the inflection polynomial:\
\
\>", "Text",
 CellChangeTimes->{{3.627913926664742*^9, 3.627913976128715*^9}, {
   3.627914060933058*^9, 3.627914117465819*^9}, {3.627914197376507*^9, 
   3.627914277285761*^9}, {3.632319769097036*^9, 3.63231978049327*^9}, {
   3.6944718085767403`*^9, 3.6944718098560658`*^9}, {3.725905471771112*^9, 
   3.725905475155271*^9}, {3.725905986017262*^9, 3.725905991079534*^9}, {
   3.72590939853511*^9, 3.7259094031897573`*^9}, 
   3.766422374072907*^9},ExpressionUUID->"3c464171-3b85-4a8f-b766-\
9339692f2c0b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{"d1", ",", " ", "d2", ",", " ", "d3", ",", " ", "d4"}], "}"}], ".",
   " ", 
  RowBox[{"crosstmatrix", "[", "t", "]"}], " "}]], "Input",ExpressionUUID->\
"7f411ce4-68bf-40ab-a40e-50195a6f5b57"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "d4"}], "+", 
  RowBox[{"3", " ", "d3", " ", "t"}], "-", 
  RowBox[{"3", " ", "d2", " ", 
   SuperscriptBox["t", "2"]}], "+", 
  RowBox[{"d1", " ", 
   SuperscriptBox["t", "3"]}]}]], "Output",
 CellChangeTimes->{3.7259056804021482`*^9, 
  3.725909411041168*^9},ExpressionUUID->"ac7d446b-2bda-460d-90de-\
c0cc0b42ece7"]
}, Open  ]],

Cell["But this can be written as ", "Text",
 CellChangeTimes->{{3.7259094896169977`*^9, 3.7259094919989653`*^9}, 
   3.725909524662732*^9},ExpressionUUID->"02e5e1e1-1756-411d-8a53-\
28987cc4f7b4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{" ", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "d4"}], ",", " ", 
     RowBox[{"3", " ", "d3"}], ",", " ", 
     RowBox[{
      RowBox[{"-", "3"}], " ", "d2"}], ",", "d1"}], "}"}], ".", 
   RowBox[{"pb3", "[", "t", "]"}]}]}]], "Input",
 CellChangeTimes->{{3.7259095035721197`*^9, 
  3.725909518056039*^9}},ExpressionUUID->"d890fe42-9b4d-4924-ba09-\
e80d0a006959"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "d4"}], "+", 
  RowBox[{"3", " ", "d3", " ", "t"}], "-", 
  RowBox[{"3", " ", "d2", " ", 
   SuperscriptBox["t", "2"]}], "+", 
  RowBox[{"d1", " ", 
   SuperscriptBox["t", "3"]}]}]], "Output",
 CellChangeTimes->{
  3.725909518876458*^9},ExpressionUUID->"dc8fe016-99eb-4abe-99d0-\
4eccd107d325"]
}, Open  ]],

Cell[TextData[{
 "So if t is a root, then vector  {-d4, 3 d3, -3 d2,d1} is perpendicular to \
",
 Cell[BoxData[
  StyleBox[
   RowBox[{"pb3", "[", "t", "]"}], "Text"]],
  CellChangeTimes->{3.694471852070507*^9},ExpressionUUID->
  "d8b468a5-6335-4e78-9322-2f89a8278cff"],
 ". Since t1, t2, and t3 are roots,  {-d4, 3 d3, -3 d2,d1} is perpendicular \
to all three rows in"
}], "Text",
 CellChangeTimes->{{3.627914479192631*^9, 3.627914508783062*^9}, {
  3.694307368158491*^9, 3.694307368989252*^9}, {3.6944718341842012`*^9, 
  3.6944718632244997`*^9}, {3.725906052608371*^9, 3.725906057377548*^9}, {
  3.725909435055129*^9, 3.72590944313763*^9}, {3.7259095308223057`*^9, 
  3.725909573022403*^9}},ExpressionUUID->"f01b86c5-e388-4e54-9372-\
d6d2d3ac069d"],

Cell[BoxData[
 RowBox[{"(", "\[NoBreak]", GridBox[{
    {"1", "t1", 
     SuperscriptBox["t1", "2"], 
     SuperscriptBox["t1", "3"]},
    {"1", "t2", 
     SuperscriptBox["t2", "2"], 
     SuperscriptBox["t2", "3"]},
    {"1", "t3", 
     SuperscriptBox["t3", "2"], 
     SuperscriptBox["t3", "3"]}
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
       Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]], "Input",
 CellChangeTimes->{{3.627914279135969*^9, 3.6279142953113947`*^9}, {
   3.627914511811223*^9, 3.627914538205514*^9}, 3.694307365828327*^9, 
   3.72590606859918*^9, 
   3.725909453401106*^9},ExpressionUUID->"cb475b34-21f4-43fb-9842-\
d64989cc1188"],

Cell["\<\
It is, in fact (a multiple of) the cross of the matrix. So the determinant of \
\>", "Text",
 CellChangeTimes->{{3.627914541794455*^9, 3.627914543592778*^9}, {
  3.627914573629952*^9, 3.627914575688382*^9}, {3.632319722590543*^9, 
  3.632319725176393*^9}, {3.69447189332093*^9, 
  3.694471895544724*^9}},ExpressionUUID->"8683ffee-c4a9-484f-a72d-\
cd65502079a7"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"1", "t1", 
       SuperscriptBox["t1", "2"], 
       SuperscriptBox["t1", "3"]},
      {"1", "t2", 
       SuperscriptBox["t2", "2"], 
       SuperscriptBox["t2", "3"]},
      {"1", "t3", 
       SuperscriptBox["t3", "2"], 
       SuperscriptBox["t3", "3"]}
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
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}], ".", 
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
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}], ".", 
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
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}], " ", 
  "\[Equal]", " ", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"d1", ",", " ", "d2", ",", " ", "d3", ",", " ", "d4"}], "}"}], 
   " ", ".", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "d4"}], ",", " ", 
     RowBox[{"3", "d3"}], ",", " ", 
     RowBox[{
      RowBox[{"-", "3"}], " ", "d2"}], ",", "d1"}], "}"}]}], "\[Equal]", " ", 
  "0"}]], "Input",
 CellChangeTimes->{{3.627914579360108*^9, 3.627914580995532*^9}, {
   3.627914616351791*^9, 3.627914625034531*^9}, 3.694307385852695*^9, {
   3.7259060914144*^9, 3.7259061009819202`*^9}, {3.725909458816944*^9, 
   3.725909464432601*^9}, {3.725909587678644*^9, 
   3.725909595166574*^9}},ExpressionUUID->"7963bdc9-cd53-43e3-b027-\
ff40ec021f58"],

Cell["We are done showing that the inflection points are colinear.", "Text",
 CellChangeTimes->{{3.627914627278913*^9, 3.6279146408404713`*^9}, {
  3.6323197319729233`*^9, 
  3.632319732804146*^9}},ExpressionUUID->"0286abc3-9997-43c0-b771-\
393aa13e7623"],

Cell["Now we move to double-points.", "Text",
 CellChangeTimes->{{3.63231973967907*^9, 
  3.632319748936439*^9}},ExpressionUUID->"95351295-9a79-4695-b597-\
56252f3fe4ed"],

Cell["\<\
The double point happens when we can find t1, t2 such that \[Gamma][t1] == \
\[Gamma][t2]. 
One necessary condition is that the area of triangle {\[Gamma][t1], \
\[Gamma][t2], \[Gamma][t3]} is zero for *any* t3\
\>", "Text",
 CellChangeTimes->{
  3.624630459498518*^9, {3.625312913139529*^9, 3.6253129253093777`*^9}, 
   3.632319762751811*^9},ExpressionUUID->"7cfbaccb-dd5e-4c95-8a0c-\
0268f82af6c7"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"pb3", "[", "t", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"t", ",", 
      RowBox[{"{", 
       RowBox[{"t1", ",", " ", "t2", ",", " ", "t3"}], "}"}]}], "}"}]}], 
   "]"}], " ", "//", " ", "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.7259061524833937`*^9, 3.725906152826809*^9}, {
  3.725907163010591*^9, 
  3.7259071636419477`*^9}},ExpressionUUID->"00a82222-fbc7-471c-9a65-\
49a926cc92ea"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "t1", 
      SuperscriptBox["t1", "2"], 
      SuperscriptBox["t1", "3"]},
     {"1", "t2", 
      SuperscriptBox["t2", "2"], 
      SuperscriptBox["t2", "3"]},
     {"1", "t3", 
      SuperscriptBox["t3", "2"], 
      SuperscriptBox["t3", "3"]}
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
 CellChangeTimes->{3.725906153763633*^9, 
  3.7259071650811863`*^9},ExpressionUUID->"839eb034-4a8f-4677-97cd-\
355626fe65b3"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"p2b", "[", "3", "]"}], " ", "//", " ", "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.7259071847673817`*^9, 
  3.725907190271735*^9}},ExpressionUUID->"908d451c-cd16-439c-97a8-\
fc522bd05fa4"],

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
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.7259071861587152`*^9, 
  3.725907190553053*^9}},ExpressionUUID->"b510f6bc-3a52-4121-8ced-\
163e66c96e19"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ppoints", "[", "3", "]"}], " ", "//", " ", "MatrixForm"}]], "Input",\

 CellChangeTimes->{{3.6253125203569527`*^9, 3.6253125218977633`*^9}, {
   3.625587934772399*^9, 3.625587935515201*^9}, 
   3.6323317909604807`*^9},ExpressionUUID->"0e185be0-3520-48b6-9df1-\
2ab53cb72730"],

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
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{3.625312522201836*^9, 3.625587936115115*^9, 
  3.694471945549717*^9},ExpressionUUID->"7968ce98-2fb7-419c-bb67-\
de18b7126ed1"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Det", "[", 
   RowBox[{
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"1", "t1", 
        SuperscriptBox["t1", "2"], 
        SuperscriptBox["t1", "3"]},
       {"1", "t2", 
        SuperscriptBox["t2", "2"], 
        SuperscriptBox["t2", "3"]},
       {"1", "t3", 
        SuperscriptBox["t3", "2"], 
        SuperscriptBox["t3", "3"]}
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
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}], ".", 
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
       "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
        "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.7]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}], ".", 
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"x0", "y0", "w0"},
       {"x1", "y1", "w1"},
       {"x2", "y2", "w2"},
       {"x3", "y3", "w3"}
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
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}], "]"}], 
  " ", "\[Equal]", " ", "0"}]], "Input",
 CellChangeTimes->{{3.6253128727421837`*^9, 3.625312895526104*^9}, {
  3.6944719664852667`*^9, 3.6944719786605377`*^9}, {3.725906211843972*^9, 
  3.7259062134331617`*^9}, {3.725907181539703*^9, 
  3.725907195736683*^9}},ExpressionUUID->"8df92b4b-7d05-49eb-a8f3-\
533d07aa3a3e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Det", "[", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"pb3", "[", "t", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"t", ",", 
         RowBox[{"{", 
          RowBox[{"t1", ",", " ", "t2", ",", " ", "t3"}], "}"}]}], "}"}]}], 
      "]"}], ".", " ", 
     RowBox[{"p2b", "[", "3", "]"}], ".", 
     RowBox[{"ppoints", "[", "3", "]"}]}], " ", "]"}], " ", "\[Equal]", " ", 
   "0"}], " ", "//", " ", "Simplify"}]], "Input",
 CellChangeTimes->{{3.624637498678273*^9, 3.624637528732129*^9}, {
   3.625312409781583*^9, 3.6253124158990517`*^9}, 3.625314206239233*^9, 
   3.625587972883676*^9, {3.625588033784721*^9, 3.6255880440253553`*^9}, 
   3.625588564045444*^9, 3.6323317935380287`*^9, {3.6944719870181713`*^9, 
   3.694472036506963*^9}, {3.725906218904755*^9, 3.7259062223834476`*^9}, {
   3.725907207241724*^9, 
   3.725907218461174*^9}},ExpressionUUID->"03ce9eaa-fdae-45f7-adbd-\
cbf679c67e74"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "t3"}], ")"}], "3"]}], " ", "x0"}], "+", 
      RowBox[{"t3", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "t3"}], ")"}], "2"], " ", "x1"}], "+", 
         RowBox[{"t3", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"3", " ", "x2"}], "-", 
            RowBox[{"3", " ", "t3", " ", "x2"}], "+", 
            RowBox[{"t3", " ", "x3"}]}], ")"}]}]}], ")"}]}]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "t2"}], ")"}], "3"]}], " ", "w0"}], 
         "+", 
         RowBox[{"t2", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"3", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "1"}], "+", "t2"}], ")"}], "2"], " ", "w1"}], 
            "+", 
            RowBox[{"t2", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"3", " ", "w2"}], "-", 
               RowBox[{"3", " ", "t2", " ", "w2"}], "+", 
               RowBox[{"t2", " ", "w3"}]}], ")"}]}]}], ")"}]}]}], ")"}], " ", 
       
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "t1"}], ")"}], "3"]}], " ", "y0"}], 
         "+", 
         RowBox[{"t1", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"3", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "1"}], "+", "t1"}], ")"}], "2"], " ", "y1"}], 
            "+", 
            RowBox[{"t1", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"3", " ", "y2"}], "-", 
               RowBox[{"3", " ", "t1", " ", "y2"}], "+", 
               RowBox[{"t1", " ", "y3"}]}], ")"}]}]}], ")"}]}]}], ")"}]}], 
      "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "t1"}], ")"}], "3"]}], " ", "w0"}], 
         "+", 
         RowBox[{"t1", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"3", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "1"}], "+", "t1"}], ")"}], "2"], " ", "w1"}], 
            "+", 
            RowBox[{"t1", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"3", " ", "w2"}], "-", 
               RowBox[{"3", " ", "t1", " ", "w2"}], "+", 
               RowBox[{"t1", " ", "w3"}]}], ")"}]}]}], ")"}]}]}], ")"}], " ", 
       
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "t2"}], ")"}], "3"]}], " ", "y0"}], 
         "+", 
         RowBox[{"t2", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"3", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "1"}], "+", "t2"}], ")"}], "2"], " ", "y1"}], 
            "+", 
            RowBox[{"t2", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"3", " ", "y2"}], "-", 
               RowBox[{"3", " ", "t2", " ", "y2"}], "+", 
               RowBox[{"t2", " ", "y3"}]}], ")"}]}]}], ")"}]}]}], ")"}]}]}], 
     ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", "t3"}], ")"}], "3"]}], " ", "w0"}], "+", 
      RowBox[{"t3", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "t3"}], ")"}], "2"], " ", "w1"}], "+", 
         RowBox[{"t3", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"3", " ", "w2"}], "-", 
            RowBox[{"3", " ", "t3", " ", "w2"}], "+", 
            RowBox[{"t3", " ", "w3"}]}], ")"}]}]}], ")"}]}]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", "1"}], "+", "t2"}], ")"}], "3"]}], " ", "x0"}], 
          "+", 
          RowBox[{"t2", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"3", " ", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", "1"}], "+", "t2"}], ")"}], "2"], " ", "x1"}], 
             "+", 
             RowBox[{"t2", " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"3", " ", "x2"}], "-", 
                RowBox[{"3", " ", "t2", " ", "x2"}], "+", 
                RowBox[{"t2", " ", "x3"}]}], ")"}]}]}], ")"}]}]}], ")"}]}], 
       " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "t1"}], ")"}], "3"]}], " ", "y0"}], 
         "+", 
         RowBox[{"t1", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"3", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "1"}], "+", "t1"}], ")"}], "2"], " ", "y1"}], 
            "+", 
            RowBox[{"t1", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"3", " ", "y2"}], "-", 
               RowBox[{"3", " ", "t1", " ", "y2"}], "+", 
               RowBox[{"t1", " ", "y3"}]}], ")"}]}]}], ")"}]}]}], ")"}]}], 
      "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "t1"}], ")"}], "3"]}], " ", "x0"}], 
         "+", 
         RowBox[{"t1", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"3", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "1"}], "+", "t1"}], ")"}], "2"], " ", "x1"}], 
            "+", 
            RowBox[{"t1", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"3", " ", "x2"}], "-", 
               RowBox[{"3", " ", "t1", " ", "x2"}], "+", 
               RowBox[{"t1", " ", "x3"}]}], ")"}]}]}], ")"}]}]}], ")"}], " ", 
       
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "1"}], "+", "t2"}], ")"}], "3"]}], " ", "y0"}], 
         "+", 
         RowBox[{"t2", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"3", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", "1"}], "+", "t2"}], ")"}], "2"], " ", "y1"}], 
            "+", 
            RowBox[{"t2", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"3", " ", "y2"}], "-", 
               RowBox[{"3", " ", "t2", " ", "y2"}], "+", 
               RowBox[{"t2", " ", "y3"}]}], ")"}]}]}], ")"}]}]}], ")"}]}]}], 
     ")"}]}]}], "\[Equal]", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "t2"}], ")"}], "3"]}], " ", "w0"}], "+", 
        RowBox[{"t2", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"3", " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", "1"}], "+", "t2"}], ")"}], "2"], " ", "w1"}], "+", 
           RowBox[{"t2", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", "w2"}], "-", 
              RowBox[{"3", " ", "t2", " ", "w2"}], "+", 
              RowBox[{"t2", " ", "w3"}]}], ")"}]}]}], ")"}]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "t1"}], ")"}], "3"]}], " ", "x0"}], "+", 
        RowBox[{"t1", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"3", " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", "1"}], "+", "t1"}], ")"}], "2"], " ", "x1"}], "+", 
           RowBox[{"t1", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", "x2"}], "-", 
              RowBox[{"3", " ", "t1", " ", "x2"}], "+", 
              RowBox[{"t1", " ", "x3"}]}], ")"}]}]}], ")"}]}]}], ")"}]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "t1"}], ")"}], "3"]}], " ", "w0"}], "+", 
        RowBox[{"t1", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"3", " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", "1"}], "+", "t1"}], ")"}], "2"], " ", "w1"}], "+", 
           RowBox[{"t1", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", "w2"}], "-", 
              RowBox[{"3", " ", "t1", " ", "w2"}], "+", 
              RowBox[{"t1", " ", "w3"}]}], ")"}]}]}], ")"}]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", "1"}], "+", "t2"}], ")"}], "3"]}], " ", "x0"}], "+", 
        RowBox[{"t2", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"3", " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", "1"}], "+", "t2"}], ")"}], "2"], " ", "x1"}], "+", 
           RowBox[{"t2", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", "x2"}], "-", 
              RowBox[{"3", " ", "t2", " ", "x2"}], "+", 
              RowBox[{"t2", " ", "x3"}]}], ")"}]}]}], ")"}]}]}], ")"}]}]}], 
    ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", "1"}], "+", "t3"}], ")"}], "3"]}], " ", "y0"}], "+", 
     RowBox[{"t3", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"3", " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", "1"}], "+", "t3"}], ")"}], "2"], " ", "y1"}], "+", 
        RowBox[{"t3", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"3", " ", "y2"}], "-", 
           RowBox[{"3", " ", "t3", " ", "y2"}], "+", 
           RowBox[{"t3", " ", "y3"}]}], ")"}]}]}], ")"}]}]}], 
    ")"}]}]}]], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{3.625312435683305*^9, 3.6253142062411757`*^9, 
  3.625588046610662*^9, 3.6255885655071363`*^9, 3.694472008638028*^9, 
  3.694472039084318*^9, 3.7259062254736643`*^9, 
  3.72590721993783*^9},ExpressionUUID->"b94d4842-c0be-40ac-b081-17a654929411"]
}, Open  ]],

Cell["\<\
Again, this looks terrible without the the epsilon-delta rule\
\>", "Text",
 CellChangeTimes->{{3.6246312922586803`*^9, 3.624631303969554*^9}, {
  3.725909614000811*^9, 
  3.7259096283345327`*^9}},ExpressionUUID->"7d42c36f-df3d-4efc-ba08-\
a985458ffef8"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Det", "[", 
    RowBox[{
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"pb3", "[", "t", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"t", ",", 
         RowBox[{"{", 
          RowBox[{"t1", ",", " ", "t2", ",", " ", "t3"}], "}"}]}], "}"}]}], 
      "]"}], ".", " ", 
     RowBox[{"p2b", "[", "3", "]"}], ".", 
     RowBox[{"ppoints", "[", "3", "]"}]}], "]"}], " ", "-", " ", 
   RowBox[{
    RowBox[{"Apply", "[", 
     RowBox[{"Cross", ",", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"pb3", "[", "t", "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"t", ",", 
          RowBox[{"{", 
           RowBox[{"t1", ",", " ", "t2", ",", " ", "t3"}], "}"}]}], "}"}]}], 
       "]"}]}], "]"}], " ", ".", 
    RowBox[{"Apply", "[", 
     RowBox[{"Cross", ",", " ", 
      RowBox[{"Transpose", "[", " ", 
       RowBox[{
        RowBox[{"p2b", "[", "3", "]"}], ".", 
        RowBox[{"ppoints", "[", "3", "]"}]}], "]"}]}], "]"}]}]}], "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.6246313200250893`*^9, 3.62463134344506*^9}, {
   3.624637549189942*^9, 3.624637584063949*^9}, {3.624637641875429*^9, 
   3.624637644417782*^9}, {3.6253124408879023`*^9, 3.6253124608441353`*^9}, {
   3.625312948938401*^9, 3.6253129509956837`*^9}, {3.625587982716011*^9, 
   3.625587987090523*^9}, {3.6255882113016453`*^9, 3.62558823082941*^9}, {
   3.6255885724929733`*^9, 3.625588587432774*^9}, {3.632319840435546*^9, 
   3.6323198470955973`*^9}, {3.63233179658075*^9, 3.6323317975509443`*^9}, {
   3.6944720644135227`*^9, 3.69447210597191*^9}, {3.7259062327923117`*^9, 
   3.7259062524863167`*^9}, {3.725907232828145*^9, 3.725907250223613*^9}, 
   3.7259096389272213`*^9},ExpressionUUID->"45df9070-ccf0-4786-bf73-\
86c5a487c6db"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{3.624631343727393*^9, 3.624637590287242*^9, 
  3.6246376455581627`*^9, 3.6253124733586063`*^9, 3.625312953578725*^9, 
  3.625314211256366*^9, 3.625588232866968*^9, 3.625588588153764*^9, 
  3.6323198486289454`*^9, 3.694472107334415*^9, 3.725906254030828*^9, 
  3.7259072514119043`*^9},ExpressionUUID->"8e6c4501-ada3-47dc-a6c6-\
ca2dcbae5b1c"]
}, Open  ]],

Cell["The equation becomes", "Text",
 CellChangeTimes->{{3.6246312922586803`*^9, 3.624631303969554*^9}, {
  3.624631420483922*^9, 
  3.624631422630829*^9}},ExpressionUUID->"75dd36b3-643c-4ebe-9b2b-\
71bdc2c1e4cb"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Apply", "[", 
    RowBox[{"Cross", ",", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"pb3", "[", "t", "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"t", ",", 
         RowBox[{"{", 
          RowBox[{"t1", ",", " ", "t2", ",", " ", "t3"}], "}"}]}], "}"}]}], 
      "]"}]}], "]"}], " ", ".", 
   RowBox[{"{", 
    RowBox[{"d1", ",", " ", "d2", ",", " ", "d3", ",", " ", "d4"}], "}"}]}], 
  " ", "\[Equal]", " ", "0"}]], "Input",
 CellChangeTimes->{{3.624631366417198*^9, 3.6246313693846407`*^9}, {
   3.6246314285080976`*^9, 3.6246314469616823`*^9}, 3.624637673928425*^9, {
   3.625312959084186*^9, 3.62531296177288*^9}, 3.625588244961546*^9, 
   3.625588599673871*^9, {3.632319851426396*^9, 3.632319855543757*^9}, {
   3.72590625880599*^9, 3.7259062591748543`*^9}, {3.7259072565600357`*^9, 
   3.7259072656401167`*^9}, {3.7259096550409937`*^9, 
   3.725909659679207*^9}},ExpressionUUID->"78563168-ead7-4456-911e-\
f825c3fd3d07"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"d4", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SuperscriptBox["t1", "2"]}], " ", "t2"}], "+", 
      RowBox[{"t1", " ", 
       SuperscriptBox["t2", "2"]}], "+", 
      RowBox[{
       SuperscriptBox["t1", "2"], " ", "t3"}], "-", 
      RowBox[{
       SuperscriptBox["t2", "2"], " ", "t3"}], "-", 
      RowBox[{"t1", " ", 
       SuperscriptBox["t3", "2"]}], "+", 
      RowBox[{"t2", " ", 
       SuperscriptBox["t3", "2"]}]}], ")"}]}], "+", 
   RowBox[{"d3", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SuperscriptBox["t1", "3"], " ", "t2"}], "-", 
      RowBox[{"t1", " ", 
       SuperscriptBox["t2", "3"]}], "-", 
      RowBox[{
       SuperscriptBox["t1", "3"], " ", "t3"}], "+", 
      RowBox[{
       SuperscriptBox["t2", "3"], " ", "t3"}], "+", 
      RowBox[{"t1", " ", 
       SuperscriptBox["t3", "3"]}], "-", 
      RowBox[{"t2", " ", 
       SuperscriptBox["t3", "3"]}]}], ")"}]}], "+", 
   RowBox[{"d2", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SuperscriptBox["t1", "3"]}], " ", 
       SuperscriptBox["t2", "2"]}], "+", 
      RowBox[{
       SuperscriptBox["t1", "2"], " ", 
       SuperscriptBox["t2", "3"]}], "+", 
      RowBox[{
       SuperscriptBox["t1", "3"], " ", 
       SuperscriptBox["t3", "2"]}], "-", 
      RowBox[{
       SuperscriptBox["t2", "3"], " ", 
       SuperscriptBox["t3", "2"]}], "-", 
      RowBox[{
       SuperscriptBox["t1", "2"], " ", 
       SuperscriptBox["t3", "3"]}], "+", 
      RowBox[{
       SuperscriptBox["t2", "2"], " ", 
       SuperscriptBox["t3", "3"]}]}], ")"}]}], "+", 
   RowBox[{"d1", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SuperscriptBox["t1", "3"], " ", 
       SuperscriptBox["t2", "2"], " ", "t3"}], "-", 
      RowBox[{
       SuperscriptBox["t1", "2"], " ", 
       SuperscriptBox["t2", "3"], " ", "t3"}], "-", 
      RowBox[{
       SuperscriptBox["t1", "3"], " ", "t2", " ", 
       SuperscriptBox["t3", "2"]}], "+", 
      RowBox[{"t1", " ", 
       SuperscriptBox["t2", "3"], " ", 
       SuperscriptBox["t3", "2"]}], "+", 
      RowBox[{
       SuperscriptBox["t1", "2"], " ", "t2", " ", 
       SuperscriptBox["t3", "3"]}], "-", 
      RowBox[{"t1", " ", 
       SuperscriptBox["t2", "2"], " ", 
       SuperscriptBox["t3", "3"]}]}], ")"}]}]}], "\[Equal]", "0"}]], "Output",\

 CellChangeTimes->{3.63231985664467*^9, 3.6944721326905527`*^9, 
  3.7259062684952507`*^9, 3.7259072663348713`*^9, 
  3.725909662454133*^9},ExpressionUUID->"462ab983-f4e1-4da3-9fdd-\
6e70b05681b0"]
}, Open  ]],

Cell["\<\
The equation says {d1, d2, d3, d4} is perpendicular to a vector that is \
itself perpendicular to all of pb3[t1], pb3[t2], pb3[t3]. 
So {d1, d2, d3, d4} lives in the span of pb3[t1], pb3[t2], pb3[t3]. 
But when we hold hold t1 and t2 fixed, and let t3 vary freely, {d1, d2, d3, \
d4} remains constant while pb3[t3] moves all over the place.
So {d1, d2, d3, d4} must live in the span of pb3[t1], pb3[t2].
We use row reduction on the matrix {pb3[t1], pb3[t2], {d1, d2, d3, d4} to \
find the necessary conditions\
\>", "Text",
 CellChangeTimes->{{3.6246314566058617`*^9, 3.6246316190897837`*^9}, {
  3.624637686753696*^9, 3.624637708404756*^9}, {3.6253129702418413`*^9, 
  3.6253129914708014`*^9}, {3.625588603058117*^9, 3.625588645007084*^9}, {
  3.6323199557701807`*^9, 3.6323199744224253`*^9}, {3.6944721955561647`*^9, 
  3.694472200779871*^9}, {3.694472325261408*^9, 3.694472509550905*^9}, {
  3.6944725448555107`*^9, 3.6944726558470297`*^9}, {3.725907284969843*^9, 
  3.725907356031897*^9}, {3.7259096709141197`*^9, 
  3.725909682528775*^9}},ExpressionUUID->"020d56a0-d0e9-45ff-9d52-\
256409d52098"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{
    RowBox[{"pb3", "[", "t1", "]"}], ",", 
    RowBox[{"pb3", "[", "t2", "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"d1", ",", " ", "d2", ",", " ", "d3", ",", " ", "d4"}], "}"}]}], 
   "}"}], " ", "//", " ", "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.63249707655853*^9, 3.632497088724535*^9}, 
   3.725907367641721*^9, 
   3.725909687410007*^9},ExpressionUUID->"15c29775-282c-4b84-9d73-\
1566db292008"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "t1", 
      SuperscriptBox["t1", "2"], 
      SuperscriptBox["t1", "3"]},
     {"1", "t2", 
      SuperscriptBox["t2", "2"], 
      SuperscriptBox["t2", "3"]},
     {"d1", "d2", "d3", "d4"}
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
 CellChangeTimes->{{3.632497080179339*^9, 3.6324970890988693`*^9}, 
   3.725907369321389*^9, 
   3.7259096899896717`*^9},ExpressionUUID->"e81726e4-5ed8-45c9-aa86-\
cba0cb2d35e2"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Last", "[", 
   RowBox[{"RowReduce", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"pb3", "[", "t1", "]"}], ",", 
      RowBox[{"pb3", "[", "t2", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"d1", ",", " ", "d2", ",", " ", "d3", ",", " ", "d4"}], 
       "}"}]}], "}"}], "]"}], "]"}], " "}]], "Input",
 CellChangeTimes->{{3.625313049816987*^9, 3.625313075968754*^9}, {
   3.625314225916129*^9, 3.6253142297168837`*^9}, {3.6255882689101973`*^9, 
   3.625588271430272*^9}, {3.62558864823825*^9, 3.6255886522654257`*^9}, {
   3.632319989668704*^9, 3.63231999948895*^9}, {3.725907372490027*^9, 
   3.7259073745212727`*^9}, 
   3.7259096946097*^9},ExpressionUUID->"e0d838fa-1bd5-43a5-b72a-9f17e059f76d"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", "1", ",", 
   FractionBox[
    RowBox[{"d4", "-", 
     RowBox[{"d2", " ", 
      SuperscriptBox["t1", "2"]}], "-", 
     RowBox[{"d2", " ", "t1", " ", "t2"}], "+", 
     RowBox[{"d1", " ", 
      SuperscriptBox["t1", "2"], " ", "t2"}], "-", 
     RowBox[{"d2", " ", 
      SuperscriptBox["t2", "2"]}], "+", 
     RowBox[{"d1", " ", "t1", " ", 
      SuperscriptBox["t2", "2"]}]}], 
    RowBox[{"d3", "-", 
     RowBox[{"d2", " ", "t1"}], "-", 
     RowBox[{"d2", " ", "t2"}], "+", 
     RowBox[{"d1", " ", "t1", " ", "t2"}]}]]}], "}"}]], "Output",
 CellChangeTimes->{
  3.6253142303023443`*^9, {3.625588654782098*^9, 3.6255886844197893`*^9}, {
   3.6323199862089977`*^9, 3.632320000579833*^9}, 3.7259073754125643`*^9, 
   3.725909695822371*^9},ExpressionUUID->"b25ee89a-07aa-48fc-874f-\
ddb185b3d189"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"%", 
   RowBox[{"(", 
    RowBox[{"d3", "-", 
     RowBox[{"d2", " ", "t1"}], "-", 
     RowBox[{"d2", " ", "t2"}], "+", 
     RowBox[{"d1", " ", "t1", " ", "t2"}]}], ")"}]}], "//", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.624631594723413*^9, 3.624631672821149*^9}, {
   3.6246317387145977`*^9, 3.6246317405255833`*^9}, {3.624637713109537*^9, 
   3.624637715247023*^9}, 3.624637863488489*^9, {3.625313003093687*^9, 
   3.625313005479151*^9}, {3.625314241913039*^9, 3.625314281714324*^9}, {
   3.6255886570921707`*^9, 3.625588682674247*^9}, 3.725907399209516*^9, 
   3.725909703841847*^9},ExpressionUUID->"9606b283-1a3d-40a6-a4ed-\
11079f93746a"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", 
   RowBox[{"d3", "+", 
    RowBox[{"d1", " ", "t1", " ", "t2"}], "-", 
    RowBox[{"d2", " ", 
     RowBox[{"(", 
      RowBox[{"t1", "+", "t2"}], ")"}]}]}], ",", 
   RowBox[{"d4", "+", 
    RowBox[{"d1", " ", "t1", " ", "t2", " ", 
     RowBox[{"(", 
      RowBox[{"t1", "+", "t2"}], ")"}]}], "-", 
    RowBox[{"d2", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["t1", "2"], "+", 
       RowBox[{"t1", " ", "t2"}], "+", 
       SuperscriptBox["t2", "2"]}], ")"}]}]}]}], "}"}]], "Output",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{{3.624631644088118*^9, 3.62463167319315*^9}, 
   3.624631741350107*^9, 3.624637719027878*^9, 3.624637865174136*^9, 
   3.625313009281472*^9, 3.6253142419144163`*^9, {3.625314273890616*^9, 
   3.6253142820648823`*^9}, {3.625588660916847*^9, 3.6255886854390583`*^9}, 
   3.632320006597025*^9, 3.725907400351358*^9, 
   3.7259097049708138`*^9},ExpressionUUID->"69e285ef-61fc-47b3-9c18-\
954acd50fcf9"]
}, Open  ]],

Cell["\<\
This must be zero. 
So the two polynomials in t1, t2 must have a common root. 
We can change variables to a = (t1 t2) and b = (t1+t2) and significantly \
simplify the polynomials.
\
\>", "Text",
 CellChangeTimes->{{3.624631718756071*^9, 3.624631723401676*^9}, {
  3.6246317822738743`*^9, 3.6246318753578463`*^9}, {3.624638231150289*^9, 
  3.624638233192225*^9}, {3.6253143052276783`*^9, 3.625314305686679*^9}, {
  3.632320012213831*^9, 3.6323200328443193`*^9}, {3.632320074584661*^9, 
  3.632320097318576*^9}, {3.632320265464312*^9, 3.632320272797765*^9}, {
  3.725908143344699*^9, 3.7259082058949413`*^9}, {3.725909722984207*^9, 
  3.725909741182939*^9}, {3.757855050557931*^9, 
  3.757855051302176*^9}},ExpressionUUID->"c40425dd-6a9d-4ccd-93e2-\
fe8b06aa19b2"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", 
     RowBox[{"d3", "+", 
      RowBox[{"d1", " ", "t1", " ", "t2"}], "-", 
      RowBox[{"d2", " ", 
       RowBox[{"(", 
        RowBox[{"t1", "+", "t2"}], ")"}]}]}], ",", 
     RowBox[{"d4", "+", 
      RowBox[{"d1", " ", "t1", " ", "t2", " ", 
       RowBox[{"(", 
        RowBox[{"t1", "+", "t2"}], ")"}]}], "-", 
      RowBox[{"d2", " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["t1", "2"], "+", 
         RowBox[{"t1", " ", "t2"}], "+", 
         SuperscriptBox["t2", "2"]}], ")"}]}]}]}], "}"}], " ", "-", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"0", ",", "0", ",", 
       RowBox[{"d3", "+", 
        RowBox[{"d1", " ", "a"}], "-", 
        RowBox[{"d2", " ", "b"}]}], ",", 
       RowBox[{"d4", "+", 
        RowBox[{"d1", " ", "a", " ", "b"}], "-", 
        RowBox[{"d2", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"b", " ", "b"}], " ", "-", " ", "a"}], ")"}]}]}]}], "}"}], 
     " ", "/.", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"a", "\[Rule]", 
        RowBox[{"t1", " ", "t2"}]}], ",", " ", 
       RowBox[{"b", "\[Rule]", 
        RowBox[{"t1", "+", "t2"}]}]}], "}"}]}], ")"}]}], "//", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.725908215696102*^9, 3.725908246939039*^9}, {
  3.725909758202867*^9, 
  3.7259097888158216`*^9}},ExpressionUUID->"dc71739f-9d8b-4c1a-af1b-\
0ed5597e755c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"0", ",", "0", ",", "0", ",", "0"}], "}"}]], "Output",
 CellChangeTimes->{3.725908247232461*^9, 
  3.7259097916986637`*^9},ExpressionUUID->"3a4a04d1-a3d6-45a9-9e1e-\
1cc4d42714fa"]
}, Open  ]],

Cell["\<\
How can we tell if two polynomials have a common root?
We use resultants.\
\>", "Text",
 CellChangeTimes->{{3.7259082073608303`*^9, 3.725908207362322*^9}, {
  3.725908250006879*^9, 
  3.725908263702654*^9}},ExpressionUUID->"61554644-008d-4ae1-90bc-\
f009d7aa842a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Solve", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"Resultant", "[", 
      RowBox[{
       RowBox[{"d3", "+", 
        RowBox[{"d1", " ", "a"}], "-", 
        RowBox[{"d2", " ", "b"}]}], ",", 
       RowBox[{"d4", "+", 
        RowBox[{"d1", " ", "a", " ", "b"}], "-", 
        RowBox[{"d2", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"b", " ", "b"}], " ", "-", " ", "a"}], ")"}]}]}], ",", 
       "a"}], "]"}], "\[Equal]", "0"}], ",", "b"}], "]"}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.725907788060199*^9, 3.7259078291717052`*^9}, {
   3.725907860811027*^9, 3.725907990304303*^9}, 
   3.725909809730728*^9},ExpressionUUID->"ce22abbb-3481-4a79-ac90-\
9a908469e311"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"b", "\[Rule]", 
    FractionBox[
     RowBox[{
      RowBox[{"d2", " ", "d3"}], "-", 
      RowBox[{"d1", " ", "d4"}]}], 
     RowBox[{
      SuperscriptBox["d2", "2"], "-", 
      RowBox[{"d1", " ", "d3"}]}]]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{{3.725907944367291*^9, 3.725907952329335*^9}, {
   3.725907987021657*^9, 3.7259079907385683`*^9}, {3.725908280571601*^9, 
   3.725908295482201*^9}, 
   3.725909811597116*^9},ExpressionUUID->"73cb1ec8-de13-4344-82f2-\
a31f6cc909df"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"d3", "+", 
        RowBox[{"d1", " ", "a"}], "-", 
        RowBox[{"d2", " ", "b"}]}], ")"}], "/.", " ", 
      RowBox[{"First", "[", "%", "]"}]}], " ", ")"}], "\[Equal]", " ", "0"}], 
   ",", " ", "a"}], "]"}]], "Input",
 CellChangeTimes->{{3.725908001545474*^9, 3.725908036599893*^9}, {
   3.7259082855045633`*^9, 3.7259083021998787`*^9}, 
   3.7259098261625957`*^9},ExpressionUUID->"af78cccc-09c4-4be3-ad5f-\
16c9cd2f4fb4"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"a", "\[Rule]", 
    FractionBox[
     RowBox[{
      RowBox[{"-", 
       SuperscriptBox["d3", "2"]}], "+", 
      RowBox[{"d2", " ", "d4"}]}], 
     RowBox[{
      RowBox[{"-", 
       SuperscriptBox["d2", "2"]}], "+", 
      RowBox[{"d1", " ", "d3"}]}]]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{{3.725908018757278*^9, 3.725908037671936*^9}, {
   3.725908292356852*^9, 3.725908303394034*^9}, 
   3.7259098270219793`*^9},ExpressionUUID->"9da875ec-e75d-44ca-9ea0-\
b27ec4f20f1d"]
}, Open  ]],

Cell["\<\
So we know the values of a and b as a function of {d1, d2, d3, d4}. Now all \
we have to do is find the values of t1 and t2 as a function of a and b. Since \
 a = (t1 t2) and b = (t1+t2), t1 and t2 are the roots of the quadratic \
equation\
\>", "Text",
 CellChangeTimes->{{3.725908326524639*^9, 3.7259083872390947`*^9}, {
   3.725908445511619*^9, 3.725908488486146*^9}, 3.7259098541616907`*^9, {
   3.725919575029832*^9, 
   3.725919579380628*^9}},ExpressionUUID->"55929979-8d30-46f8-8857-\
643cc4294dd1"],

Cell[BoxData[
 RowBox[{
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
   RowBox[{"d2", " ", "d4"}]}], " ", "\[Equal]", " ", "0"}]], "Input",
 CellChangeTimes->{{3.725908493298284*^9, 3.725908531318142*^9}, {
  3.725909866785163*^9, 
  3.725909876983799*^9}},ExpressionUUID->"ba296042-4a5e-4a96-9190-\
8e55933df66d"],

Cell["So the double-point polynomial is ", "Text",
 CellChangeTimes->{{3.624637923503305*^9, 3.624637934397942*^9}, {
  3.62531436457985*^9, 
  3.625314365153803*^9}},ExpressionUUID->"64d041ff-65a3-41ed-824d-\
ced9cb69fadc"],

Cell[BoxData[
 RowBox[{
  RowBox[{"doublepointpolyp", "[", 
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
 InitializationCell->True,
 CellChangeTimes->{{3.725922703443808*^9, 3.725922710098412*^9}, 
   3.7308304740368023`*^9},
 CellLabel->"In[32]:=",ExpressionUUID->"ec968161-e457-45ba-bd94-f22aed8a6cd6"],

Cell[BoxData[
 RowBox[{
  RowBox[{"doublepointpolyp", "[", 
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
 InitializationCell->True,
 CellChangeTimes->{{3.6246379530067043`*^9, 3.624637989196463*^9}, {
   3.625314372829866*^9, 3.6253144026754637`*^9}, {3.627825257457056*^9, 
   3.627825258186947*^9}, 3.632433129728518*^9, {3.69447273817277*^9, 
   3.694472747532902*^9}, {3.7259086557120523`*^9, 3.7259086768088083`*^9}, 
   3.725908713304421*^9, {3.725908788295845*^9, 3.725908821487512*^9}, {
   3.725909901738064*^9, 3.725909904624796*^9}, {3.725910077027936*^9, 
   3.725910098913357*^9}, {3.725920400449435*^9, 3.725920409753324*^9}, {
   3.730830477573229*^9, 3.730830480015916*^9}},
 CellLabel->"In[33]:=",ExpressionUUID->"3ced6a48-89b7-44f5-ae0e-28defe3ac4f7"],

Cell[BoxData[
 RowBox[{
  RowBox[{"doublepointp", "[", 
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
          RowBox[{"doublepointpolyp", "[", 
           RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", "0"}], ",", 
         " ", "t", ",", " ", "Reals"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True,
 CellChangeTimes->{{3.627918835992736*^9, 3.627918885730254*^9}, {
   3.632416422103484*^9, 3.632416486745905*^9}, 3.632416771036216*^9, 
   3.632433136208488*^9, 3.694472751881228*^9, 3.725920742854494*^9, {
   3.7308304833566236`*^9, 3.7308305070890913`*^9}},
 CellLabel->"In[34]:=",ExpressionUUID->"df11dcc1-282c-492f-a2f7-b8248dccb2a8"],

Cell["\<\
Once again, we can write the same equations directly in the Bernstein basis, \
to avoid transforming the coefficients.\
\>", "Text",
 CellChangeTimes->{{3.7275608678370733`*^9, 3.7275609059151382`*^9}, 
   3.727561399384445*^9},ExpressionUUID->"6fceb3a8-6882-4b12-a372-\
1e050b33f9bd"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"2", 
   RowBox[{
    RowBox[{"b2p", "[", "2", "]"}], ".", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
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
         RowBox[{"d2", " ", "d4"}]}], " ", "//", " ", 
        RowBox[{
         RowBox[{"CoefficientList", "[", 
          RowBox[{"#", ",", "t"}], "]"}], "&"}]}], " ", ")"}], "/.", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"d1", "->", 
         RowBox[{
          RowBox[{"-", "b0"}], "+", 
          RowBox[{"3", " ", "b1"}], "-", 
          RowBox[{"3", " ", "b2"}], "+", "b3"}]}], ",", 
        RowBox[{"d2", "->", 
         RowBox[{
          RowBox[{"-", "b0"}], "+", 
          RowBox[{"2", " ", "b1"}], "-", "b2"}]}], ",", " ", 
        RowBox[{"d3", "->", 
         RowBox[{
          RowBox[{"-", "b0"}], "+", "b1"}]}], ",", " ", 
        RowBox[{"d4", "\[Rule]", 
         RowBox[{"-", "b0"}]}]}], "}"}]}], ")"}]}]}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.7275609089871693`*^9, 3.727560949914315*^9}, {
   3.727561028244825*^9, 3.727561048018441*^9}, {3.727911094185215*^9, 
   3.7279111009589453`*^9}, 
   3.7664224371306067`*^9},ExpressionUUID->"c469c4cd-570c-407f-94bd-\
a028b34d5cde"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"2", " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["b1", "2"], "-", 
      RowBox[{"b0", " ", "b2"}]}], ")"}]}], ",", 
   RowBox[{
    RowBox[{"b1", " ", "b2"}], "-", 
    RowBox[{"b0", " ", "b3"}]}], ",", 
   RowBox[{"2", " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["b2", "2"], "-", 
      RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}]], "Output",
 CellChangeTimes->{{3.727560945523828*^9, 3.727560950105966*^9}, {
   3.727561037593628*^9, 3.7275610483916283`*^9}, {3.7279110980331373`*^9, 
   3.727911101872452*^9}, 
   3.7664224412269382`*^9},ExpressionUUID->"fbc3dff9-b02e-4cec-9dca-\
ff645f353ff9"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"doublepointpolyb", "[", 
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
      RowBox[{"crossbmatrix", "[", "m", "]"}]}], "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"b3", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ",", 
        RowBox[{"b2", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
        RowBox[{"b1", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "3", "]"}], "]"}]}], ",", " ", 
        RowBox[{"b0", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "4", "]"}], "]"}]}]}], "}"}], ",", " ", 
      RowBox[{
       RowBox[{"bb2", "[", "t", "]"}], ".", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["b1", "2"], "-", 
            RowBox[{"b0", " ", "b2"}]}], ")"}]}], ",", 
         RowBox[{
          RowBox[{"b1", " ", "b2"}], " ", "-", 
          RowBox[{"b0", " ", "b3"}]}], ",", 
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["b2", "2"], "-", 
            RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}]}]}], " ", "]"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.733955067995954*^9, 3.733955095735038*^9}, {
  3.766422667500592*^9, 3.766422709356476*^9}, {3.766422874380419*^9, 
  3.766422874625531*^9}},
 CellLabel->"In[35]:=",ExpressionUUID->"aeb0f813-19e3-4105-a5f1-b46927d19d8e"],

Cell[BoxData[
 RowBox[{
  RowBox[{"doublepointpolyb", "[", 
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
      RowBox[{"crossbmatrix", "[", "m", "]"}]}], "}"}], ",", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"b3", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ",", 
        RowBox[{"b2", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
        RowBox[{"b1", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "3", "]"}], "]"}]}], ",", " ", 
        RowBox[{"b0", " ", "=", " ", 
         RowBox[{"c", "[", 
          RowBox[{"[", "4", "]"}], "]"}]}]}], "}"}], ",", " ", 
      RowBox[{
       RowBox[{"bb2", "[", "t", "]"}], ".", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["b1", "2"], "-", 
            RowBox[{"b0", " ", "b2"}]}], ")"}]}], ",", 
         RowBox[{
          RowBox[{"b1", " ", "b2"}], " ", "-", 
          RowBox[{"b0", " ", "b3"}]}], ",", 
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["b2", "2"], "-", 
            RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}]}]}], " ", "]"}]}], 
   "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.7339551249233847`*^9, 3.733955129743844*^9}, {
   3.757867152072472*^9, 3.75786715318543*^9}, 3.766422731978849*^9, {
   3.766422880033206*^9, 3.7664228800938463`*^9}},
 CellLabel->"In[36]:=",ExpressionUUID->"11c981e2-5fba-45ac-a4ae-2eaa0605b040"],

Cell[BoxData[
 RowBox[{
  RowBox[{"doublepointb", "[", 
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
          RowBox[{"doublepointpolyb", "[", 
           RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", "0"}], ",", 
         " ", "t", ",", " ", "Reals"}], "]"}]}]}], "]"}]}], "]"}]}]], "Input",\

 InitializationCell->True,
 CellChangeTimes->{{3.733955182046563*^9, 3.733955185463994*^9}},
 CellLabel->"In[37]:=",ExpressionUUID->"d6ae3d06-5c80-4c5c-b7de-36ed295855d2"],

Cell["\<\
One interesting thing to notice is that the discriminant of the double-point \
polynomial and the discriminant of the inflection polynomials are the same up \
to a negative constant!\
\>", "Text",
 CellChangeTimes->{{3.624638321132119*^9, 3.6246383393293257`*^9}, {
  3.624638509958028*^9, 3.62463854983782*^9}, {3.632330366222746*^9, 
  3.632330367347783*^9}, {3.725919760208199*^9, 
  3.725919797623214*^9}},ExpressionUUID->"7952c65d-caec-4e02-8881-\
c551aee65cb2"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Discriminant", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "d4"}], ",", 
       RowBox[{"3", " ", "d3"}], ",", " ", 
       RowBox[{
        RowBox[{"-", "3"}], " ", "d2"}], ",", "d1"}], "}"}], ".", 
     RowBox[{"pb3", "[", "t", "]"}]}], ",", "t"}], "]"}], "/", 
  "27"}]], "Input",
 CellChangeTimes->{{3.624638267692135*^9, 3.624638307187957*^9}, 
   3.7259196505499697`*^9, {3.72591971506378*^9, 3.725919734878524*^9}, {
   3.725920832869079*^9, 3.725920835652793*^9}, {3.7275622146970778`*^9, 
   3.727562236040023*^9}},ExpressionUUID->"60e45341-6a77-4327-8842-\
79b77e99f768"],

Cell[BoxData[
 RowBox[{
  RowBox[{"3", " ", 
   SuperscriptBox["d2", "2"], " ", 
   SuperscriptBox["d3", "2"]}], "-", 
  RowBox[{"4", " ", "d1", " ", 
   SuperscriptBox["d3", "3"]}], "-", 
  RowBox[{"4", " ", 
   SuperscriptBox["d2", "3"], " ", "d4"}], "+", 
  RowBox[{"6", " ", "d1", " ", "d2", " ", "d3", " ", "d4"}], "-", 
  RowBox[{
   SuperscriptBox["d1", "2"], " ", 
   SuperscriptBox["d4", "2"]}]}]], "Output",
 CellChangeTimes->{{3.6246382797282267`*^9, 3.6246383080609694`*^9}, 
   3.725919650957211*^9, {3.7259197214631863`*^9, 3.72591973657763*^9}, 
   3.72592083664956*^9, 
   3.727562236685128*^9},ExpressionUUID->"62c1f2ea-8f49-4f2d-b527-\
5f99c8de3d80"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Discriminant", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       SuperscriptBox["d3", "2"], "-", 
       RowBox[{"d2", " ", "d4"}]}], ",", 
      RowBox[{
       RowBox[{"d1", " ", "d4"}], "-", 
       RowBox[{"d2", " ", "d3"}]}], ",", 
      RowBox[{
       SuperscriptBox["d2", "2"], "-", 
       RowBox[{"d1", " ", "d3"}]}]}], " ", "}"}], ".", 
    RowBox[{"pb2", "[", "t", "]"}]}], " ", ",", "t"}], "]"}]], "Input",
 CellChangeTimes->{{3.624638258366626*^9, 3.624638302790533*^9}, {
  3.72591960292095*^9, 3.7259196352954693`*^9}, {3.725919739871387*^9, 
  3.725919742951404*^9}, {3.727562244769888*^9, 
  3.7275622768645563`*^9}},ExpressionUUID->"9d11cfcf-7f06-4236-80f4-\
1bfdaa89980c"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", "3"}], " ", 
   SuperscriptBox["d2", "2"], " ", 
   SuperscriptBox["d3", "2"]}], "+", 
  RowBox[{"4", " ", "d1", " ", 
   SuperscriptBox["d3", "3"]}], "+", 
  RowBox[{"4", " ", 
   SuperscriptBox["d2", "3"], " ", "d4"}], "-", 
  RowBox[{"6", " ", "d1", " ", "d2", " ", "d3", " ", "d4"}], "+", 
  RowBox[{
   SuperscriptBox["d1", "2"], " ", 
   SuperscriptBox["d4", "2"]}]}]], "Output",
 CellChangeTimes->{
  3.6246382655871277`*^9, {3.6246382972304792`*^9, 3.624638303080738*^9}, {
   3.725919613109991*^9, 3.72591963680681*^9}, {3.725919740262993*^9, 
   3.725919743233202*^9}, 3.7259208379753313`*^9, 
   3.7275622781926737`*^9},ExpressionUUID->"c7dee765-e8f4-484d-85c5-\
6a71dfa6cee9"]
}, Open  ]],

Cell["Or, in the Bernstein basis,", "Text",
 CellChangeTimes->{{3.7275610691449337`*^9, 
  3.727561078749331*^9}},ExpressionUUID->"890c92a7-e990-4b8d-a3d9-\
01db863fc511"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Discriminant", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"{", 
      RowBox[{"b0", ",", "b1", ",", "b2", ",", " ", "b3"}], "}"}], ".", 
     RowBox[{"bb3", "[", "t", "]"}]}], ",", " ", "t"}], "]"}], "/", 
  "27"}]], "Input",
 CellChangeTimes->{{3.727561123039702*^9, 3.727561138045431*^9}, {
  3.727618819653001*^9, 3.7276188204178457`*^9}, {3.727911134830203*^9, 
  3.727911145734693*^9}, {3.766422964495047*^9, 
  3.7664229698676*^9}},ExpressionUUID->"089e4bba-548c-4dc9-a3ed-5396ed3ce43a"],

Cell[BoxData[
 RowBox[{
  RowBox[{"3", " ", 
   SuperscriptBox["b1", "2"], " ", 
   SuperscriptBox["b2", "2"]}], "-", 
  RowBox[{"4", " ", "b0", " ", 
   SuperscriptBox["b2", "3"]}], "-", 
  RowBox[{"4", " ", 
   SuperscriptBox["b1", "3"], " ", "b3"}], "+", 
  RowBox[{"6", " ", "b0", " ", "b1", " ", "b2", " ", "b3"}], "-", 
  RowBox[{
   SuperscriptBox["b0", "2"], " ", 
   SuperscriptBox["b3", "2"]}]}]], "Output",
 CellChangeTimes->{{3.727561127056157*^9, 3.727561138735178*^9}, {
   3.727911140909746*^9, 3.727911146026441*^9}, 
   3.766422971678001*^9},ExpressionUUID->"b72afd8e-56b7-4d71-9526-\
abfb24ffdb55"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Discriminant", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["b1", "2"], "-", 
          RowBox[{"b0", " ", "b2"}]}], ")"}]}], ",", 
       RowBox[{
        RowBox[{"b1", " ", "b2"}], " ", "-", 
        RowBox[{"b0", " ", "b3"}]}], ",", 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["b2", "2"], "-", 
          RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}], ".", 
     RowBox[{"bb2", "[", "t", "]"}]}], ",", " ", "t"}], "]"}], "/", 
  "4"}]], "Input",
 CellChangeTimes->{{3.7275610846090393`*^9, 3.727561098549123*^9}, {
   3.727561141927292*^9, 3.727561142117488*^9}, {3.7279111577210913`*^9, 
   3.727911162768655*^9}, 
   3.766423000578017*^9},ExpressionUUID->"b31fe16b-070b-405f-86b8-\
56a16dbbd043"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", "3"}], " ", 
   SuperscriptBox["b1", "2"], " ", 
   SuperscriptBox["b2", "2"]}], "+", 
  RowBox[{"4", " ", "b0", " ", 
   SuperscriptBox["b2", "3"]}], "+", 
  RowBox[{"4", " ", 
   SuperscriptBox["b1", "3"], " ", "b3"}], "-", 
  RowBox[{"6", " ", "b0", " ", "b1", " ", "b2", " ", "b3"}], "+", 
  RowBox[{
   SuperscriptBox["b0", "2"], " ", 
   SuperscriptBox["b3", "2"]}]}]], "Output",
 CellChangeTimes->{
  3.727561099312634*^9, 3.727561142540489*^9, {3.727911159863873*^9, 
   3.727911163157156*^9}, 
   3.766423002414019*^9},ExpressionUUID->"04c14431-cc78-4c28-bc0e-\
22c449b1a8d7"]
}, Open  ]],

Cell[TextData[{
 "This means that when the cubic has a double point (positive discriminant in \
double-point polynomial), it has a single inflection (negative discriminant \
leading to a single real root in the inflection polynomial). This is what we \
call a ",
 StyleBox["loop",
  FontSlant->"Italic"],
 ". Conversely, when the cubic has no double-point (negative discriminant in \
the double-point polynomial), it has three inflections (positive discriminant \
leading to three real roots of the inflection polynomial). This is what we \
call a ",
 StyleBox["serpentine",
  FontSlant->"Italic"],
 ". Finally, when the discriminant of both polynomials is zero, the loop \
degenerates into a ",
 StyleBox["cusp,",
  FontSlant->"Italic"],
 " with parameter given by the repeated root. "
}], "Text",
 CellChangeTimes->{{3.624638321132119*^9, 3.6246383393293257`*^9}, {
  3.624638509958028*^9, 3.62463854983782*^9}, {3.6246389995033283`*^9, 
  3.624639168250757*^9}, {3.627834873217267*^9, 3.627834888831962*^9}, {
  3.627836922967164*^9, 3.6278369777206163`*^9}, {3.627840637382468*^9, 
  3.627840647259799*^9}, {3.627904674293149*^9, 3.6279046758875427`*^9}, {
  3.6279047301972027`*^9, 3.627904779390456*^9}, {3.632330323529997*^9, 
  3.632330331617457*^9}, {3.632330384324293*^9, 3.632330392829247*^9}, {
  3.632415699933312*^9, 3.632415701429832*^9}, {3.694472781081846*^9, 
  3.694472795490049*^9}, {3.7259198241918383`*^9, 3.725920203435664*^9}, {
  3.727561460083433*^9, 
  3.727561486786975*^9}},ExpressionUUID->"49e34801-9885-4c9c-92c5-\
8e89654510f0"],

Cell["\<\
What happens to the double-point polynomial, the inflection polynomial, and \
the discriminant when we apply a projective transformation to the \
control-point matrix? First, note that a projective transformation simply \
multiplies all bi by the same coefficient (the determinant of the \
transformation). Since the coefficients of the inflection and double-point \
polynomials are themselves homogeneous polynomials in b1, b2, b3, and b4 of \
the same degree, the projective transformation simply multiplies the \
inflection and double-point polynomial by a constant. The result is that the \
parameters of the inflection points and of the double-point do not change. \
The discriminant does not change either. They are all projective invariants.\
\>", "Text",
 CellChangeTimes->{{3.727561504685354*^9, 3.727561538377342*^9}, {
  3.7275615763868523`*^9, 
  3.72756187538043*^9}},ExpressionUUID->"36437d83-254f-4626-a653-\
3115bf8cde05"],

Cell["\<\
In \[OpenCurlyDoubleQuote]2002 - Blinn - Using Tensor Diagrams to Represent \
and Solve Geometric Problems, chapter  0-05\[CloseCurlyDoubleQuote], there is \
a \[OpenCurlyDoubleQuote]gentler form\[CloseCurlyDoubleQuote]  for the \
discriminant of a cubic in Power basis. Here is his result for the inflection \
polynomial:\
\>", "Text",
 CellChangeTimes->{{3.727618810632243*^9, 3.7276188912645693`*^9}, {
  3.727618981072382*^9, 3.727619024787222*^9}, {3.727619385076586*^9, 
  3.7276193899809017`*^9}, {3.7276195401483603`*^9, 3.727619582875654*^9}, {
  3.727697764453274*^9, 
  3.72769776463517*^9}},ExpressionUUID->"93804267-d766-4efb-bde2-\
133e4c0e210e"],

Cell[BoxData[
 RowBox[{
  RowBox[{"discriminantp", "[", 
   RowBox[{"{", 
    RowBox[{"d1_", ",", " ", "d2_", ",", " ", "d3_", ",", " ", "d4_"}], "}"}],
    "]"}], " ", ":=", "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"A", " ", "=", " ", "d1"}], ",", " ", 
      RowBox[{"B", " ", "=", " ", 
       RowBox[{"-", "d2"}]}], ",", " ", 
      RowBox[{"C", " ", "=", " ", "d3"}], ",", " ", 
      RowBox[{"D", "=", 
       RowBox[{"-", "d4"}]}]}], "}"}], ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"\[Delta]1", "=", 
         RowBox[{"Det", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"A", ",", "B"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"B", ",", "C"}], "}"}]}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"\[Delta]2", "=", 
         RowBox[{"Det", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"A", ",", "B"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"C", ",", "D"}], "}"}]}], "}"}], "]"}]}], ",", " ", 
        RowBox[{"\[Delta]3", "=", 
         RowBox[{"Det", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"B", ",", "C"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"C", ",", "D"}], "}"}]}], "}"}], "]"}]}]}], "}"}], ",", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"d", "=", 
          RowBox[{"Det", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"2", "\[Delta]1"}], ",", " ", "\[Delta]2"}], "}"}], 
             ",", 
             RowBox[{"{", 
              RowBox[{"\[Delta]2", ",", " ", 
               RowBox[{"2", "\[Delta]3"}]}], "}"}]}], "}"}], "]"}]}], "}"}], 
        ",", "d"}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.727612177196722*^9, 3.7276122979121447`*^9}, {
   3.727613484790909*^9, 3.7276136948709097`*^9}, 3.727613769187058*^9, 
   3.727614639009562*^9, {3.7276193952139053`*^9, 3.727619399742772*^9}, {
   3.72761944004547*^9, 3.7276195074224052`*^9}},
 CellLabel->"In[38]:=",ExpressionUUID->"a6114c2d-e731-4979-9009-cc81c771aa42"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"discriminantp", "[", 
    RowBox[{"{", 
     RowBox[{"d1", ",", " ", "d2", ",", " ", "d3", ",", " ", "d4"}], "}"}], 
    "]"}], " ", "-", " ", 
   RowBox[{
    RowBox[{"Discriminant", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "d4"}], ",", 
         RowBox[{"3", " ", "d3"}], ",", " ", 
         RowBox[{
          RowBox[{"-", "3"}], " ", "d2"}], ",", "d1"}], "}"}], ".", 
       RowBox[{"pb3", "[", "t", "]"}]}], ",", "t"}], "]"}], "/", "27"}]}], "//",
   "Simplify"}]], "Input",
 CellChangeTimes->{{3.727619513867209*^9, 3.727619520635857*^9}, {
  3.727623095604878*^9, 
  3.7276231013055573`*^9}},ExpressionUUID->"55a9b3d7-3b52-4c97-862e-\
2260f3ef176b"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{3.727619631644025*^9, 
  3.727623101662002*^9},ExpressionUUID->"f6ed3efd-bdbf-4966-bdbe-\
547d79181c1c"]
}, Open  ]],

Cell["\<\
We follow the same derivation to obtain a \[OpenCurlyDoubleQuote]gentler form\
\[CloseCurlyDoubleQuote] for the discriminant of the inflection polynomial \
but in the Bernstein basis:\
\>", "Text",
 CellChangeTimes->{{3.727619590036005*^9, 
  3.727619628901394*^9}},ExpressionUUID->"49c0a6fa-395f-4fc7-91c7-\
3a1303748559"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"2", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["b3", "2"], "+", 
          RowBox[{"b2", " ", "bb0"}]}], ")"}]}], ",", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "b2"}], " ", "b3"}], "-", 
        RowBox[{"b1", " ", "bb0"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"-", "b2"}], " ", "b3"}], "-", 
        RowBox[{"b1", " ", "bb0"}]}], ",", 
       RowBox[{"2", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["b2", "2"], "-", 
          RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}]}], "}"}], ")"}], "/.",
   " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"bb0", " ", "\[Rule]", " ", "b0"}], ",", " ", 
    RowBox[{"b3", "\[Rule]", "b1"}], ",", " ", 
    RowBox[{"b2", "\[Rule]", 
     RowBox[{"-", "b2"}]}], ",", " ", 
    RowBox[{"b1", "\[Rule]", "b3"}]}], "}"}]}]], "Input",
 CellChangeTimes->{{3.7664234200644503`*^9, 3.766423608243905*^9}, 
   3.766423659742177*^9, {3.76642369595019*^9, 3.766423722751604*^9}, {
   3.766423758516642*^9, 
   3.766423976072578*^9}},ExpressionUUID->"6418a5c5-5d89-4032-89e3-\
f3ce81ad48e1"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox["b1", "2"], "-", 
        RowBox[{"b0", " ", "b2"}]}], ")"}]}], ",", 
     RowBox[{
      RowBox[{"b1", " ", "b2"}], "-", 
      RowBox[{"b0", " ", "b3"}]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{"b1", " ", "b2"}], "-", 
      RowBox[{"b0", " ", "b3"}]}], ",", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox["b2", "2"], "-", 
        RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.766423797401108*^9, 
  3.7664239777303667`*^9}},ExpressionUUID->"8b234557-8445-494d-a10d-\
840978099200"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"b1", ",", "b2", ",", "b3"}], "}"}]], "Input",
 CellChangeTimes->{{3.766423793871501*^9, 
  3.7664237938767014`*^9}},ExpressionUUID->"69d5d632-f9ec-423a-a189-\
4853c88c8bb4"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"b0", " ", "b3"}], ",", 
     RowBox[{"b1", " ", "b3"}], ",", 
     RowBox[{"b2", " ", "b3"}]}], "}"}], "/", "b3"}], "//", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.766423725467473*^9, 
  3.766423727238503*^9}},ExpressionUUID->"6e3e1f89-5328-4a89-801a-\
84d1304bca24"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"b0", ",", "b1", ",", "b2"}], "}"}]], "Output",
 CellChangeTimes->{
  3.766423727480566*^9},ExpressionUUID->"8f74a8fd-238c-4c0d-b1f1-\
73f0a58a4ef1"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"b0", " ", "b1"}], ",", 
     RowBox[{"b0", " ", "b2"}], ",", 
     RowBox[{"b0", " ", "b3"}]}], "}"}], "/", "b0"}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.7664236991238813`*^9, 
  3.766423700757112*^9}},ExpressionUUID->"036229a9-2727-436a-8f15-\
77a92af5c5e5"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"b1", ",", "b2", ",", "b3"}], "}"}]], "Output",
 CellChangeTimes->{
  3.7664237010202217`*^9},ExpressionUUID->"dcf5c189-4efa-4d77-aa25-\
c7834052e9e8"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"b0", " ", "b1"}], ",", 
     SuperscriptBox["b1", "2"], ",", 
     RowBox[{"b1", " ", "b2"}]}], "}"}], "/", "b1"}], "//", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.7664236709663763`*^9, 
  3.7664236740725*^9}},ExpressionUUID->"90724b65-daf3-48c4-aa4c-4d7a63252c8d"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"b0", ",", "b1", ",", "b2"}], "}"}]], "Output",
 CellChangeTimes->{
  3.7664236742938967`*^9},ExpressionUUID->"0770879c-2131-4d8a-b0aa-\
76ef74c7fae9"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{"b0", ",", "b1", ",", "b2", ",", "b3"}], "}"}], ".", 
  RowBox[{"bb", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"t", ",", "s"}], "}"}], ",", "3"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.727617495586961*^9, 3.7276175411245327`*^9}, {
   3.727618004459166*^9, 3.727618024218787*^9}, 3.727619037247095*^9, {
   3.727911188198591*^9, 3.7279111898304377`*^9}, 3.727918274081677*^9, {
   3.7664231744496202`*^9, 3.7664231746353283`*^9}, 
   3.766423486719076*^9},ExpressionUUID->"85bee333-a1ea-4fa4-a658-\
9ed9afec8e81"],

Cell[BoxData[
 RowBox[{
  RowBox[{"b0", " ", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"s", "-", "t"}], ")"}], "3"]}], "+", 
  RowBox[{"3", " ", "b1", " ", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"s", "-", "t"}], ")"}], "2"], " ", "t"}], "+", 
  RowBox[{"3", " ", "b2", " ", 
   RowBox[{"(", 
    RowBox[{"s", "-", "t"}], ")"}], " ", 
   SuperscriptBox["t", "2"]}], "+", 
  RowBox[{"b3", " ", 
   SuperscriptBox["t", "3"]}]}]], "Output",
 CellChangeTimes->{3.727619038010614*^9, 3.7279111914117737`*^9, 
  3.76642318027479*^9, 
  3.766423489360037*^9},ExpressionUUID->"34230241-d121-4ad6-8518-\
d665ea6e15d0"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{"b0", ",", "b1", ",", "b2", ",", "b3"}], "}"}], ".", 
      RowBox[{"bb", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"t", ",", "s"}], "}"}], ",", "3"}], "]"}]}], ",", "t"}], 
    "]"}], "-", 
   RowBox[{"3", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "b0"}], "+", "b1"}], ",", 
        RowBox[{
         RowBox[{"-", "b1"}], "+", "b2"}], ",", 
        RowBox[{
         RowBox[{"-", "b2"}], "+", "b3"}]}], "}"}], ".", 
      RowBox[{"bb", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"t", ",", "s"}], "}"}], ",", "2"}], "]"}]}], ")"}]}]}], "//",
   "Simplify"}]], "Input",
 CellChangeTimes->{{3.727617543049999*^9, 3.72761763795383*^9}, {
   3.72761803975377*^9, 3.727618068900722*^9}, 3.7276190460357733`*^9, 
   3.727911203761084*^9, {3.7279112418565693`*^9, 3.727911250319147*^9}, {
   3.766423184872034*^9, 3.7664231930875063`*^9}, {3.766423504600662*^9, 
   3.766423526616488*^9}},ExpressionUUID->"91cefc5d-e243-48a8-827f-\
eb0f0c10a289"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{
  3.727617551933597*^9, {3.727617621224576*^9, 3.727617638648436*^9}, 
   3.7276180284635353`*^9, 3.7276180695976677`*^9, 3.727619047604847*^9, 
   3.727911251452026*^9, 3.766423198391108*^9, 
   3.7664235282361727`*^9},ExpressionUUID->"e7ae69e1-bc05-45bb-a0ef-\
4c579500aff2"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"D", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{"b0", ",", "b1", ",", "b2", ",", "b3"}], "}"}], ".", 
      RowBox[{"bb", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"t", ",", "s"}], "}"}], ",", "3"}], "]"}]}], ",", "s"}], 
    "]"}], "-", 
   RowBox[{"3", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"b0", ",", "b1", ",", "b2"}], "}"}], ".", 
      RowBox[{"bb", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"t", ",", "s"}], "}"}], ",", "2"}], "]"}]}], ")"}]}]}], " ", 
  "//", " ", "Simplify"}]], "Input",
 CellChangeTimes->{{3.72761764881719*^9, 3.727617718795477*^9}, {
   3.727618072560295*^9, 3.727618091245178*^9}, 3.727619053168131*^9, {
   3.72791125428726*^9, 3.72791126059934*^9}, {3.766423204024186*^9, 
   3.76642320958377*^9}, {3.7664235421955843`*^9, 
   3.766423562650214*^9}},ExpressionUUID->"5ccfe9bb-fdc8-4a3b-87aa-\
ce95d757915b"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{{3.72761770078732*^9, 3.727617719608191*^9}, 
   3.727618030180276*^9, 3.727618092110567*^9, 3.7276190540446444`*^9, 
   3.7279112633206043`*^9, 3.766423210465508*^9, 
   3.7664235645919867`*^9},ExpressionUUID->"ffb7561c-d43d-4e5a-9b1c-\
4d52aac92e01"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "b0"}], "+", "b1"}], ",", 
    RowBox[{
     RowBox[{"-", "b1"}], "+", "b2"}], ",", 
    RowBox[{
     RowBox[{"-", "b2"}], "+", "b3"}]}], "}"}], "+", 
  RowBox[{"{", 
   RowBox[{"b0", ",", "b1", ",", "b2"}], "}"}]}]], "Input",
 CellChangeTimes->{{3.727911327449251*^9, 3.727911330905736*^9}, {
  3.766423216287134*^9, 3.7664232307038803`*^9}, {3.766423582987443*^9, 
  3.7664235962470512`*^9}},ExpressionUUID->"c9cc5c3f-4bc4-448f-8430-\
76536dbd2c9b"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"b1", ",", "b2", ",", "b3"}], "}"}]], "Output",
 CellChangeTimes->{3.7279113322296867`*^9, 3.766423223882187*^9, 
  3.7664235979452267`*^9},ExpressionUUID->"9259a0d2-65d2-401a-b1eb-\
883d27c2eba4"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"b0", ",", "b1", ",", "b2"}], "}"}]], "Input",
 CellChangeTimes->{{3.7664232358071423`*^9, 3.766423236623232*^9}, 
   3.766423645217651*^9},ExpressionUUID->"3dff8916-b596-4544-ac29-\
dcb886406d5a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"b1", 
   RowBox[{"{", 
    RowBox[{"b0", ",", "b1", ",", "b2"}], "}"}]}], " ", "+", 
  RowBox[{"b0", 
   RowBox[{"{", 
    RowBox[{"b1", ",", "b2", ",", "b3"}], "}"}]}]}]], "Input",
 CellChangeTimes->{{3.7276174752181463`*^9, 3.727617491281432*^9}, {
   3.727617854099266*^9, 3.7276179080066147`*^9}, {3.727618107474408*^9, 
   3.727618156272341*^9}, 3.727911267831398*^9, {3.727911346538488*^9, 
   3.7279113587536592`*^9}, {3.766423241373403*^9, 3.766423245655933*^9}, {
   3.766423686198441*^9, 
   3.76642371060149*^9}},ExpressionUUID->"07914b29-939f-4772-944e-\
1c06a35a2bbc"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"2", " ", "b0", " ", "b1"}], ",", 
   RowBox[{
    SuperscriptBox["b1", "2"], "+", 
    RowBox[{"b0", " ", "b2"}]}], ",", 
   RowBox[{
    RowBox[{"b1", " ", "b2"}], "+", 
    RowBox[{"b0", " ", "b3"}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.72761815653974*^9, 3.72791135982554*^9, 
  3.766423246916991*^9, 
  3.766423711454664*^9},ExpressionUUID->"9604fb86-f037-4443-9872-\
df3922532f1c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"b3", 
   RowBox[{"{", 
    RowBox[{"b0", ",", "b1", ",", "b2"}], "}"}]}], " ", "-", 
  RowBox[{"b2", " ", 
   RowBox[{"{", 
    RowBox[{"b1", ",", "b2", ",", "b3"}], "}"}]}]}]], "Input",
 CellChangeTimes->{{3.727617925138465*^9, 3.727617933535603*^9}, {
   3.727618121672606*^9, 3.72761812671961*^9}, {3.727618160643725*^9, 
   3.727618163337295*^9}, {3.727911366768572*^9, 3.727911373874696*^9}, 
   3.727911734191383*^9, {3.766423266290835*^9, 3.7664232664905767`*^9}, {
   3.766423741442951*^9, 
   3.766423814537346*^9}},ExpressionUUID->"263e570a-78c5-437b-ad25-\
0fed4183450c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"-", "b1"}], " ", "b2"}], "+", 
    RowBox[{"b0", " ", "b3"}]}], ",", 
   RowBox[{
    RowBox[{"-", 
     SuperscriptBox["b2", "2"]}], "+", 
    RowBox[{"b1", " ", "b3"}]}], ",", "0"}], "}"}]], "Output",
 CellChangeTimes->{3.727617934828075*^9, 3.7276181273785686`*^9, 
  3.72761816364111*^9, 3.7279113749612103`*^9, 3.727911735204609*^9, 
  3.766423272803296*^9, 
  3.7664238154573793`*^9},ExpressionUUID->"1f72772f-2c00-47fb-9972-\
c27be706a238"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{"0", ",", 
    RowBox[{
     RowBox[{"-", "3"}], " ", "b0", " ", 
     SuperscriptBox["b1", "2"], " ", "b2"}], ",", 
    RowBox[{
     RowBox[{"b1", " ", "b2"}], "-", 
     RowBox[{"9", " ", "b0", " ", "b3"}]}]}], "}"}], ".", 
  RowBox[{"bb", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"t", ",", "s"}], "}"}], ",", "2"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.766423276714979*^9, 3.766423287255999*^9}, 
   3.766423836938486*^9},ExpressionUUID->"fc57645b-0f87-4e5f-a7e1-\
0b9f446e3251"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"-", "6"}], " ", "b0", " ", 
   SuperscriptBox["b1", "2"], " ", "b2", " ", 
   RowBox[{"(", 
    RowBox[{"s", "-", "t"}], ")"}], " ", "t"}], "+", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{
     RowBox[{"b1", " ", "b2"}], "-", 
     RowBox[{"9", " ", "b0", " ", "b3"}]}], ")"}], " ", 
   SuperscriptBox["t", "2"]}]}]], "Output",
 CellChangeTimes->{3.727618241592495*^9, 3.7664232881697617`*^9, 
  3.766423838098299*^9},ExpressionUUID->"bc10da6c-8bb6-4476-846a-\
fdb25c7da971"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{"0", ",", 
      RowBox[{
       SuperscriptBox["b1", "2"], "-", 
       RowBox[{"b0", " ", "b2"}]}], ",", 
      RowBox[{
       RowBox[{"b1", " ", "b2"}], "-", 
       RowBox[{"b0", " ", "b3"}]}]}], "}"}], ".", 
    RowBox[{"bb", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"t", ",", "s"}], "}"}], ",", "2"}], "]"}]}], " ", "-", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["b1", "2"], "-", 
          RowBox[{"b0", " ", "b2"}]}], ")"}]}], ",", 
       RowBox[{
        RowBox[{"b1", " ", "b2"}], "-", 
        RowBox[{"b0", " ", "b3"}]}]}], "}"}], ".", 
     RowBox[{"bb", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", "s"}], "}"}], ",", "1"}], "]"}]}], " ", "t"}]}], "//",
   " ", "Simplify"}]], "Input",
 CellChangeTimes->{{3.72761817669938*^9, 3.7276182717450438`*^9}, {
  3.72761831812068*^9, 3.727618324675091*^9}, {3.727911400083449*^9, 
  3.727911417169211*^9}, {3.766423295868362*^9, 3.766423319031301*^9}, {
  3.766423867274212*^9, 
  3.766423884238893*^9}},ExpressionUUID->"cb640bdf-35a9-4b35-844b-\
c4258799f304"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{{3.727618215681314*^9, 3.727618231267201*^9}, 
   3.7276182731967087`*^9, 3.727618324985962*^9, 3.7279114179520483`*^9, 
   3.766423321128422*^9, 
   3.766423886310965*^9},ExpressionUUID->"55a22d2b-a5f7-41b2-ba9c-\
3a8a641b928f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"-", "b1"}], " ", "b2"}], "+", 
       RowBox[{"b0", " ", "b3"}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        SuperscriptBox["b2", "2"]}], "+", 
       RowBox[{"b1", " ", "b3"}]}], ",", "0"}], "}"}], ".", 
    RowBox[{"bb", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"t", ",", "s"}], "}"}], ",", "2"}], "]"}]}], " ", "-", 
   RowBox[{
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"-", "b1"}], " ", "b2"}], "+", 
        RowBox[{"b0", " ", "b3"}]}], ",", 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox["b2", "2"]}], "+", 
          RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}], ".", 
     RowBox[{"bb", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"t", ",", "s"}], "}"}], ",", "1"}], "]"}]}], " ", 
    RowBox[{"(", 
     RowBox[{"s", "-", "t"}], ")"}]}]}], "//", "Simplify"}]], "Input",
 CellChangeTimes->{{3.727618361076386*^9, 3.7276184150408363`*^9}, {
  3.727911430611796*^9, 3.72791144483353*^9}, {3.7279117453998957`*^9, 
  3.72791174994917*^9}, {3.766423324665628*^9, 3.766423356111723*^9}, {
  3.766423891299959*^9, 
  3.7664239270788*^9}},ExpressionUUID->"9e1c4c8d-8dfe-46cb-81e6-0094c08a06e3"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{
  3.7276183668045063`*^9, {3.727618409125852*^9, 3.727618415300333*^9}, 
   3.7279114463585157`*^9, 3.727911750846149*^9, 3.766423357299037*^9, 
   3.7664239287667923`*^9},ExpressionUUID->"f9745a5d-40ac-4430-b4a1-\
21f860348ce3"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"2", " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["b1", "2"], "-", 
      RowBox[{"b0", " ", "b2"}]}], ")"}]}], ",", 
   RowBox[{
    RowBox[{"b1", " ", "b2"}], "-", 
    RowBox[{"b0", " ", "b3"}]}]}], "}"}]], "Input",
 CellChangeTimes->{
  3.727911454075754*^9, {3.766423360012829*^9, 3.766423369011959*^9}, 
   3.766423950103216*^9},ExpressionUUID->"05d96dad-06f9-47ef-9aec-\
aa2ca56747b6"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"b1", " ", "b2"}], "-", 
    RowBox[{"b0", " ", "b3"}]}], ",", 
   RowBox[{"2", " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["b2", "2"], "-", 
      RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}]], "Input",
 CellChangeTimes->{
  3.727911474859982*^9, {3.7279117598152514`*^9, 3.7279117993574753`*^9}, {
   3.766423373124076*^9, 3.766423377150948*^9}, 
   3.766423963482283*^9},ExpressionUUID->"b31fac48-9ba0-4636-997f-\
c98ddafb6e0e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Det", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["b1", "2"], "-", 
          RowBox[{"b0", " ", "b2"}]}], ")"}]}], ",", 
       RowBox[{
        RowBox[{"b1", " ", "b2"}], "-", 
        RowBox[{"b0", " ", "b3"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"b1", " ", "b2"}], "-", 
        RowBox[{"b0", " ", "b3"}]}], ",", 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["b2", "2"], "-", 
          RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}]}], "}"}], "]"}], " ", 
  "//", "Expand"}]], "Input",
 CellChangeTimes->{{3.727622265415225*^9, 3.727622327975707*^9}, {
   3.7279114962845373`*^9, 3.727911535747048*^9}, {3.727911806215914*^9, 
   3.727911818334358*^9}, {3.766423387861581*^9, 3.766423409919729*^9}, 
   3.766423984302904*^9},ExpressionUUID->"277470b3-635d-44cf-b429-\
b85f31c6f71d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"3", " ", 
   SuperscriptBox["b1", "2"], " ", 
   SuperscriptBox["b2", "2"]}], "-", 
  RowBox[{"4", " ", "b0", " ", 
   SuperscriptBox["b2", "3"]}], "-", 
  RowBox[{"4", " ", 
   SuperscriptBox["b1", "3"], " ", "b3"}], "+", 
  RowBox[{"6", " ", "b0", " ", "b1", " ", "b2", " ", "b3"}], "-", 
  RowBox[{
   SuperscriptBox["b0", "2"], " ", 
   SuperscriptBox["b3", "2"]}]}]], "Output",
 CellChangeTimes->{{3.727622297889614*^9, 3.7276223282725677`*^9}, {
   3.7279115035522213`*^9, 3.7279115362032547`*^9}, {3.727911813748435*^9, 
   3.72791181911271*^9}, 3.766423413392242*^9, 
   3.766423985784988*^9},ExpressionUUID->"2d0c0611-fe97-4eb0-9586-\
6ad9f59a1aca"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"discriminantb", "[", 
   RowBox[{"{", 
    RowBox[{"b0_", ",", " ", "b1_", ",", " ", "b2_", ",", " ", "b3_"}], "}"}],
    "]"}], " ", ":=", "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Delta]1", "=", 
       RowBox[{"2", 
        RowBox[{"Det", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"b1", ",", "b0"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"b2", ",", "b1"}], "}"}]}], "}"}], "]"}]}]}], ",", 
      RowBox[{"\[Delta]2", "=", 
       RowBox[{"Det", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"b1", ",", "b0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"b3", ",", "b2"}], "}"}]}], "}"}], "]"}]}], ",", "  ", 
      RowBox[{"\[Delta]3", "=", 
       RowBox[{"2", 
        RowBox[{"Det", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"b2", ",", "b1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"b3", ",", "b2"}], "}"}]}], "}"}], "]"}]}]}]}], "}"}], 
    ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"d", "=", 
        RowBox[{"Det", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\[Delta]1", ",", "\[Delta]2"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\[Delta]2", ",", "\[Delta]3"}], "}"}]}], "}"}], "]"}]}], 
       "}"}], ",", " ", "d"}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{
  3.727618429117546*^9, {3.7276223774652357`*^9, 3.7276223927867737`*^9}, {
   3.727622438623974*^9, 3.7276224396495657`*^9}, {3.7276225267684097`*^9, 
   3.727622543467224*^9}, {3.727622612694672*^9, 3.727622663676199*^9}, {
   3.7276226953989143`*^9, 3.727622752684732*^9}, {3.7276227828578444`*^9, 
   3.727622795327963*^9}, {3.7276228271594048`*^9, 3.727622841567871*^9}, {
   3.7276228996223593`*^9, 3.727622899756309*^9}, {3.7276229325222178`*^9, 
   3.727622968910145*^9}, 3.727623054908865*^9, {3.727910663212088*^9, 
   3.72791067474792*^9}, {3.727911570443499*^9, 3.727911572555431*^9}, 
   3.727911684646209*^9, {3.72791187740845*^9, 3.727911947159623*^9}, {
   3.727913167438936*^9, 3.7279131934860697`*^9}, {3.727913305959475*^9, 
   3.7279133121502037`*^9}, {3.766424128152049*^9, 3.766424193237096*^9}},
 CellLabel->"In[39]:=",ExpressionUUID->"aa35682b-9931-4ed3-a0bd-bb92c087a092"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Module", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"d", "=", 
     RowBox[{"Det", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"2", "\[Delta]1"}], ",", "\[Delta]2"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"\[Delta]2", ",", 
          RowBox[{"2", "\[Delta]3"}]}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
   " ", "d"}], "]"}]], "Input",
 CellChangeTimes->{{3.727912079682085*^9, 3.727912080488785*^9}, 
   3.727913202742937*^9},ExpressionUUID->"5ba06d86-6bad-4aad-b052-\
e77e6af1300b"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   SuperscriptBox["\[Delta]2", "2"]}], "+", 
  RowBox[{"4", " ", "\[Delta]1", " ", "\[Delta]3"}]}]], "Output",
 CellChangeTimes->{3.727912080848627*^9, 
  3.727913204172676*^9},ExpressionUUID->"4c01f251-c07f-459a-9596-\
b7cedd520f07"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Module", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"\[Delta]1", "=", 
      RowBox[{"Det", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b1", ",", "b0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"b2", ",", "b1"}], "}"}]}], "}"}], "]"}]}], ",", 
     RowBox[{"\[Delta]2", "=", 
      RowBox[{"Det", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b1", ",", "b0"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"b3", ",", "b2"}], "}"}]}], "}"}], "]"}]}], ",", "  ", 
     RowBox[{"\[Delta]3", "=", 
      RowBox[{"Det", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"b2", ",", "b1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"b3", ",", "b2"}], "}"}]}], "}"}], "]"}]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"\[Delta]1", ",", "\[Delta]2", ",", "\[Delta]3"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.7279120378993597`*^9, 3.7279120563778257`*^9}, {
   3.7279120882996483`*^9, 3.727912093425084*^9}, {3.727913223103908*^9, 
   3.7279132244797173`*^9}, 3.76642427513838*^9, {3.766424306082142*^9, 
   3.7664243116531887`*^9}},ExpressionUUID->"0c53f457-9039-4d74-9221-\
b6f2ce7cfd85"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    SuperscriptBox["b1", "2"], "-", 
    RowBox[{"b0", " ", "b2"}]}], ",", 
   RowBox[{
    RowBox[{"b1", " ", "b2"}], "-", 
    RowBox[{"b0", " ", "b3"}]}], ",", 
   RowBox[{
    SuperscriptBox["b2", "2"], "-", 
    RowBox[{"b1", " ", "b3"}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.7279119837740803`*^9, 3.7279120941507473`*^9, 
  3.7279132257220163`*^9, 
  3.7664243125736*^9},ExpressionUUID->"c8f1aa23-012f-4c1f-86de-dd3576b730bf"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"discriminantb", "[", 
    RowBox[{"{", 
     RowBox[{"b0", ",", " ", "b1", ",", " ", "b2", ",", " ", "b3"}], "}"}], 
    "]"}], " ", "-", " ", 
   RowBox[{
    RowBox[{"Discriminant", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"{", 
        RowBox[{"b0", ",", "b1", ",", "b2", ",", "b3"}], "}"}], ".", 
       RowBox[{"bb3", "[", "t", "]"}]}], ",", " ", "t"}], "]"}], "/", 
    "27"}]}], " ", "//", " ", "Simplify"}]], "Input",
 CellChangeTimes->{{3.727622722459034*^9, 3.727622729710575*^9}, {
   3.7276229759570827`*^9, 3.727622977019141*^9}, {3.727623063430643*^9, 
   3.727623080977133*^9}, {3.727911562170727*^9, 3.72791156441868*^9}, 
   3.727911594675428*^9, 3.72791167429445*^9, {3.7310195034887037`*^9, 
   3.731019511548347*^9}, {3.766424221947976*^9, 
   3.766424237091547*^9}},ExpressionUUID->"0e36bd8b-0ce5-49eb-83fc-\
c643e8518840"],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{{3.727622730150915*^9, 3.727622754650896*^9}, 
   3.727622797982327*^9, {3.727622874283586*^9, 3.727622901681333*^9}, {
   3.727622942693809*^9, 3.7276229772611837`*^9}, 3.727623081291801*^9, 
   3.727911577787094*^9, {3.727911676713572*^9, 3.7279116861469316`*^9}, {
   3.727911883776371*^9, 3.7279118946628838`*^9}, 3.7279119492227983`*^9, 
   3.727913234324337*^9, 3.727913314501458*^9, 3.731019512625415*^9, 
   3.766424239463382*^9},ExpressionUUID->"068aa56d-b340-4618-91d5-\
14a02f922d35"]
}, Open  ]],

Cell["\<\
At any rate, we can classify the curve based on the discriminant. We have \
already seen that, when the cubic is integral, d1 == 0. In that case, the \
polynomials become \
\>", "Text",
 CellChangeTimes->{{3.727561490094038*^9, 3.727561490095894*^9}, {
   3.727562144239312*^9, 3.727562206327667*^9}, 3.727562351985558*^9, {
   3.727623149617216*^9, 
   3.7276231547459583`*^9}},ExpressionUUID->"36b77137-abf9-48dc-aee4-\
ccaf952f0a12"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{
    RowBox[{"-", "d4"}], ",", 
    RowBox[{"3", " ", "d3"}], ",", " ", 
    RowBox[{
     RowBox[{"-", "3"}], " ", "d2"}], ",", "d1"}], "}"}], " ", "/.", " ", 
  RowBox[{"d1", "\[Rule]", "0"}]}]], "Input",
 CellChangeTimes->{{3.727562296921687*^9, 
  3.727562298632533*^9}},ExpressionUUID->"012614b9-1d9d-4e30-b7e7-\
17f3ea42ad0b"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "d4"}], ",", 
   RowBox[{"3", " ", "d3"}], ",", 
   RowBox[{
    RowBox[{"-", "3"}], " ", "d2"}], ",", "0"}], "}"}]], "Output",
 CellChangeTimes->{
  3.727562299041388*^9},ExpressionUUID->"5a1a25d5-72a9-40d5-9403-\
f2202a16a6cf"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     SuperscriptBox["d3", "2"], "-", 
     RowBox[{"d2", " ", "d4"}]}], ",", 
    RowBox[{
     RowBox[{"d1", " ", "d4"}], "-", 
     RowBox[{"d2", " ", "d3"}]}], ",", 
    RowBox[{
     SuperscriptBox["d2", "2"], "-", 
     RowBox[{"d1", " ", "d3"}]}]}], " ", "}"}], " ", "/.", " ", 
  RowBox[{"d1", "\[Rule]", "0"}]}]], "Input",
 CellChangeTimes->{{3.727562306169842*^9, 
  3.727562307736809*^9}},ExpressionUUID->"491e2035-bc3b-4541-a867-\
ef532fa2ea2a"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    SuperscriptBox["d3", "2"], "-", 
    RowBox[{"d2", " ", "d4"}]}], ",", 
   RowBox[{
    RowBox[{"-", "d2"}], " ", "d3"}], ",", 
   SuperscriptBox["d2", "2"]}], "}"}]], "Output",
 CellChangeTimes->{
  3.727562308235909*^9},ExpressionUUID->"99148f76-634b-4c1d-8261-\
e5224f18248f"]
}, Open  ]],

Cell["\<\
The equivalent condition in the Bernstein basis is that b1+3b2+3b3+b4, == 0. \
The inflection polynomial becomes\
\>", "Text",
 CellChangeTimes->{{3.727602392567172*^9, 3.7276024150936527`*^9}, {
   3.727649294770186*^9, 3.727649299553761*^9}, {3.727907160749031*^9, 
   3.727907163555757*^9}, 3.727912515696557*^9, {3.727913579168374*^9, 
   3.727913583400466*^9}},ExpressionUUID->"a5a1c56c-9e29-4168-9ee2-\
ea89a740cf7d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"lower", "[", 
   RowBox[{"{", 
    RowBox[{"a_", ",", " ", "b_", ",", " ", "c_", ",", " ", "d_"}], "}"}], 
   "]"}], " ", ":=", " ", 
  RowBox[{"{", 
   RowBox[{"a", ",", 
    RowBox[{
     RowBox[{"(", " ", 
      RowBox[{
       RowBox[{"3", 
        RowBox[{"(", 
         RowBox[{"b", "+", "c"}], ")"}]}], "-", 
       RowBox[{"(", 
        RowBox[{"a", "+", "d"}], ")"}]}], ")"}], "/", "4"}], ",", "d"}], 
   "}"}]}]], "Input",
 CellChangeTimes->{{3.7279068732324142`*^9, 3.727906933377879*^9}, 
   3.727906964171939*^9},ExpressionUUID->"33ba6e9e-cb1a-42b7-a0a9-\
db4909c6cc9e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"lower", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", " ", "b4"}], ",", "b3", ",", 
     RowBox[{"-", "b2"}], ",", " ", "b1"}], "}"}], "]"}], "  ", "//", " ", 
  "FullSimplify"}]], "Input",
 CellChangeTimes->{{3.7279067809133987`*^9, 3.7279067947145367`*^9}, 
   3.727906832683468*^9, {3.727906865378758*^9, 3.727906866304934*^9}, {
   3.7279069728675137`*^9, 3.7279070018264027`*^9}, {3.727907033019017*^9, 
   3.727907036918331*^9}, {3.7279071753088493`*^9, 3.727907175358691*^9}, {
   3.727912525870075*^9, 3.727912547678525*^9}, 3.727912606384063*^9, {
   3.727913510082797*^9, 
   3.727913511088046*^9}},ExpressionUUID->"8e40beaa-c323-4caf-a579-\
03253d62eff2"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "b4"}], ",", 
   RowBox[{
    FractionBox["1", "4"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", "b1"}], "-", 
      RowBox[{"3", " ", "b2"}], "+", 
      RowBox[{"3", " ", "b3"}], "+", "b4"}], ")"}]}], ",", "b1"}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.727906794912415*^9, 3.7279068340982227`*^9, {3.7279069771787663`*^9, 
   3.727907002914504*^9}, 3.727907037725113*^9, 3.727907175666648*^9, {
   3.727912531936934*^9, 3.7279125480715303`*^9}, 3.72791260700994*^9, 
   3.727913511467629*^9},ExpressionUUID->"2c43715d-2966-4508-8704-\
bbefb3df601e"]
}, Open  ]],

Cell["and the double-point polynomial remains a quadratic.", "Text",
 CellChangeTimes->{{3.727907186683255*^9, 3.7279071907806673`*^9}, {
  3.727913575704265*^9, 
  3.727913594640525*^9}},ExpressionUUID->"5761f98a-e986-4745-b5fc-\
227e8a99a430"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Discriminant", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"bb2", "[", "t", "]"}], ".", 
    RowBox[{"{", 
     RowBox[{"a", ",", "b", ",", "c"}], "}"}]}], ",", "t"}], "]"}]], "Input",
 CellChangeTimes->{{3.727957558644595*^9, 
  3.727957609945318*^9}},ExpressionUUID->"e53e37b8-dab7-4e49-8ef9-\
cd278ada53ed"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "4"}], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", 
     SuperscriptBox["b", "2"]}], "+", 
    RowBox[{"a", " ", "c"}]}], ")"}]}]], "Output",
 CellChangeTimes->{{3.727957571843424*^9, 
  3.727957610756729*^9}},ExpressionUUID->"3184c23e-4a91-42cf-b5b0-\
1f96491276e0"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"bb2", "[", "t", "]"}], ".", 
     RowBox[{"{", 
      RowBox[{"d1", ",", "d2", ",", "d3"}], "}"}]}], "\[Equal]", "0"}], ",", 
   "t"}], "]"}]], "Input",
 CellChangeTimes->{{3.727957619785727*^9, 3.727957624832589*^9}, {
  3.727957695018718*^9, 
  3.727957697865213*^9}},ExpressionUUID->"df8c7f9e-1d20-4654-9812-\
adb1dbdf1da4"],

Cell[BoxData[
 FractionBox[
  RowBox[{"d1", "-", "d2"}], 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"d1", "-", "d2"}], ")"}], "-", 
   RowBox[{"(", 
    RowBox[{"d2", "-", "d3"}], ")"}]}]]], "Input",
 CellChangeTimes->{{3.727957711690692*^9, 3.727957739209589*^9}, {
  3.727957809787546*^9, 
  3.727957815234145*^9}},ExpressionUUID->"66697fa2-cbae-4a2b-8c06-\
c0aa0f2218bf"],

Cell[BoxData[
 RowBox[{
  RowBox[{"d1", " ", "d3"}], " ", "=", " ", 
  RowBox[{"d2", " ", "d2"}]}]], "Input",
 CellChangeTimes->{{3.727957779445222*^9, 
  3.727957787674024*^9}},ExpressionUUID->"f080cfad-a831-4988-b519-\
4d3f9e91d8cd"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   FractionBox[
    RowBox[{"d1", "-", "d2"}], 
    RowBox[{"d1", "-", 
     RowBox[{"2", " ", "d2"}], "+", "d3"}]], "/.", " ", 
   RowBox[{"d1", "\[Rule]", 
    RowBox[{"d2", " ", 
     RowBox[{"d2", " ", "/", " ", "d3"}]}]}]}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.727957818402114*^9, 
  3.727957834166192*^9}},ExpressionUUID->"c62bbd34-843b-4ce3-bf9c-\
41f19c989743"],

Cell[BoxData[
 FractionBox["d2", 
  RowBox[{"d2", "-", "d3"}]]], "Output",
 CellChangeTimes->{{3.727957830161223*^9, 
  3.727957834463921*^9}},ExpressionUUID->"c937b596-8e2f-4a2c-8181-\
f6b1e293fcbe"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   FractionBox[
    RowBox[{"d1", "-", "d2"}], 
    RowBox[{"d1", "-", 
     RowBox[{"2", " ", "d2"}], "+", "d3"}]], "/.", " ", 
   RowBox[{"d3", "\[Rule]", 
    RowBox[{"d2", " ", 
     RowBox[{"d2", " ", "/", " ", "d1"}]}]}]}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.727957818402114*^9, 3.727957834166192*^9}, {
  3.727957894732431*^9, 
  3.7279579016650743`*^9}},ExpressionUUID->"ad41aa85-3123-4f2e-a236-\
3a287442d260"],

Cell[BoxData[
 FractionBox["d1", 
  RowBox[{"d1", "-", "d2"}]]], "Output",
 CellChangeTimes->{{3.727957830161223*^9, 3.727957834463921*^9}, 
   3.727957903264688*^9},ExpressionUUID->"93e520fd-d281-4c13-87c9-\
cbab4e690889"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   FractionBox["d2", 
    RowBox[{"d2", "-", "d3"}]], " ", "/", 
   RowBox[{"(", 
    FractionBox["d1", 
     RowBox[{"d1", "-", "d2"}]], ")"}]}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.7279580120430098`*^9, 
  3.727958019878684*^9}},ExpressionUUID->"2fcd2761-f2dc-4909-a9ae-\
9bc58cf52002"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   FractionBox[
    RowBox[{
     RowBox[{"(", 
      RowBox[{"d1", "-", "d2"}], ")"}], " ", "d2"}], 
    RowBox[{"d1", " ", 
     RowBox[{"(", 
      RowBox[{"d2", "-", "d3"}], ")"}]}]], " ", "/.", "  ", 
   RowBox[{"d3", "\[Rule]", 
    RowBox[{"d2", " ", 
     RowBox[{"d2", " ", "/", " ", "d1"}]}]}]}], "//", "Simplify"}]], "Input",
 CellChangeTimes->{{3.727958050699265*^9, 
  3.7279580704148684`*^9}},ExpressionUUID->"5f3086bd-955e-4cc1-8f02-\
66dcc8fbf8dd"],

Cell[BoxData["1"], "Output",
 CellChangeTimes->{
  3.727958070833156*^9},ExpressionUUID->"b3a83dee-2cbc-406b-a69b-\
777c2d9d044d"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"d1", "-", "d2"}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"d1", "-", "d2"}], ")"}], "-", 
       RowBox[{"(", 
        RowBox[{"d2", "-", "d3"}], ")"}]}], ")"}]}], " ", "*", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"d1", "-", "d2"}], ")"}], "+", 
       RowBox[{"(", 
        RowBox[{"d2", "-", "d3"}], ")"}]}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{"d1", "+", "d2"}], ")"}]}]}], "  ", "/.", " ", 
   RowBox[{"d3", "\[Rule]", 
    RowBox[{"d2", " ", 
     RowBox[{"d2", " ", "/", " ", "d1"}]}]}]}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.727965997673789*^9, 
  3.7279660407948847`*^9}},ExpressionUUID->"2ff1d884-9c56-407f-b478-\
a6bae47bce63"],

Cell[BoxData["1"], "Output",
 CellChangeTimes->{{3.727966017784957*^9, 
  3.7279660423397284`*^9}},ExpressionUUID->"01d9c5a5-877a-4462-8b69-\
e8b2d0410b8a"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"t", "\[Rule]", 
     FractionBox[
      RowBox[{"d1", "-", "d2"}], 
      RowBox[{"d1", "-", 
       RowBox[{"2", " ", "d2"}], "+", "d3"}]]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"t", "\[Rule]", 
     FractionBox[
      RowBox[{"d1", "-", "d2", "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["d2", "2"], "-", 
         RowBox[{"d1", " ", "d3"}]}]]}], 
      RowBox[{"d1", "-", 
       RowBox[{"2", " ", "d2"}], "+", "d3"}]]}], "}"}]}], "}"}]], "Input",
 CellChangeTimes->{{3.727957704314376*^9, 
  3.7279577043214684`*^9}},ExpressionUUID->"262aae28-2a62-4aea-ab92-\
3df8cad03713"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   FractionBox[
    RowBox[{"a", "-", "b"}], 
    RowBox[{"a", "-", 
     RowBox[{"2", " ", "b"}], "+", "c"}]], ")"}], " ", "/.", " "}]], "Input",
 CellChangeTimes->{{3.727957643810161*^9, 
  3.7279576523124523`*^9}},ExpressionUUID->"7575ca85-4a1f-4a67-935f-\
2e089d6446ff"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"t", "\[Rule]", 
     FractionBox[
      RowBox[{"a", "-", "b", "-", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["b", "2"], "-", 
         RowBox[{"a", " ", "c"}]}]]}], 
      RowBox[{"a", "-", 
       RowBox[{"2", " ", "b"}], "+", "c"}]]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"t", "\[Rule]", 
     FractionBox[
      RowBox[{"a", "-", "b", "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["b", "2"], "-", 
         RowBox[{"a", " ", "c"}]}]]}], 
      RowBox[{"a", "-", 
       RowBox[{"2", " ", "b"}], "+", "c"}]]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.7279576211893587`*^9, 
  3.727957625294305*^9}},ExpressionUUID->"4c387b31-3d3a-42a2-8468-\
3f9c848d246a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Discriminant", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"bb3", "[", "t", "]"}], ".", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "b4"}], ",", "b3", ",", 
         RowBox[{"-", "b2"}], ",", "b1"}], "}"}]}], "a"}], ",", "t"}], "]"}], 
   " ", "/.", "  ", 
   RowBox[{"b1", "\[Rule]", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "3"}], "b2"}], "+", 
     RowBox[{
      RowBox[{"-", "3"}], "b3"}], "-", "b4"}]}]}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.727913627883563*^9, 3.727913641281496*^9}, {
  3.72791374512281*^9, 3.727913768860887*^9}, {3.7279158240927362`*^9, 
  3.727915826843123*^9}, {3.727915913365589*^9, 3.727915915484069*^9}, {
  3.727975112664016*^9, 3.727975143618672*^9}, {3.727975219662771*^9, 
  3.727975226548986*^9}},ExpressionUUID->"7759e6ff-5b5a-41cd-b493-\
61c3b7467829"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "27"}], " ", 
  SuperscriptBox["a", "4"], " ", 
  SuperscriptBox[
   RowBox[{"(", 
    RowBox[{"b2", "+", 
     RowBox[{"2", " ", "b3"}], "+", "b4"}], ")"}], "2"], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "3"}], " ", 
     SuperscriptBox["b3", "2"]}], "+", 
    RowBox[{"2", " ", "b3", " ", "b4"}], "+", 
    RowBox[{"b4", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"4", " ", "b2"}], "+", "b4"}], ")"}]}]}], ")"}]}]], "Output",
 CellChangeTimes->{{3.727913634330971*^9, 3.72791364208394*^9}, {
   3.7279137649908037`*^9, 3.727913770077217*^9}, 3.727915827998643*^9, 
   3.727915916284073*^9, {3.7279751276705303`*^9, 3.727975145057466*^9}, {
   3.727975220616761*^9, 
   3.727975228753557*^9}},ExpressionUUID->"b89d2cdc-2b78-46a3-91a4-\
346b0d00302a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Discriminant", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"bb2", "[", "t", "]"}], ".", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["b3", "2"], "-", 
           RowBox[{"b2", " ", "b4"}]}], ")"}]}], ",", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "b2"}], " ", "b3"}], "+", 
          RowBox[{"b1", " ", "b4"}]}], ")"}], ",", 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["b2", "2"], "-", 
           RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}]}], ",", "t"}], "]"}],
    "/.", " ", 
   RowBox[{"b1", "\[Rule]", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "3"}], "b2"}], "+", 
     RowBox[{
      RowBox[{"-", "3"}], "b3"}], "-", "b4"}]}]}], " ", "//", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.727915738755743*^9, 3.727915788045529*^9}, {
  3.727915833612926*^9, 3.727915835099174*^9}, {3.7279159082137938`*^9, 
  3.7279159101401587`*^9}},ExpressionUUID->"a346c35d-a7fc-4293-a405-\
d2e7b7157866"],

Cell[BoxData[
 RowBox[{"4", " ", 
  SuperscriptBox[
   RowBox[{"(", 
    RowBox[{"b2", "+", 
     RowBox[{"2", " ", "b3"}], "+", "b4"}], ")"}], "2"], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "3"}], " ", 
     SuperscriptBox["b3", "2"]}], "+", 
    RowBox[{"2", " ", "b3", " ", "b4"}], "+", 
    RowBox[{"b4", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"4", " ", "b2"}], "+", "b4"}], ")"}]}]}], ")"}]}]], "Output",
 CellChangeTimes->{{3.7279157342223387`*^9, 3.7279157890784082`*^9}, 
   3.7279158356365623`*^9, 
   3.727915910520857*^9},ExpressionUUID->"c5adc433-6dd2-48f6-9094-\
1015878e314d"]
}, Open  ]],

Cell["\<\
Two of the coefficients are divisible by (b2 + 2 b3 + b4). Hence the factor.\
\>", "Text",
 CellChangeTimes->{{3.727916432390229*^9, 3.727916464435052*^9}, {
  3.727916512595935*^9, 3.727916527156021*^9}, {3.727975159181815*^9, 
  3.727975181244256*^9}},ExpressionUUID->"306d9b55-f9d1-4257-a1ee-\
b1741b8f37e4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"p2b", "[", "2", "]"}], ".", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["b3", "2"], "-", 
           RowBox[{"b2", " ", "b4"}]}], ")"}]}], ",", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "b2"}], " ", "b3"}], "+", 
          RowBox[{"b1", " ", "b4"}]}], ")"}], ",", 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["b2", "2"], "-", 
           RowBox[{"b1", " ", "b3"}]}], ")"}]}]}], "}"}]}], ")"}], "/", "2"}],
    "/.", "  ", 
   RowBox[{"b1", "\[Rule]", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "3"}], "b2"}], "+", 
     RowBox[{
      RowBox[{"-", "3"}], "b3"}], "-", "b4"}]}]}], " ", "//", " ", 
  "Simplify"}]], "Input",
 CellChangeTimes->{{3.7279158132047987`*^9, 3.7279158161095667`*^9}, {
  3.7279158563027897`*^9, 
  3.7279159273803787`*^9}},ExpressionUUID->"7913db5b-707d-489f-b66f-\
366d356e7b0f"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    SuperscriptBox["b3", "2"], "-", 
    RowBox[{"b2", " ", "b4"}]}], ",", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"(", 
      RowBox[{"b3", "+", "b4"}], ")"}]}], " ", 
    RowBox[{"(", 
     RowBox[{"b2", "+", 
      RowBox[{"2", " ", "b3"}], "+", "b4"}], ")"}]}], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"b2", "+", 
      RowBox[{"2", " ", "b3"}], "+", "b4"}], ")"}], "2"]}], "}"}]], "Output",
 CellChangeTimes->{
  3.727915816400806*^9, {3.727915857361691*^9, 
   3.727915927821232*^9}},ExpressionUUID->"067b20ad-d978-4d72-a605-\
74e8164f4cef"]
}, Open  ]],

Cell["\<\
Nothing much happens except for the inflection polynomial becoming quadratic. \
 But is the converse true? Almost. What is true if d1==0 is that at least one \
of the coordinate functions x, y, or w, is constant. \
\>", "Text",
 CellChangeTimes->{{3.727562330222928*^9, 3.727562405833384*^9}, 
   3.727566735734165*^9, {3.727568154253023*^9, 3.727568158309231*^9}, {
   3.727569198801304*^9, 3.727569200041404*^9}, {3.727569286811318*^9, 
   3.7275693059235363`*^9}, {3.727602443252571*^9, 3.727602506323011*^9}, 
   3.7276116183642063`*^9, {3.727611656617485*^9, 3.72761167985789*^9}, 
   3.7276117159704742`*^9, {3.727611781757537*^9, 3.727611791646628*^9}, {
   3.727611941021122*^9, 
   3.727611941164977*^9}},ExpressionUUID->"d9312c22-1e52-41c3-bc05-\
93e651af892e"],

Cell["\<\
Something interesting happens when the curve is a true quadratic elevated to \
a cubic.\
\>", "Text",
 CellChangeTimes->{{3.7275672983668823`*^9, 3.727567304843388*^9}, {
   3.727567343603953*^9, 3.727567346756003*^9}, 3.72756931011661*^9, {
   3.727603167283145*^9, 3.727603169514867*^9}, {3.7276119867820177`*^9, 
   3.727612001624736*^9}},ExpressionUUID->"871faf3f-05ef-47c5-ac70-\
8e39c74ee829"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.705067776472825*^9, 3.705067967982903*^9}, {
  3.7050680153370256`*^9, 3.705068032039885*^9}, {3.705068067779139*^9, 
  3.7050680754537888`*^9}},
 CellLabel->"In[40]:=",ExpressionUUID->"afeac296-de19-4f9f-bfbe-bbf589cd9b31"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"crosspmatrix", "[", 
   RowBox[{"elevate", "[", 
    RowBox[{"ppoints", "[", "2", "]"}], "]"}], "]"}], "//", 
  "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.727567023689528*^9, 3.727567031264063*^9}, {
  3.72756933774946*^9, 
  3.727569351166774*^9}},ExpressionUUID->"beba6141-684e-40aa-9145-\
4d053fd97a68"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {"0"},
      {"0"},
      {"0"},
      {
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "w2"}], " ", "x1", " ", "y0"}], "+", 
          RowBox[{"w1", " ", "x2", " ", "y0"}], "+", 
          RowBox[{"w2", " ", "x0", " ", "y1"}], "-", 
          RowBox[{"w0", " ", "x2", " ", "y1"}], "-", 
          RowBox[{"w1", " ", "x0", " ", "y2"}], "+", 
          RowBox[{"w0", " ", "x1", " ", "y2"}]}], ")"}]}]}
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
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.727567020282744*^9, 3.7275670315352507`*^9}, {
   3.72756934548829*^9, 3.727569351532577*^9}, 
   3.72756951219142*^9},ExpressionUUID->"03403411-a763-4e7b-b9e0-\
cade4c82968c"]
}, Open  ]],

Cell["\<\
Only d4 is non-zero. I.e., the inflection polynomial has no roots, as \
expected. And the converse is also true, since, in that case, the \
control-point matrix in the Power basis cannot have a non-zero coefficient \
for t^3. If it had, the vector {0, 0, 0, d4} would not be perpendicular to \
the column containing it.\
\>", "Text",
 CellChangeTimes->{{3.727569363157011*^9, 3.727569454189322*^9}, {
   3.727602523234659*^9, 3.727602523394565*^9}, {3.727602883515061*^9, 
   3.727602916425058*^9}, {3.727612019204708*^9, 3.7276120344715843`*^9}, 
   3.727649335481638*^9},ExpressionUUID->"64b28977-2224-45e2-b61f-\
c8535167f258"],

Cell["This is what this looks like in the Bernstein basis.", "Text",
 CellChangeTimes->{{3.727603068093177*^9, 
  3.727603078541808*^9}},ExpressionUUID->"9fdce46c-c469-4b08-a256-\
9de099acec88"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0", ",", "0", ",", "0", ",", "d4"}], "}"}], ".", 
   RowBox[{"p2b", "[", "3", "]"}]}], " ", "/.", " ", 
  RowBox[{"d4", "\[Rule]", "b4"}]}]], "Input",
 CellChangeTimes->{{3.7276025913473463`*^9, 3.7276026074496737`*^9}, {
  3.7276027047522173`*^9, 3.7276027085449257`*^9}, {3.727602984912034*^9, 
  3.727603019334779*^9}, {3.727623227146346*^9, 3.7276232294272013`*^9}, {
  3.727650479791606*^9, 3.727650501120085*^9}, {3.7279171712365913`*^9, 
  3.7279171773625803`*^9}, {3.72791722474736*^9, 3.727917257067539*^9}, {
  3.727917594968935*^9, 
  3.727917606769006*^9}},ExpressionUUID->"fba1bc87-b73a-4550-8a9e-\
28bf37473d39"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "b4"}], ",", 
   RowBox[{"3", " ", "b4"}], ",", 
   RowBox[{
    RowBox[{"-", "3"}], " ", "b4"}], ",", "b4"}], "}"}]], "Output",
 CellChangeTimes->{{3.727602601642817*^9, 3.727602608107709*^9}, 
   3.727602709526849*^9, {3.727602988882538*^9, 3.7276030206841917`*^9}, 
   3.727623232406383*^9, 3.7276503929514008`*^9, {3.727650489688924*^9, 
   3.727650502097081*^9}, 3.72791717817143*^9, 3.7279172262673683`*^9, 
   3.727917257700925*^9, {3.727917603226397*^9, 
   3.727917606989278*^9}},ExpressionUUID->"d29798f6-6a43-4ca7-b191-\
3141e8203e67"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"crossbmatrix", "[", 
     RowBox[{"elevate", "[", 
      RowBox[{"ppoints", "[", "2", "]"}], "]"}], "]"}], 
    RowBox[{"9", "/", "2"}]}], "//", " ", "Simplify"}], "//", 
  "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.727918401481545*^9, 
  3.727918426512569*^9}},ExpressionUUID->"665c933f-51de-4270-9a59-\
81d2665231f2"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
      {
       RowBox[{
        RowBox[{"w2", " ", "x1", " ", "y0"}], "-", 
        RowBox[{"w1", " ", "x2", " ", "y0"}], "-", 
        RowBox[{"w2", " ", "x0", " ", "y1"}], "+", 
        RowBox[{"w0", " ", "x2", " ", "y1"}], "+", 
        RowBox[{"w1", " ", "x0", " ", "y2"}], "-", 
        RowBox[{"w0", " ", "x1", " ", "y2"}]}]},
      {
       RowBox[{"3", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "w2"}], " ", "x1", " ", "y0"}], "+", 
          RowBox[{"w1", " ", "x2", " ", "y0"}], "+", 
          RowBox[{"w2", " ", "x0", " ", "y1"}], "-", 
          RowBox[{"w0", " ", "x2", " ", "y1"}], "-", 
          RowBox[{"w1", " ", "x0", " ", "y2"}], "+", 
          RowBox[{"w0", " ", "x1", " ", "y2"}]}], ")"}]}]},
      {
       RowBox[{"3", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"w2", " ", "x1", " ", "y0"}], "-", 
          RowBox[{"w1", " ", "x2", " ", "y0"}], "-", 
          RowBox[{"w2", " ", "x0", " ", "y1"}], "+", 
          RowBox[{"w0", " ", "x2", " ", "y1"}], "+", 
          RowBox[{"w1", " ", "x0", " ", "y2"}], "-", 
          RowBox[{"w0", " ", "x1", " ", "y2"}]}], ")"}]}]},
      {
       RowBox[{
        RowBox[{
         RowBox[{"-", "w2"}], " ", "x1", " ", "y0"}], "+", 
        RowBox[{"w1", " ", "x2", " ", "y0"}], "+", 
        RowBox[{"w2", " ", "x0", " ", "y1"}], "-", 
        RowBox[{"w0", " ", "x2", " ", "y1"}], "-", 
        RowBox[{"w1", " ", "x0", " ", "y2"}], "+", 
        RowBox[{"w0", " ", "x1", " ", "y2"}]}]}
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
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.7279184026802177`*^9, 
  3.7279184270174932`*^9}},ExpressionUUID->"fd025533-ffdb-422d-9d8d-\
bed4c5b7e43d"]
}, Open  ]],

Cell["If the curve is in fact linear, then", "Text",
 CellChangeTimes->{{3.727603158210651*^9, 
  3.72760318894808*^9}},ExpressionUUID->"b13d4614-3e77-49f3-89c7-\
5841ef894602"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"crosspmatrix", "[", 
   RowBox[{"elevate", "[", 
    RowBox[{"elevate", "[", 
     RowBox[{"ppoints", "[", "1", "]"}], "]"}], "]"}], "]"}], "//", 
  "MatrixForm"}]], "Input",
 CellChangeTimes->{{3.7276032032635527`*^9, 
  3.727603208336131*^9}},ExpressionUUID->"89be0ba5-8e81-4641-8e33-\
2742729d67e8"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", 
   TagBox[GridBox[{
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
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Column], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.727603209555049*^9},ExpressionUUID->"2c627565-49f3-4131-a9a4-\
5421faeb5a15"]
}, Open  ]],

Cell["\<\
All di are zero. Obviously, this does not mean that the curve itself is the \
zero curve. What it means is that the rank of the coefficient matrix in the \
Power basis is at most 2. Look at its columns. At least one column is a \
linear combination of the other two. Since a projective transformation can \
produce any permutation of the columns of the control-point matrix, we can \
assume that x = a y + b w. This means that x/w = a y/w + b. So the \
transformed curve is restricted to a line. And since projective \
transformations preserve lines, we know that the original curve also must \
have been restricted to a line. If the rank is 1, then x = a w and y = b w \
and the curve is a single point. If the rank is 0, the point itself is 0.\
\>", "Text",
 CellChangeTimes->{{3.727603214687983*^9, 3.727603235464211*^9}, {
  3.727603281134885*^9, 3.727603305310293*^9}, {3.727603674318261*^9, 
  3.727603687942029*^9}, {3.727604313630681*^9, 3.727604508849143*^9}, {
  3.727612084519403*^9, 3.727612086972171*^9}, {3.727612127458989*^9, 
  3.727612128548957*^9}, {3.727697888249296*^9, 
  3.727697890698278*^9}},ExpressionUUID->"7bd01ed8-69db-4743-8c19-\
f23e50d7f40c"],

Cell["\<\
In the Bernstein basis case, we also get b1 == b2 == b3 == b4 == 0.\
\>", "Text",
 CellChangeTimes->{{3.727604547610375*^9, 
  3.7276045728884783`*^9}},ExpressionUUID->"cce0061d-dea4-406c-af94-\
9afda6f70ea1"],

Cell["\<\
Comparing floating-point numbers for equality with zero is not a meaningful \
operation. We need to find if the numbers are \[OpenCurlyDoubleQuote]close \
enough\[CloseCurlyDoubleQuote] to zero. In a sense, we would like for the \
measure of whether these determinants di or bi are zero to be invariant to a \
uniform scale of the control-point matrix. I.e., regardless of whether we \
multiply the x and y by a constant a. To do so, we compare di or bi <= tol \
a^2, where a is the maximum value of any coordinate x,y and tol is a suitably \
small constant.\
\>", "Text",
 CellChangeTimes->{{3.727650563144433*^9, 3.727650630223117*^9}, {
   3.727698051615169*^9, 3.72769806963941*^9}, {3.727714265290975*^9, 
   3.727714316052166*^9}, 3.7277143840649776`*^9, {3.727714551416786*^9, 
   3.7277145903161783`*^9}, {3.72771466565119*^9, 3.727714684039624*^9}, {
   3.7277157119677*^9, 3.727715888412126*^9}, {3.7278725349121*^9, 
   3.727872558871933*^9}},ExpressionUUID->"87b5a349-7b21-48a7-b6d0-\
0a756277d8a7"],

Cell[BoxData[
 RowBox[{
  RowBox[{"maxxy", "[", 
   RowBox[{"m", ":", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x0_", ",", "y0_", ",", "w0_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x1_", ",", "y1_", ",", "w1_"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"x2_", ",", "y2_", ",", "w2_"}], "}"}]}], "}"}]}], "]"}], ":=",
   "  ", 
  RowBox[{"Abs", "[", 
   RowBox[{"Max", "[", 
    RowBox[{"Map", "[", 
     RowBox[{"Most", ",", " ", "m"}], "]"}], "]"}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.727626628615041*^9, 3.727626636975211*^9}, {
   3.727626745775827*^9, 3.7276267714813137`*^9}, 3.727651527658807*^9, {
   3.727700882356691*^9, 3.7277008848253317`*^9}, {3.7277149044011993`*^9, 
   3.727714942076292*^9}, {3.727715001496304*^9, 3.7277150278484898`*^9}, {
   3.727715080116046*^9, 3.727715080535225*^9}},
 CellLabel->"In[41]:=",ExpressionUUID->"8eac08b7-104d-43d1-ac7c-0c98cac77209"],

Cell[BoxData[
 RowBox[{
  RowBox[{"maxxy", "[", 
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
       RowBox[{"x3_", ",", " ", "y3_", ",", " ", "w3_"}], "}"}]}], "}"}]}], 
   "]"}], " ", ":=", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"maxxy", "[", 
     RowBox[{"m", "[", 
      RowBox[{"[", 
       RowBox[{
        RowBox[{"Select", "[", 
         RowBox[{
          RowBox[{"Range", "[", "4", "]"}], ",", 
          RowBox[{
           RowBox[{"#", "\[NotEqual]", " ", "i"}], "&"}]}], "]"}], ",", 
        ";;"}], "]"}], "]"}], "]"}], ",", 
    RowBox[{"{", 
     RowBox[{"i", ",", " ", "1", ",", " ", "4"}], "}"}]}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.7276265763129187`*^9, 3.72762659606384*^9}, {
   3.7276266403395452`*^9, 3.72762664190252*^9}, {3.7276267785346823`*^9, 
   3.727626818224423*^9}, {3.7276269239255247`*^9, 3.7276269342392387`*^9}, 
   3.727626985870448*^9, 3.727651531906333*^9, {3.7276988086393337`*^9, 
   3.7276988091938963`*^9}, {3.7277150932144547`*^9, 3.727715108178013*^9}},
 CellLabel->"In[42]:=",ExpressionUUID->"03cee3ba-5ad5-4f93-801e-38238307b53a"],

Cell[BoxData[
 RowBox[{
  RowBox[{"isalmostzero", "[", 
   RowBox[{"s_", ",", " ", "a_", ",", " ", 
    RowBox[{"tol_:", "1*^-5"}]}], "]"}], " ", ":=", 
  RowBox[{
   RowBox[{"Abs", "[", "s", "]"}], " ", "<=", " ", 
   RowBox[{"tol", " ", "a", " ", "a"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.727625238864196*^9, 3.727625283948018*^9}, {
   3.7276253296495867`*^9, 3.7276253565826607`*^9}, {3.727626003357235*^9, 
   3.72762606132843*^9}, {3.72762641894361*^9, 3.7276264934335938`*^9}, {
   3.727627094575378*^9, 3.727627170341353*^9}, {3.7276272029681797`*^9, 
   3.7276272045389214`*^9}, 3.727627299516623*^9, {3.7277009510736732`*^9, 
   3.727700963238463*^9}, {3.727715125413487*^9, 3.727715148397419*^9}, {
   3.7277153566868057`*^9, 3.727715359944487*^9}},
 CellLabel->"In[43]:=",ExpressionUUID->"8d6bc812-67fd-4c7a-9451-e2e6e82c2d87"],

Cell[BoxData[
 RowBox[{
  RowBox[{"isalmostequal", "[", 
   RowBox[{"s1_", ",", " ", "a1_", ",", " ", "s2_", ",", " ", "a2_", ",", " ", 
    RowBox[{"tol_:", "1*^5"}]}], "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"Abs", "[", 
    RowBox[{"s1", "-", "s2"}], "]"}], " ", "\[LessEqual]", " ", 
   RowBox[{"tol", " ", "a1", " ", "a2"}]}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.727652681644285*^9, 3.727652771357314*^9}, {
  3.72765312924152*^9, 3.727653144977206*^9}, {3.7277151776023073`*^9, 
  3.7277152184973373`*^9}, {3.727715347902862*^9, 3.727715350422442*^9}},
 CellLabel->"In[44]:=",ExpressionUUID->"4f6c9148-aab4-4bab-837e-2a29e266b1c4"],

Cell[BoxData[
 RowBox[{
  RowBox[{"classifyp", "[", 
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
        RowBox[{"x3_", ",", "y3_", ",", "w3_"}], "}"}]}], "}"}]}], ",", 
    RowBox[{"tol_:", "1*^-5"}]}], "]"}], " ", ":=", "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"ds", " ", "=", " ", 
       RowBox[{"crosspmatrix", "[", "m", "]"}]}], ",", " ", 
      RowBox[{"as", "=", 
       RowBox[{"maxxy", "[", "m", "]"}]}]}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{"If", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"isalmostzero", "[", 
        RowBox[{
         RowBox[{"ds", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
         RowBox[{"as", "[", 
          RowBox[{"[", "1", "]"}], "]"}], ",", "tol"}], "]"}], " ", "&&", " ",
        "\[IndentingNewLine]", 
       RowBox[{"isalmostzero", "[", 
        RowBox[{
         RowBox[{"ds", "[", 
          RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
         RowBox[{"as", "[", 
          RowBox[{"[", "2", "]"}], "]"}], ",", "tol"}], "]"}], " ", "&&", " ",
        "\[IndentingNewLine]", 
       RowBox[{"isalmostzero", "[", 
        RowBox[{
         RowBox[{"ds", "[", 
          RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
         RowBox[{"as", "[", 
          RowBox[{"[", "3", "]"}], "]"}], ",", "tol"}], "]"}]}], ",", "  ", 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"isalmostzero", "[", 
         RowBox[{
          RowBox[{"ds", "[", 
           RowBox[{"[", "4", "]"}], "]"}], ",", " ", 
          RowBox[{"as", "[", 
           RowBox[{"[", "4", "]"}], "]"}], ",", "tol"}], "]"}], ",", " ", 
        "\[IndentingNewLine]", "\"\<point or line\>\"", ",", " ", 
        "\[IndentingNewLine]", "\"\<quadratic\>\""}], "]"}], ",", " ", 
      "\[IndentingNewLine]", 
      RowBox[{"Module", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"A", " ", "=", " ", 
           RowBox[{"ds", "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
          RowBox[{"B", " ", "=", " ", 
           RowBox[{"-", 
            RowBox[{"ds", "[", 
             RowBox[{"[", "2", "]"}], "]"}]}]}], ",", " ", 
          RowBox[{"C", " ", "=", " ", 
           RowBox[{"ds", "[", 
            RowBox[{"[", "3", "]"}], "]"}]}], ",", " ", 
          RowBox[{"D", "=", 
           RowBox[{"-", 
            RowBox[{"ds", "[", 
             RowBox[{"[", "4", "]"}], "]"}]}]}], ",", " ", 
          RowBox[{"a", "=", 
           RowBox[{
            RowBox[{"Apply", "[", 
             RowBox[{"Times", ",", "as"}], "]"}], " ", "tol"}]}]}], "}"}], 
        ",", "\[IndentingNewLine]", 
        RowBox[{"Module", "[", 
         RowBox[{
          RowBox[{"{", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"\[Delta]1", "=", 
             RowBox[{"Chop", "[", 
              RowBox[{"Det", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"A", ",", "B"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"B", ",", "C"}], "}"}]}], "}"}], "]"}], "]"}]}], 
            ",", " ", "\[IndentingNewLine]", 
            RowBox[{"\[Delta]2", "=", 
             RowBox[{"Chop", "[", 
              RowBox[{"Det", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"A", ",", "B"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"C", ",", "D"}], "}"}]}], "}"}], "]"}], "]"}]}], 
            ",", " ", "\[IndentingNewLine]", 
            RowBox[{"\[Delta]3", "=", 
             RowBox[{"Chop", "[", 
              RowBox[{"Det", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"B", ",", "C"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"C", ",", "D"}], "}"}]}], "}"}], "]"}], "]"}]}]}], 
           "}"}], ",", "\[IndentingNewLine]", 
          RowBox[{"Module", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"d", "=", 
              RowBox[{"Chop", "[", 
               RowBox[{"Det", "[", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"2", "\[Delta]1"}], ",", " ", "\[Delta]2"}], 
                   "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"\[Delta]2", ",", " ", 
                    RowBox[{"2", "\[Delta]3"}]}], "}"}]}], "}"}], "]"}], 
               "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"d", " ", "<", " ", 
               RowBox[{"-", "a"}]}], " ", ",", " ", "\[IndentingNewLine]", 
              "\"\<loop\>\"", ",", " ", "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"d", " ", ">", " ", "a"}], ",", " ", 
                "\[IndentingNewLine]", "\"\<serpentine\>\"", ",", " ", 
                "\[IndentingNewLine]", "\"\<cusp\>\""}], "]"}]}], "]"}]}], 
           "]"}]}], "]"}]}], "]"}]}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.72762337386903*^9, 3.727623403149192*^9}, {
   3.7276234535793*^9, 3.7276235114633207`*^9}, {3.727623542549547*^9, 
   3.7276236536896763`*^9}, {3.727627025899242*^9, 3.727627031180879*^9}, {
   3.72762706781658*^9, 3.7276270872760973`*^9}, {3.727627188344871*^9, 
   3.727627250646696*^9}, {3.72762768728797*^9, 3.727627709347376*^9}, {
   3.7276277930080557`*^9, 3.7276279333016768`*^9}, 3.727628146650453*^9, 
   3.727652257401*^9, {3.7276990119259644`*^9, 3.7276990173623734`*^9}, {
   3.727699098723029*^9, 3.727699111258696*^9}, {3.727715226787365*^9, 
   3.7277152305806923`*^9}, {3.727715438844473*^9, 3.727715445472765*^9}, {
   3.7277154833662853`*^9, 3.72771548372536*^9}, {3.727715516472495*^9, 
   3.727715542801344*^9}, {3.7277155795199614`*^9, 3.727715619122654*^9}},
 CellLabel->"In[45]:=",ExpressionUUID->"e14870b0-fbd7-4b86-bb0e-84c831410428"],

Cell[BoxData[
 RowBox[{
  RowBox[{"classifyp", "[", 
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
        RowBox[{"x3_", ",", "y3_"}], "}"}]}], "}"}]}], ",", " ", 
    RowBox[{"tol_:", "1*^-5"}]}], "]"}], ":=", " ", 
  RowBox[{"classifyp", "[", 
   RowBox[{
    RowBox[{"Map", "[", 
     RowBox[{"e2p", ",", "m"}], "]"}], ",", "tol"}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.727623670895831*^9, 3.727623698174037*^9}, {
  3.7276279912674923`*^9, 3.727628002641193*^9}},
 CellLabel->"In[46]:=",ExpressionUUID->"76e0353a-1ed8-43f2-a21e-5fbec1d66c70"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyp", "[", 
  RowBox[{"N", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0"}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0"}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0"}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0"}], "}"}]}], "}"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.7276236624981937`*^9, 3.7276236639818*^9}, {
  3.727623704189967*^9, 3.7276237045350237`*^9}, {3.727627435907728*^9, 
  3.7276274391170673`*^9}, {3.7276280863312597`*^9, 3.7276280887573147`*^9}, {
  3.727628158470832*^9, 
  3.727628161923415*^9}},ExpressionUUID->"c9b57060-1519-42ff-8a7f-\
117836ebaaf3"],

Cell[BoxData["\<\"point or line\"\>"], "Output",
 CellChangeTimes->{
  3.727623705350108*^9, 3.727627256727406*^9, 3.727627303689703*^9, 
   3.72762743939618*^9, {3.727627961335712*^9, 3.7276279794999323`*^9}, 
   3.72762801427136*^9, 3.727628089238084*^9, 3.7276281197646503`*^9, {
   3.7276281551202793`*^9, 3.7276281621951523`*^9}, 3.727651562365293*^9, {
   3.727699116814918*^9, 3.7276991205222282`*^9}, {3.72771545846797*^9, 
   3.727715485886423*^9}, {3.727715521925219*^9, 3.727715546435861*^9}, 
   3.7277156245201197`*^9},ExpressionUUID->"1254f646-b4e3-404d-ad99-\
24423be1f611"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyp", "[", 
  RowBox[{"N", "[", 
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
      RowBox[{"9", ",", " ", "0"}], "}"}]}], "}"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{
  3.727652423131414*^9},ExpressionUUID->"d273326f-1f9f-4dc3-ac3a-\
0c75bba6b71c"],

Cell[BoxData["\<\"point or line\"\>"], "Output",
 CellChangeTimes->{3.727652424561138*^9, 3.7276991214556828`*^9, 
  3.7277154870805387`*^9, 3.72771554960704*^9, 
  3.727715625622712*^9},ExpressionUUID->"7c45ba5d-d8d1-4308-a933-\
3a83850f018d"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyp", "[", 
  RowBox[{"N", "[", 
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
      RowBox[{"3", ",", " ", "0"}], "}"}]}], "}"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{
  3.727652496708207*^9},ExpressionUUID->"2dd8c3cf-7c75-4843-9b4e-\
993fd6705e5d"],

Cell[BoxData["\<\"quadratic\"\>"], "Output",
 CellChangeTimes->{3.727652497378994*^9, 3.7276991220250587`*^9, 
  3.7277154877360907`*^9, 3.727715551912774*^9, 
  3.7277156263601913`*^9},ExpressionUUID->"70aa1fd1-1443-4ab3-a81a-\
c1e08dc14c1f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyp", "[", 
  RowBox[{"N", "[", 
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
       RowBox[{"-", "3"}]}], "}"}]}], "}"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{
  3.727623716404249*^9, {3.727627442371594*^9, 
   3.727627445248188*^9}},ExpressionUUID->"77889a34-b26e-4f09-9bd8-\
a98bb37ca3df"],

Cell[BoxData["\<\"loop\"\>"], "Output",
 CellChangeTimes->{3.7276237171942577`*^9, 3.727627258634344*^9, 
  3.727627304926607*^9, 3.727627445531972*^9, 3.727627949757427*^9, 
  3.727628016156311*^9, 3.727628163869886*^9, 3.727651563049171*^9, 
  3.727699122463608*^9, 3.727715488452265*^9, 3.72771555333748*^9, 
  3.727715627319624*^9},ExpressionUUID->"22a11a38-88f9-4a24-b2b8-\
ec30c4214cff"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyp", "[", 
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
      RowBox[{"-", "3"}]}], "}"}]}], "}"}], "]"}]], "Input",
 CellChangeTimes->{{3.727627561075858*^9, 
  3.727627563415663*^9}},ExpressionUUID->"a45a237e-6e35-45f6-8368-\
842912c9c93c"],

Cell[BoxData["\<\"cusp\"\>"], "Output",
 CellChangeTimes->{3.727627563987458*^9, 3.7276281662018023`*^9, 
  3.727651564290894*^9, 3.72769912323728*^9, 3.7277155558584137`*^9, 
  3.727715628189443*^9},ExpressionUUID->"4e9d4801-2405-45b8-9f41-\
ce839609b242"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyp", "[", 
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
      RowBox[{"-", "3"}]}], "}"}]}], "}"}], "]"}]], "Input",
 CellChangeTimes->{
  3.72762374325452*^9},ExpressionUUID->"4efbd4c7-1fe3-42ff-87af-4d5d7c692dfc"],

Cell[BoxData["\<\"serpentine\"\>"], "Output",
 CellChangeTimes->{3.727623743977663*^9, 3.727627260275309*^9, 
  3.727627306443585*^9, 3.727628167091235*^9, 3.727651564823887*^9, 
  3.7276991238807583`*^9, 3.727715557333602*^9, 
  3.727715628914194*^9},ExpressionUUID->"1f02514c-ef95-433b-a8b1-\
b99b225db49d"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyp", "[", 
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
     RowBox[{"4", ",", " ", "0"}], "}"}]}], "}"}], "]"}]], "Input",
 CellChangeTimes->{
  3.727627329532435*^9},ExpressionUUID->"77cd19bf-7afc-40ca-b7be-\
fbf06abb6487"],

Cell[BoxData["\<\"cusp\"\>"], "Output",
 CellChangeTimes->{3.727627330555346*^9, 3.7276281689335403`*^9, 
  3.7276991245451183`*^9, 3.7277155618697243`*^9, 
  3.72771562973811*^9},ExpressionUUID->"62e0a79c-59e9-46cb-95de-82a11cfcea61"]
}, Open  ]],

Cell["We can do the same in the Bernstein basis.", "Text",
 CellChangeTimes->{{3.727651585697513*^9, 
  3.7276516004031*^9}},ExpressionUUID->"a7cee162-a201-4eed-8e6c-1b20e7c62bb4"],

Cell[BoxData[
 RowBox[{
  RowBox[{"classifyb", "[", 
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
        RowBox[{"x3_", ",", "y3_", ",", "w3_"}], "}"}]}], "}"}]}], ",", 
    RowBox[{"tol_:", "1*^-5"}]}], "]"}], " ", ":=", "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"bs", " ", "=", " ", 
       RowBox[{"crossbmatrix", "[", "m", "]"}]}], ",", " ", 
      RowBox[{"as", "=", 
       RowBox[{"maxxy", "[", "m", "]"}]}]}], "}"}], ",", 
    RowBox[{
     RowBox[{"Print", "[", "bs", "]"}], ";", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"isalmostequal", "[", 
         RowBox[{
          RowBox[{"-", 
           RowBox[{"bs", "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
          RowBox[{"as", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", 
          RowBox[{"bs", "[", 
           RowBox[{"[", "4", "]"}], "]"}], ",", " ", 
          RowBox[{"as", "[", 
           RowBox[{"[", "4", "]"}], "]"}], ",", "tol"}], "]"}], " ", "&&", 
        " ", "\[IndentingNewLine]", 
        RowBox[{"isalmostequal", "[", 
         RowBox[{
          RowBox[{"-", 
           RowBox[{"bs", "[", 
            RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
          RowBox[{"as", "[", 
           RowBox[{"[", "2", "]"}], "]"}], ",", 
          RowBox[{"bs", "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
          RowBox[{"as", "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", "tol"}], "]"}], " ", "&&", 
        " ", "\[IndentingNewLine]", 
        RowBox[{"isalmostequal", "[", 
         RowBox[{
          RowBox[{"3", 
           RowBox[{"bs", "[", 
            RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
          RowBox[{"as", "[", 
           RowBox[{"[", "1", "]"}], "]"}], ",", 
          RowBox[{"bs", "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
          RowBox[{"as", "[", 
           RowBox[{"[", "3", "]"}], "]"}], ",", "tol"}], "]"}]}], ",", "  ", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"isalmostzero", "[", 
          RowBox[{
           RowBox[{"bs", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
           RowBox[{"as", "[", 
            RowBox[{"[", "1", "]"}], "]"}], ",", "tol"}], "]"}], ",", " ", 
         "\[IndentingNewLine]", "\"\<point or line\>\"", ",", " ", 
         "\[IndentingNewLine]", "\"\<quadratic\>\""}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"A", " ", "=", " ", 
            RowBox[{"bs", "[", 
             RowBox[{"[", "1", "]"}], "]"}]}], ",", " ", 
           RowBox[{"B", " ", "=", " ", 
            RowBox[{"bs", "[", 
             RowBox[{"[", "2", "]"}], "]"}]}], ",", " ", 
           RowBox[{"C", " ", "=", " ", 
            RowBox[{"bs", "[", 
             RowBox[{"[", "3", "]"}], "]"}]}], ",", " ", 
           RowBox[{"D", "=", 
            RowBox[{"bs", "[", 
             RowBox[{"[", "4", "]"}], "]"}]}], ",", " ", 
           RowBox[{"a", "=", 
            RowBox[{
             RowBox[{"Apply", "[", 
              RowBox[{"Times", ",", "as"}], "]"}], " ", "tol"}]}]}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Module", "[", 
          RowBox[{
           RowBox[{"{", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"\[Delta]1", "=", 
              RowBox[{"Det", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"B", ",", "A"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"C", ",", "B"}], "}"}]}], "}"}], "]"}]}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"\[Delta]2", "=", 
              RowBox[{"Det", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"B", ",", "A"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"D", ",", "C"}], "}"}]}], "}"}], "]"}]}], ",", "  ",
              "\[IndentingNewLine]", 
             RowBox[{"\[Delta]3", "=", 
              RowBox[{"Det", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"C", ",", "D"}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"B", ",", "C"}], "}"}]}], "}"}], "]"}]}]}], "}"}], 
           ",", " ", 
           RowBox[{
            RowBox[{"Print", "[", 
             RowBox[{"{", 
              RowBox[{"\[Delta]1", ",", " ", "\[Delta]2", ",", "\[Delta]3"}], 
              "}"}], "]"}], ";", "\[IndentingNewLine]", 
            RowBox[{"Module", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"d", "=", 
                RowBox[{"Chop", "[", 
                 RowBox[{"Det", "[", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"2", "\[Delta]1"}], ",", "\[Delta]2"}], "}"}], 
                    ",", 
                    RowBox[{"{", 
                    RowBox[{"\[Delta]2", ",", 
                    RowBox[{"2", "\[Delta]3"}]}], "}"}]}], "}"}], "]"}], 
                 "]"}]}], "}"}], ",", " ", 
              RowBox[{
               RowBox[{"Print", "[", "d", "]"}], ";", "\[IndentingNewLine]", 
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"d", " ", "<", " ", 
                  RowBox[{"-", "a"}]}], " ", ",", " ", "\[IndentingNewLine]", 
                 "\"\<loop\>\"", ",", " ", "\[IndentingNewLine]", 
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"d", " ", ">", " ", "a"}], ",", " ", 
                   "\[IndentingNewLine]", "\"\<serpentine\>\"", ",", " ", 
                   "\[IndentingNewLine]", "\"\<cusp\>\""}], "]"}]}], 
                "]"}]}]}], "]"}]}]}], "]"}]}], "]"}]}], "]"}]}]}], 
   "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.727651618341399*^9, 3.727651618419961*^9}, {
   3.7276521080979643`*^9, 3.727652108181343*^9}, {3.727652184289607*^9, 
   3.727652250273978*^9}, 3.7276523463733683`*^9, {3.727652788454797*^9, 
   3.727652882936297*^9}, {3.727699028935466*^9, 3.727699070939548*^9}, {
   3.727715656377767*^9, 3.727715691071251*^9}, {3.7310204087656193`*^9, 
   3.731020416291514*^9}, {3.731020478148047*^9, 3.731020512698168*^9}, {
   3.7310209622462473`*^9, 3.731020977639327*^9}},
 CellLabel->"In[47]:=",ExpressionUUID->"6d9a2a7f-eac6-43d1-902d-1d05f6bcbbc2"],

Cell[BoxData[
 RowBox[{
  RowBox[{"discriminantb", "[", 
   RowBox[{"{", 
    RowBox[{"b1_", ",", " ", "b2_", ",", " ", "b3_", ",", " ", "b4_"}], "}"}],
    "]"}], " ", ":=", "\[IndentingNewLine]", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Delta]1", "=", 
       RowBox[{"2", 
        RowBox[{"Det", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"b3", ",", "b4"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"b2", ",", "b3"}], "}"}]}], "}"}], "]"}]}]}], ",", 
      RowBox[{"\[Delta]2", "=", 
       RowBox[{"Det", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"b4", ",", "b3"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"b2", ",", "b1"}], "}"}]}], "}"}], "]"}]}], ",", "  ", 
      RowBox[{"\[Delta]3", "=", 
       RowBox[{"2", 
        RowBox[{"Det", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"b2", ",", "b1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"b3", ",", "b2"}], "}"}]}], "}"}], "]"}]}]}]}], "}"}], 
    ",", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"d", "=", 
        RowBox[{"Det", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\[Delta]1", ",", "\[Delta]2"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\[Delta]2", ",", "\[Delta]3"}], "}"}]}], "}"}], "]"}]}], 
       "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"b1", ",", " ", "b2", ",", " ", "b3", ",", " ", "b4"}], 
         "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"\[Delta]1", ",", " ", "\[Delta]2", ",", " ", "\[Delta]3"}], 
         "}"}], ",", "d"}], "}"}]}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{
  3.727618429117546*^9, {3.7276223774652357`*^9, 3.7276223927867737`*^9}, {
   3.727622438623974*^9, 3.7276224396495657`*^9}, {3.7276225267684097`*^9, 
   3.727622543467224*^9}, {3.727622612694672*^9, 3.727622663676199*^9}, {
   3.7276226953989143`*^9, 3.727622752684732*^9}, {3.7276227828578444`*^9, 
   3.727622795327963*^9}, {3.7276228271594048`*^9, 3.727622841567871*^9}, {
   3.7276228996223593`*^9, 3.727622899756309*^9}, {3.7276229325222178`*^9, 
   3.727622968910145*^9}, 3.727623054908865*^9, {3.727910663212088*^9, 
   3.72791067474792*^9}, {3.727911570443499*^9, 3.727911572555431*^9}, 
   3.727911684646209*^9, {3.72791187740845*^9, 3.727911947159623*^9}, {
   3.727913167438936*^9, 3.7279131934860697`*^9}, {3.727913305959475*^9, 
   3.7279133121502037`*^9}, {3.731021099832258*^9, 3.7310211467598*^9}, {
   3.731021510137987*^9, 3.731021528991481*^9}},
 CellLabel->"In[48]:=",ExpressionUUID->"bc8eb95c-e8be-4669-b6b4-591fe2f5ef4b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Det", "[", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"\[Delta]1", ",", "\[Delta]2"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"\[Delta]2", ",", "\[Delta]3"}], "}"}]}], "}"}], "]"}]], "Input",\
ExpressionUUID->"8ec866ce-7314-4ff7-b23c-150409d533d5"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", 
   SuperscriptBox["\[Delta]2", "2"]}], "+", 
  RowBox[{"\[Delta]1", " ", "\[Delta]3"}]}]], "Output",
 CellChangeTimes->{
  3.731021225919306*^9},ExpressionUUID->"3caf68dd-03fc-45b3-b9f7-\
8d37a0795036"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"MatrixForm", "[", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"a", ",", " ", "b", ",", " ", "c", ",", " ", "d"}], "}"}], ",", 
    " ", 
    RowBox[{"{", 
     RowBox[{"d", ",", " ", "e", ",", " ", "f", ",", " ", "g"}], "}"}], ",", 
    " ", 
    RowBox[{"{", 
     RowBox[{"1", ",", "1", ",", "1", ",", "1"}], "}"}]}], "}"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.7310206284428988`*^9, 3.731020636509075*^9}, {
  3.7310206693448753`*^9, 
  3.7310206698092422`*^9}},ExpressionUUID->"4e8c24ba-b099-4075-a0bb-\
697681776765"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"a", "b", "c", "d"},
     {"d", "e", "f", "g"},
     {"1", "1", "1", "1"}
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
 CellChangeTimes->{3.7310206377966967`*^9, 
  3.731020670839859*^9},ExpressionUUID->"0dbe2a73-cb47-46a9-8b5b-\
73d445abb2cb"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Cross", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"a", ",", " ", "b", ",", " ", "c", ",", " ", "d"}], "}"}], ",", 
   " ", 
   RowBox[{"{", 
    RowBox[{"d", ",", " ", "e", ",", " ", "f", ",", " ", "g"}], "}"}], ",", 
   " ", 
   RowBox[{"{", 
    RowBox[{"1", ",", "1", ",", "1", ",", "1"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.7310205994779053`*^9, 3.731020611930697*^9}, {
  3.731020657795333*^9, 
  3.731020659337359*^9}},ExpressionUUID->"861a6f3d-8989-4874-acf0-\
09c007e2e44b"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"c", " ", "e"}], "-", 
    RowBox[{"d", " ", "e"}], "-", 
    RowBox[{"b", " ", "f"}], "+", 
    RowBox[{"d", " ", "f"}], "+", 
    RowBox[{"b", " ", "g"}], "-", 
    RowBox[{"c", " ", "g"}]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "c"}], " ", "d"}], "+", 
    SuperscriptBox["d", "2"], "+", 
    RowBox[{"a", " ", "f"}], "-", 
    RowBox[{"d", " ", "f"}], "-", 
    RowBox[{"a", " ", "g"}], "+", 
    RowBox[{"c", " ", "g"}]}], ",", 
   RowBox[{
    RowBox[{"b", " ", "d"}], "-", 
    SuperscriptBox["d", "2"], "-", 
    RowBox[{"a", " ", "e"}], "+", 
    RowBox[{"d", " ", "e"}], "+", 
    RowBox[{"a", " ", "g"}], "-", 
    RowBox[{"b", " ", "g"}]}], ",", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "b"}], " ", "d"}], "+", 
    RowBox[{"c", " ", "d"}], "+", 
    RowBox[{"a", " ", "e"}], "-", 
    RowBox[{"c", " ", "e"}], "-", 
    RowBox[{"a", " ", "f"}], "+", 
    RowBox[{"b", " ", "f"}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.7310206128135843`*^9, 
  3.731020661510372*^9},ExpressionUUID->"823d4475-aaa3-41e1-9949-\
4b05ee53776b"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Det", "["}]], "Input",
 CellChangeTimes->{{3.731020617264248*^9, 
  3.731020617957356*^9}},ExpressionUUID->"74b3286f-1f62-45c4-914c-\
2a5e60ca2574"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"2003.927196979522`", "*", "3562.5372390747057`"}], "-", 
  RowBox[{"2671.9029293060294`", "*", "2671.9029293060294`"}]}]], "Input",
 CellChangeTimes->{{3.73102144607228*^9, 3.7310214723477182`*^9}, {
  3.7310215502639437`*^9, 
  3.731021567799096*^9}},ExpressionUUID->"dbb4b2e8-460d-4ed6-8c72-\
c34b70d981b1"],

Cell[BoxData["0.`"], "Output",
 CellChangeTimes->{3.731021473654848*^9, 
  3.731021569012352*^9},ExpressionUUID->"c6d5b811-714a-4baf-8470-\
abb3761dd56a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyb", "[", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"-", "1.265625"}], ",", 
      RowBox[{"-", "1.03125"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"1.6875", ",", "2.90625"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"-", "2.25"}], ",", "2.25"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"3.", ",", 
      RowBox[{"-", "3."}]}], "}"}]}], "}"}], "]"}]], "Input",
 CellChangeTimes->{{3.731020425002493*^9, 
  3.7310204262830677`*^9}},ExpressionUUID->"7dec7a1d-db13-4903-9634-\
c47dc6073941"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "72.35156249999999`"}], ",", 
   RowBox[{"-", "12.058593749999998`"}], ",", "22.609863281249996`", ",", 
   "40.69775390624999`"}], "}"}]], "Print",
 GeneratedCell->False,
 CellAutoOverwrite->False,
 CellChangeTimes->{
  3.731020427482182*^9, {3.731020489522934*^9, 3.731020517440757*^9}, 
   3.731020954906312*^9, 3.7310209852161293`*^9, {3.731021482372692*^9, 
   3.731021483548834*^9}},ExpressionUUID->"c9e555b6-e0db-4972-bd69-\
26d70e848130"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1781.2686195373528`", ",", "2671.9029293060294`", ",", 
   "1001.963598489761`"}], "}"}]], "Print",
 CellChangeTimes->{
  3.731020427482182*^9, {3.731020489522934*^9, 3.731020517440757*^9}, 
   3.731020954906312*^9, 
   3.731020985226891*^9},ExpressionUUID->"639a26cd-35c7-4e76-9d89-\
1f6c4b30b2cf"],

Cell[BoxData[
 RowBox[{"-", "8.100271859518001`*^-10"}]], "Print",
 CellChangeTimes->{
  3.731020427482182*^9, {3.731020489522934*^9, 3.731020517440757*^9}, 
   3.731020954906312*^9, 
   3.731020985238756*^9},ExpressionUUID->"8f510657-a729-4e55-bd94-\
50826e7b5b35"]
}, Open  ]],

Cell[BoxData["\<\"cusp\"\>"], "Output",
 CellChangeTimes->{
  3.731020427490429*^9, {3.731020489533741*^9, 3.731020517463155*^9}, 
   3.731020954928475*^9, 
   3.731020985250628*^9},ExpressionUUID->"2f37348b-3c5c-4b8a-afa0-\
8628a1913d56"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"discriminantb", "[", 
  RowBox[{"crossbmatrix", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "1.265625"}], ",", 
       RowBox[{"-", "1.03125"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1.6875", ",", "2.90625"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "2.25"}], ",", "2.25"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3.", ",", 
       RowBox[{"-", "3."}]}], "}"}]}], "}"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.731019935401627*^9, 
  3.731019946257307*^9}},ExpressionUUID->"fe1ec6ee-04ab-4574-889d-\
7e38ecb607c1"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "72.35156249999999`"}], ",", 
     RowBox[{"-", "12.058593749999998`"}], ",", "22.609863281249996`", ",", 
     "40.69775390624999`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2003.927196979522`", ",", 
     RowBox[{"-", "2671.9029293060294`"}], ",", "3562.5372390747057`"}], 
    "}"}], ",", "0.`"}], " ", "}"}]], "Input",
 CellChangeTimes->{{3.731021537162875*^9, 
  3.73102153717021*^9}},ExpressionUUID->"d4984517-877d-4fa2-983a-\
2cd91104dc4b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"inflectionpolyb", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1.265625"}], ",", 
        RowBox[{"-", "1.03125"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1.6875", ",", "2.90625"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "2.25"}], ",", "2.25"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"3.", ",", 
        RowBox[{"-", "3."}]}], "}"}]}], "}"}], ",", "t"}], "]"}], " ", "//", 
  " ", "Expand"}]], "Input",
 CellChangeTimes->{{3.7310196848608627`*^9, 3.7310197294695187`*^9}, {
  3.7310197685057583`*^9, 3.731019838831389*^9}, {3.731019888767524*^9, 
  3.7310199070454187`*^9}},ExpressionUUID->"76667da7-06fb-4931-9472-\
3a68bd0b0cfe"],

Cell[BoxData[
 RowBox[{"40.69775390624999`", "\[VeryThinSpace]", "-", 
  RowBox[{"189.92285156249994`", " ", "t"}], "+", 
  RowBox[{"221.57666015624994`", " ", 
   SuperscriptBox["t", "2"]}]}]], "Output",
 CellChangeTimes->{{3.731019789242345*^9, 3.73101983935706*^9}, {
  3.73101989713793*^9, 
  3.7310199074350977`*^9}},ExpressionUUID->"a43d35b3-f3e7-428d-aa59-\
557a195741da"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"inflectionpolyp", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "1.265625"}], ",", 
       RowBox[{"-", "1.03125"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1.6875", ",", "2.90625"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "2.25"}], ",", "2.25"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"3.", ",", 
       RowBox[{"-", "3."}]}], "}"}]}], "}"}], ",", "t"}], "]"}]], "Input",
 CellChangeTimes->{{3.731019822564665*^9, 
  3.7310198230752783`*^9}},ExpressionUUID->"79c16535-cce7-4c93-867e-\
07011a31b555"],

Cell[BoxData[
 RowBox[{
  RowBox[{"-", "122.09326171875`"}], "+", 
  RowBox[{"569.7685546875`", " ", "t"}], "-", 
  RowBox[{"664.7299804687499`", " ", 
   SuperscriptBox["t", "2"]}]}]], "Output",
 CellChangeTimes->{
  3.731019825217222*^9},ExpressionUUID->"2da23deb-f005-4bdc-b4c7-\
679d6eb8315e"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"classifyb", "[", 
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
        RowBox[{"x3_", ",", "y3_"}], "}"}]}], "}"}]}], ",", " ", 
    RowBox[{"tol_:", "1*^-5"}]}], "]"}], ":=", " ", 
  RowBox[{"classifyb", "[", 
   RowBox[{
    RowBox[{"Map", "[", 
     RowBox[{"e2p", ",", "m"}], "]"}], ",", "tol"}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.7276529004065723`*^9, 3.72765290247054*^9}},
 CellLabel->"In[49]:=",ExpressionUUID->"efb4d627-bd3d-48dc-a90c-85f1a6c0cbc1"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyb", "[", 
  RowBox[{"N", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0"}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0"}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0"}], "}"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", " ", "0"}], "}"}]}], "}"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.7276236624981937`*^9, 3.7276236639818*^9}, {
  3.727623704189967*^9, 3.7276237045350237`*^9}, {3.727627435907728*^9, 
  3.7276274391170673`*^9}, {3.7276280863312597`*^9, 3.7276280887573147`*^9}, {
  3.727628158470832*^9, 3.727628161923415*^9}, {3.7276529147986727`*^9, 
  3.727652914870743*^9}},ExpressionUUID->"6c7a7d1e-158c-41b7-9848-\
9bfef8afbf76"],

Cell[BoxData["\<\"point or line\"\>"], "Output",
 CellChangeTimes->{
  3.727623705350108*^9, 3.727627256727406*^9, 3.727627303689703*^9, 
   3.72762743939618*^9, {3.727627961335712*^9, 3.7276279794999323`*^9}, 
   3.72762801427136*^9, 3.727628089238084*^9, 3.7276281197646503`*^9, {
   3.7276281551202793`*^9, 3.7276281621951523`*^9}, 3.727651562365293*^9, 
   3.727652915317862*^9, 3.727699150362956*^9, 
   3.727715697664152*^9},ExpressionUUID->"b42e65da-3357-4680-b342-\
ed99effd2e2b"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyb", "[", 
  RowBox[{"N", "[", 
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
      RowBox[{"9", ",", " ", "0"}], "}"}]}], "}"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{
  3.727652423131414*^9, {3.727652918280128*^9, 
   3.727652918350819*^9}},ExpressionUUID->"0da8077a-9f11-41e3-bfbf-\
6e44309216b9"],

Cell[BoxData["\<\"point or line\"\>"], "Output",
 CellChangeTimes->{3.727652424561138*^9, 3.727652918684721*^9, 
  3.727653167914168*^9, 3.7276991508757143`*^9, 
  3.727715698517129*^9},ExpressionUUID->"537cb4e6-6441-48d2-b980-\
078fd8a85067"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyb", "[", 
  RowBox[{"N", "[", 
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
      RowBox[{"3", ",", " ", "0"}], "}"}]}], "}"}], "]"}], "]"}]], "Input",Exp\
ressionUUID->"b089249d-39b5-4063-b585-17e11838bfdf"],

Cell[BoxData["\<\"quadratic\"\>"], "Output",
 CellChangeTimes->{3.72765296877468*^9, 3.7276530107985973`*^9, 
  3.727653169356454*^9, 3.727699151273396*^9, 
  3.727715699294427*^9},ExpressionUUID->"9ca4fe2b-f3fa-46c1-952c-\
124ab1173eb7"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyb", "[", 
  RowBox[{"N", "[", 
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
       RowBox[{"-", "3"}]}], "}"}]}], "}"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{
  3.727623716404249*^9, {3.727627442371594*^9, 3.727627445248188*^9}, {
   3.727652925512122*^9, 
   3.7276529255587883`*^9}},ExpressionUUID->"157bc4be-052c-4289-a145-\
2a74f334201d"],

Cell[BoxData["\<\"loop\"\>"], "Output",
 CellChangeTimes->{3.7276237171942577`*^9, 3.727627258634344*^9, 
  3.727627304926607*^9, 3.727627445531972*^9, 3.727627949757427*^9, 
  3.727628016156311*^9, 3.727628163869886*^9, 3.727651563049171*^9, 
  3.7276529258058357`*^9, 3.727653175251481*^9, 3.727699151634432*^9, 
  3.727715699896747*^9},ExpressionUUID->"3596b0dd-2961-47df-820c-\
c704daf6a460"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyb", "[", 
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
      RowBox[{"-", "3"}]}], "}"}]}], "}"}], "]"}]], "Input",
 CellChangeTimes->{{3.727627561075858*^9, 3.727627563415663*^9}, {
  3.7276529277920923`*^9, 
  3.727652927862856*^9}},ExpressionUUID->"2dc424ab-5e9e-4f81-bd42-\
0580ca4c35d9"],

Cell[BoxData["\<\"cusp\"\>"], "Output",
 CellChangeTimes->{3.727627563987458*^9, 3.7276281662018023`*^9, 
  3.727651564290894*^9, 3.727652928127226*^9, 3.72765317592235*^9, 
  3.7276991520641403`*^9, 
  3.7277157003896427`*^9},ExpressionUUID->"34ce0e94-714b-4604-b67d-\
37f30b4316ee"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyb", "[", 
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
      RowBox[{"-", "3"}]}], "}"}]}], "}"}], "]"}]], "Input",
 CellChangeTimes->{
  3.72762374325452*^9, {3.727652930368185*^9, 
   3.7276529304468527`*^9}},ExpressionUUID->"cecad372-60a6-43ed-8e11-\
ea8b00bcd3ee"],

Cell[BoxData["\<\"serpentine\"\>"], "Output",
 CellChangeTimes->{3.727623743977663*^9, 3.727627260275309*^9, 
  3.727627306443585*^9, 3.727628167091235*^9, 3.727651564823887*^9, 
  3.727652930708913*^9, 3.727653176563446*^9, 3.727699152546875*^9, 
  3.727715700949492*^9},ExpressionUUID->"1e282a3e-9857-4a7e-a136-\
5bbbf241e2c1"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"classifyb", "[", 
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
     RowBox[{"4", ",", " ", "0"}], "}"}]}], "}"}], "]"}]], "Input",
 CellChangeTimes->{
  3.727627329532435*^9, {3.727652932720009*^9, 
   3.727652932790653*^9}},ExpressionUUID->"55bfad85-53bc-4d9a-88fb-\
9074f233fe89"],

Cell[BoxData["\<\"cusp\"\>"], "Output",
 CellChangeTimes->{3.727627330555346*^9, 3.7276281689335403`*^9, 
  3.727652933116699*^9, 3.727653177795657*^9, 3.727699153058138*^9, 
  3.727715701504012*^9},ExpressionUUID->"c056542f-c144-483b-b659-\
29996cb3cd58"]
}, Open  ]],

Cell["\<\
So now we can plot the double-points and inflections together with the curve \
classification.\
\>", "Text",
 CellChangeTimes->{{3.6246220869273577`*^9, 3.6246221283993998`*^9}, {
  3.624627268644024*^9, 3.624627273952292*^9}, {3.624627337088922*^9, 
  3.62462741416122*^9}, {3.624628432616747*^9, 3.624628441928463*^9}, {
  3.624638456262136*^9, 3.624638460614032*^9}, {3.627835390941555*^9, 
  3.6278353931674843`*^9}},ExpressionUUID->"a29372ce-4b47-4a93-bbd2-\
3a854efced7b"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.627907576532464*^9, 3.627907588392036*^9}, {
   3.627935526569097*^9, 3.627935591751978*^9}, 3.727613839007739*^9},
 CellLabel->"In[50]:=",ExpressionUUID->"aa676091-00e6-4282-8ccd-9d9b5f8ba189"],

Cell[BoxData[
 RowBox[{
  RowBox[{"setterbar", "[", 
   RowBox[{
    RowBox[{"Dynamic", "[", "var_", "]"}], ",", " ", "opts_", ",", " ", 
    RowBox[{"Dynamic", "[", "w1_", "]"}], ",", " ", 
    RowBox[{"Dynamic", "[", "w2_", "]"}]}], "]"}], " ", ":=", " ", 
  RowBox[{"SetterBar", "[", 
   RowBox[{
    RowBox[{"Dynamic", "[", 
     RowBox[{"var", ",", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"var", " ", "=", " ", "#"}], ";", " ", 
         RowBox[{"w1", " ", "=", " ", "1"}], ";", " ", 
         RowBox[{"w2", " ", "=", " ", "1"}]}], ")"}], "&"}]}], "]"}], ",", 
    "opts"}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.7259242450926867`*^9, 3.725924263875695*^9}, {
  3.7259242997732067`*^9, 3.72592434920481*^9}, {3.725924393262354*^9, 
  3.7259244031296797`*^9}},
 CellLabel->"In[51]:=",ExpressionUUID->"69191c8b-71e8-4ffb-8c56-9227521f2a8d"],

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
          RowBox[{"-", "3"}], ",", " ", 
          RowBox[{"-", "3"}]}], "}"}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"8", ",", "5"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "8"}], ",", " ", "5"}], "}"}], ",", "  ", 
        RowBox[{"{", 
         RowBox[{"3", ",", " ", 
          RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], ",", " ", 
     RowBox[{"w1s", " ", "=", " ", "1"}], ",", " ", 
     RowBox[{"w2s", " ", "=", " ", "1"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", 
         RowBox[{"N", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "1", "]"}], "]"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{
              RowBox[{"pt", "[", 
               RowBox[{"[", "2", "]"}], "]"}], ",", " ", "w1"}], "]"}], ",", 
            " ", 
            RowBox[{"e2p", "[", 
             RowBox[{
              RowBox[{"pt", "[", 
               RowBox[{"[", "3", "]"}], "]"}], ",", "w2"}], "]"}], ",", " ", 
            RowBox[{"e2p", "[", 
             RowBox[{"pt", "[", 
              RowBox[{"[", "4", "]"}], "]"}], "]"}]}], "}"}], "]"}]}], "}"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"Show", "[", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{"p2e", "[", 
            RowBox[{
             RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", "0", ",", "1"}], "}"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", " ", 
           RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{"p2e", "[", 
            RowBox[{
             RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", 
             RowBox[{"-", "5"}], ",", "0"}], "}"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", "Dashed"}], ",", 
           RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"ParametricPlot", "[", 
          RowBox[{
           RowBox[{"p2e", "[", 
            RowBox[{
             RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", " ", "1", ",", "6"}], "}"}], ",", " ", 
           RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
           RowBox[{"PlotStyle", "\[Rule]", "Dashed"}], ",", 
           RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"PointSize", "[", "Large", "]"}], ",", "Red", ",", 
            RowBox[{"Point", "[", 
             RowBox[{"Map", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"p2e", "[", 
                 RowBox[{
                  RowBox[{"bb3", "[", "#", "]"}], ".", "m"}], "]"}], "&"}], 
               ",", 
               RowBox[{"inflectionsb", "[", "m", "]"}]}], "]"}], "]"}]}], 
           "}"}], "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"PointSize", "[", "Large", "]"}], ",", "Green", ",", 
            RowBox[{"Point", "[", 
             RowBox[{"Map", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"p2e", "[", 
                 RowBox[{
                  RowBox[{"bb3", "[", "#", "]"}], ".", "m"}], "]"}], "&"}], 
               ",", 
               RowBox[{"doublepointb", "[", "m", "]"}]}], "]"}], "]"}]}], 
           "}"}], "]"}], ",", "\[IndentingNewLine]", 
         RowBox[{"Graphics", "[", 
          RowBox[{"{", 
           RowBox[{"Black", ",", "Dashed", ",", " ", 
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
         RowBox[{"Graphics", "[", 
          RowBox[{"Text", "[", 
           RowBox[{
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"classifyp", "[", "m", "]"}], ",", "Large"}], "]"}], 
            ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"-", "6"}]}], "}"}]}], "]"}], "]"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts", ",", "\"\<reset\>\""}], "}"}], ",", " ", 
       RowBox[{
        RowBox[{"setterbar", "[", 
         RowBox[{"#", ",", "cubicexamples", ",", 
          RowBox[{"Dynamic", "[", "w1", "]"}], ",", 
          RowBox[{"Dynamic", "[", "w2", "]"}]}], "]"}], "&"}]}], "}"}], ",", 
     " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w1", ",", "w1s"}], "}"}], ",", " ", "0", ",", " ", "20"}], 
      "}"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"w2", ",", "w2s"}], "}"}], ",", "0", ",", "20"}], "}"}]}], 
    "]"}]}], "]"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.624626622019451*^9, 3.624626622525023*^9}, {
   3.624626767455415*^9, 3.624626771100086*^9}, {3.624626812749667*^9, 
   3.6246270124945297`*^9}, {3.6246271528320723`*^9, 
   3.6246271545037746`*^9}, {3.624627184642439*^9, 3.624627187904611*^9}, {
   3.6246274318275747`*^9, 3.62462753448449*^9}, {3.624627592614477*^9, 
   3.6246276151582413`*^9}, {3.624627999525258*^9, 3.624628254728108*^9}, {
   3.6246283958883543`*^9, 3.624628409488161*^9}, {3.6246374292416363`*^9, 
   3.624637439399742*^9}, {3.624638401557911*^9, 3.624638416416603*^9}, {
   3.624638846822015*^9, 3.624638846921084*^9}, {3.625314414277372*^9, 
   3.625314485783491*^9}, {3.625314522198483*^9, 3.625314564002058*^9}, {
   3.62532862227162*^9, 3.625328643544654*^9}, {3.625588452425556*^9, 
   3.6255884637433033`*^9}, 3.627661459554298*^9, {3.627825008053417*^9, 
   3.627825033208105*^9}, {3.627835403873228*^9, 3.62783542331339*^9}, {
   3.6278354635458*^9, 3.627835469743556*^9}, {3.627835621779563*^9, 
   3.627835684747223*^9}, {3.627836335191762*^9, 3.627836360436824*^9}, {
   3.6278365334944553`*^9, 3.627836540812642*^9}, {3.627840401786377*^9, 
   3.6278404324871693`*^9}, {3.627840930528468*^9, 3.627840944524508*^9}, {
   3.62784110189053*^9, 3.627841157277162*^9}, {3.62784124674894*^9, 
   3.627841280353764*^9}, 3.627841340066766*^9, {3.627841374226638*^9, 
   3.62784142838335*^9}, {3.627841476984315*^9, 3.627841524540925*^9}, 
   3.6278416076951857`*^9, {3.627903706880274*^9, 3.627903748582286*^9}, {
   3.6279037813665133`*^9, 3.6279039363041363`*^9}, {3.6279043464208317`*^9, 
   3.627904349536931*^9}, {3.6279044056443853`*^9, 3.627904439373185*^9}, {
   3.627904484520569*^9, 3.6279045231048737`*^9}, {3.627904840274435*^9, 
   3.627904874715958*^9}, {3.6279049658157063`*^9, 3.627905230961882*^9}, {
   3.627905271621522*^9, 3.627905282490774*^9}, {3.6279054075916967`*^9, 
   3.627905490416416*^9}, {3.627905573723105*^9, 3.627905704629965*^9}, 
   3.627905816469928*^9, {3.627905915202311*^9, 3.62790600183224*^9}, {
   3.627906336501938*^9, 3.627906338469146*^9}, {3.627906492361161*^9, 
   3.6279065060059834`*^9}, {3.6279065384989567`*^9, 3.627906552798009*^9}, {
   3.6279066181618023`*^9, 3.627906669205851*^9}, {3.627906699636899*^9, 
   3.627906847004313*^9}, {3.6279069927060757`*^9, 3.627907173126734*^9}, {
   3.627907241011653*^9, 3.6279072429571447`*^9}, {3.627907411499508*^9, 
   3.627907414367241*^9}, {3.6279075169356823`*^9, 3.627907517370742*^9}, {
   3.6279075959882507`*^9, 3.627907599085194*^9}, {3.6279189014516487`*^9, 
   3.6279189360204477`*^9}, {3.6279191994488983`*^9, 3.627919275072036*^9}, {
   3.6323304172588673`*^9, 3.6323304662189493`*^9}, {3.632330501871088*^9, 
   3.6323306055978394`*^9}, {3.632330942294363*^9, 3.6323309787075*^9}, {
   3.6324157369179688`*^9, 3.632415758675157*^9}, {3.632415788792802*^9, 
   3.632415791143426*^9}, {3.632415861479064*^9, 3.632415866597941*^9}, {
   3.6324159444258757`*^9, 3.632416155130275*^9}, 3.632416614821968*^9, {
   3.632416866768792*^9, 3.6324169305561657`*^9}, {3.632430729591449*^9, 
   3.6324307577701807`*^9}, {3.6324308121665897`*^9, 3.632430819150182*^9}, {
   3.632431145685734*^9, 3.632431153751457*^9}, 3.632762683817322*^9, {
   3.6944728095399446`*^9, 3.694472836204185*^9}, {3.7259202419609222`*^9, 
   3.725920251430254*^9}, {3.725920299015943*^9, 3.725920365330079*^9}, {
   3.7259204794616003`*^9, 3.725920483874546*^9}, {3.725920595868725*^9, 
   3.725920604677264*^9}, {3.7259206636778584`*^9, 3.725920706253234*^9}, {
   3.725920758518964*^9, 3.7259207918642063`*^9}, {3.725920925993442*^9, 
   3.725920971736106*^9}, {3.725921275133449*^9, 3.725921302725293*^9}, {
   3.725921821659457*^9, 3.725921868884927*^9}, {3.725922324578013*^9, 
   3.725922325968473*^9}, {3.725922835966651*^9, 3.7259228760541*^9}, {
   3.7259229413750267`*^9, 3.725922991592908*^9}, {3.7259230397211657`*^9, 
   3.725923071211547*^9}, {3.725923106252109*^9, 3.7259231426985197`*^9}, {
   3.725923295380554*^9, 3.72592332189108*^9}, {3.725923863282831*^9, 
   3.7259238644093647`*^9}, {3.725923942482724*^9, 3.725923954562373*^9}, {
   3.725924073141617*^9, 3.725924076371841*^9}, {3.725924409655964*^9, 
   3.725924410822905*^9}, {3.725924443440824*^9, 3.7259244904964113`*^9}, {
   3.725924592451898*^9, 3.725924594161972*^9}, {3.727623800894504*^9, 
   3.727623871557344*^9}, 3.727623919344035*^9, 3.72762821918618*^9, {
   3.733955147121941*^9, 3.7339551492024307`*^9}, {3.766422786112076*^9, 
   3.766422786188979*^9}, {3.766422821590908*^9, 3.76642284524721*^9}, {
   3.7664228934892273`*^9, 3.7664228935594797`*^9}},
 CellLabel->"In[52]:=",ExpressionUUID->"1fb1b77d-79cc-4507-842a-a53072a2aeec"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-3, -3}, {8, 5}, {-8, 5}, {
    3, -3}}, $CellContext`w1$$ = 1, $CellContext`w2$$ = 1, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}}, 
       "reset"}, 
      Dynamic[$CellContext`setterbar[#, $CellContext`cubicexamples, 
        Dynamic[$CellContext`w1$$], 
        Dynamic[$CellContext`w2$$]]& ]}, {{
       Hold[$CellContext`pt$$], {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}}}, 
      Automatic}, {{
       Hold[$CellContext`w1$$], 1}, 0, 20}, {{
       Hold[$CellContext`w2$$], 1}, 0, 20}}, Typeset`size$$ = {
    576., {285., 291.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`w1$3227$$ = 
    0, $CellContext`w2$3228$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-3, -3}, {8, 5}, {-8, 5}, {
         3, -3}}, $CellContext`w1$$ = 1, $CellContext`w2$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`w1$$, $CellContext`w1$3227$$, 0], 
        Hold[$CellContext`w2$$, $CellContext`w2$3228$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Module[{$CellContext`m$ = N[{
            $CellContext`e2p[
             Part[$CellContext`pt$$, 1]], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 2], $CellContext`w1$$], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 3], $CellContext`w2$$], 
            $CellContext`e2p[
             Part[$CellContext`pt$$, 4]]}]}, 
        Show[
         ParametricPlot[
          $CellContext`p2e[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$]], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Thick, Axes -> False], 
         ParametricPlot[
          $CellContext`p2e[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$]], \
{$CellContext`t, -5, 0}, PlotRange -> 10, PlotStyle -> Dashed, Axes -> False], 
         ParametricPlot[
          $CellContext`p2e[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$]], \
{$CellContext`t, 1, 6}, PlotRange -> 10, PlotStyle -> Dashed, Axes -> False], 
         
         Graphics[{
           PointSize[Large], Red, 
           Point[
            Map[$CellContext`p2e[
              Dot[
               $CellContext`bb3[#], $CellContext`m$]]& , 
             $CellContext`inflectionsb[$CellContext`m$]]]}], 
         Graphics[{
           PointSize[Large], Green, 
           Point[
            Map[$CellContext`p2e[
              Dot[
               $CellContext`bb3[#], $CellContext`m$]]& , 
             $CellContext`doublepointb[$CellContext`m$]]]}], 
         Graphics[{Black, Dashed, 
           Line[$CellContext`pt$$]}], 
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
            $CellContext`classifyp[$CellContext`m$], Large], {0, -6}]], 
         ImageSize -> Large]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-3, -3}, {8, 5}, {-8, 5}, {
          3, -3}}, "reset"}, 
         Dynamic[$CellContext`setterbar[#, $CellContext`cubicexamples, 
           Dynamic[$CellContext`w1$$], 
           Dynamic[$CellContext`w2$$]]& ]}, {{$CellContext`pt$$, {{-3, -3}, {
          8, 5}, {-8, 5}, {3, -3}}}, Automatic, ControlType -> 
         Locator}, {{$CellContext`w1$$, 1}, 0, 20}, {{$CellContext`w2$$, 1}, 
         0, 20}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{629., {359., 366.}},
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
           Blank[]]}] := 
       If[$CellContext`w != 
         0, {$CellContext`x/$CellContext`w, $CellContext`y/$CellContext`w}, {
         100000000000000000000000000000000000000000000000000000000000000000000\
00000000000000000000000000000000 $CellContext`x, 
          10000000000000000000000000000000000000000000000000000000000000000000\
000000000000000000000000000000000 $CellContext`y}], $CellContext`bb3[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^3, 
         3 (1 - $CellContext`t)^2 $CellContext`t, 
         3 (1 - $CellContext`t) $CellContext`t^2, $CellContext`t^3}, \
$CellContext`inflectionsb[
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
           
           Solve[$CellContext`inflectionpolyb[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`inflectionsb[
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
           
           Solve[$CellContext`inflectionpolyb[$CellContext`m, $CellContext`t] == 
            0, $CellContext`t, Reals]]]], $CellContext`inflectionpolyb[
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
         $CellContext`bb3[$CellContext`t], 
         Reverse[
          $CellContext`crossbmatrix[$CellContext`m]]], \
$CellContext`inflectionpolyb[
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
         $CellContext`bb3[$CellContext`t], 
         Reverse[
          $CellContext`crossbmatrix[$CellContext`m]]], \
$CellContext`crossbmatrix[
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
             Blank[]]}}]] := Dot[
         DiagonalMatrix[{3, -1, 1, -3}], 
         Apply[Cross, 
          Transpose[$CellContext`m]]], $CellContext`crossbmatrix[
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
             Blank[]]}}]] := $CellContext`crossbmatrix[
         Map[$CellContext`e2p, $CellContext`m]], $CellContext`doublepointb[
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
           
           Solve[$CellContext`doublepointpolyb[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]]], $CellContext`doublepointpolyb[
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
       Module[{$CellContext`c = $CellContext`crossbmatrix[$CellContext`m]}, 
         Module[{$CellContext`b3 = Part[$CellContext`c, 1], $CellContext`b2 = 
           Part[$CellContext`c, 2], $CellContext`b1 = 
           Part[$CellContext`c, 3], $CellContext`b0 = 
           Part[$CellContext`c, 4]}, 
          Dot[
           $CellContext`bb2[$CellContext`t], {
           2 ($CellContext`b1^2 - $CellContext`b0 $CellContext`b2), \
$CellContext`b1 $CellContext`b2 - $CellContext`b0 $CellContext`b3, 
            2 ($CellContext`b2^2 - $CellContext`b1 $CellContext`b3)}]]], \
$CellContext`doublepointpolyb[
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
       Module[{$CellContext`c = $CellContext`crossbmatrix[$CellContext`m]}, 
         Module[{$CellContext`b3 = Part[$CellContext`c, 1], $CellContext`b2 = 
           Part[$CellContext`c, 2], $CellContext`b1 = 
           Part[$CellContext`c, 3], $CellContext`b0 = 
           Part[$CellContext`c, 4]}, 
          Dot[
           $CellContext`bb2[$CellContext`t], {
           2 ($CellContext`b1^2 - $CellContext`b0 $CellContext`b2), \
$CellContext`b1 $CellContext`b2 - $CellContext`b0 $CellContext`b3, 
            2 ($CellContext`b2^2 - $CellContext`b1 $CellContext`b3)}]]], \
$CellContext`bb2[
         Pattern[$CellContext`t, 
          Blank[]]] := {(1 - $CellContext`t)^2, 
         2 (1 - $CellContext`t) $CellContext`t, $CellContext`t^2}, 
       Attributes[Subscript] = {NHoldRest}, $CellContext`classifyp[
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
         Optional[
          Pattern[$CellContext`tol, 
           Blank[]], 1/100000]] := 
       Module[{$CellContext`ds = $CellContext`crosspmatrix[$CellContext`m], \
$CellContext`as = $CellContext`maxxy[$CellContext`m]}, 
         If[
          And[
           $CellContext`isalmostzero[
            Part[$CellContext`ds, 1], 
            Part[$CellContext`as, 1], $CellContext`tol], 
           $CellContext`isalmostzero[
            Part[$CellContext`ds, 2], 
            Part[$CellContext`as, 2], $CellContext`tol], 
           $CellContext`isalmostzero[
            Part[$CellContext`ds, 3], 
            Part[$CellContext`as, 3], $CellContext`tol]], 
          If[
           $CellContext`isalmostzero[
            Part[$CellContext`ds, 4], 
            Part[$CellContext`as, 4], $CellContext`tol], "point or line", 
           "quadratic"], 
          
          Module[{$CellContext`A = 
            Part[$CellContext`ds, 1], $CellContext`B = -
             Part[$CellContext`ds, 2], C = Part[$CellContext`ds, 3], 
            D = -Part[$CellContext`ds, 4], $CellContext`a = 
            Apply[Times, $CellContext`as] $CellContext`tol}, 
           Module[{$CellContext`\[Delta]1 = Chop[
               
               Det[{{$CellContext`A, $CellContext`B}, {$CellContext`B, 
                  C}}]], $CellContext`\[Delta]2 = Chop[
               
               Det[{{$CellContext`A, $CellContext`B}, {
                 C, D}}]], $CellContext`\[Delta]3 = Chop[
               Det[{{$CellContext`B, C}, {C, D}}]]}, 
            Module[{$CellContext`d = Chop[
                
                Det[{{2 $CellContext`\[Delta]1, $CellContext`\[Delta]2}, \
{$CellContext`\[Delta]2, 2 $CellContext`\[Delta]3}}]]}, 
             If[$CellContext`d < -$CellContext`a, "loop", 
              
              If[$CellContext`d > $CellContext`a, "serpentine", 
               "cusp"]]]]]]], $CellContext`classifyp[
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
         Optional[
          Pattern[$CellContext`tol, 
           Blank[]], 1/100000]] := $CellContext`classifyp[
         Map[$CellContext`e2p, $CellContext`m], $CellContext`tol], \
$CellContext`crosspmatrix[
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
$CellContext`v -> $CellContext`t}]], $CellContext`maxxy[
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
             Blank[]]}}]] := Abs[
         Max[
          Map[Most, $CellContext`m]]], $CellContext`maxxy[
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
             Blank[]]}}]] := Table[
         $CellContext`maxxy[
          Part[$CellContext`m, 
           Select[
            Range[4], # != $CellContext`i& ], 
           Span[1, All]]], {$CellContext`i, 1, 4}], $CellContext`isalmostzero[
        
         Pattern[$CellContext`s, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Optional[
          Pattern[$CellContext`tol, 
           Blank[]], 1/100000]] := 
       Abs[$CellContext`s] <= $CellContext`tol $CellContext`a $CellContext`a, \
$CellContext`setterbar[
         Dynamic[
          Pattern[$CellContext`var, 
           Blank[]]], 
         Pattern[$CellContext`opts, 
          Blank[]], 
         Dynamic[
          Pattern[$CellContext`w1, 
           Blank[]]], 
         Dynamic[
          Pattern[$CellContext`w2, 
           Blank[]]]] := SetterBar[
         Dynamic[$CellContext`var, ($CellContext`var = #; $CellContext`w1 = 
           1; $CellContext`w2 = 
           1)& ], $CellContext`opts], $CellContext`cubicexamples = {{{0, 0}, {
          0, 0}, {0, 0}, {0, 0}} -> 
         "point", {{-9, 0}, {-8, 0}, {8, 0}, {9, 0}} -> 
         "line", {{-3, 0}, {-1, 1}, {1, 1}, {3, 0}} -> 
         "quadratic", {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}} -> 
         "loop", {{-3, -3}, {3, 3}, {-3, 3}, {3, -3}} -> 
         "cusp 1", {{-4, 0}, {0, 4}, {0, -4}, {4, 0}} -> 
         "cusp 2", {{-4, -3}, {3, 3}, {-3, 3}, {4, -3}} -> "serpentine"}}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.72592274817317*^9, {3.725923119913225*^9, 3.725923143730082*^9}, 
   3.725923206750616*^9, {3.7259232444761353`*^9, 3.725923349223958*^9}, {
   3.725923527199242*^9, 3.72592354754738*^9}, 3.725923637595092*^9, {
   3.725923821600429*^9, 3.725923839985918*^9}, 3.725923926284471*^9, 
   3.725923976377717*^9, 3.725924021799512*^9, 3.725924081191947*^9, {
   3.7259244664411287`*^9, 3.72592449162575*^9}, 3.725924594819336*^9, 
   3.725924699991626*^9, 3.727559965005205*^9, 3.72756451977271*^9, 
   3.727602290538823*^9, 3.7276114972715263`*^9, {3.727623863819758*^9, 
   3.727623872069442*^9}, 3.727623920934719*^9, 3.7276273386026907`*^9, 
   3.7276274098204803`*^9, 3.727628175417341*^9, 3.727628219620412*^9, 
   3.727649210398872*^9, 3.72769772270652*^9, 3.7276991603926077`*^9, 
   3.727699241611075*^9, 3.727699310159045*^9, 3.727824653491365*^9, 
   3.727872256547209*^9, 3.727883733104591*^9, 3.727957510998208*^9, 
   3.727964576097213*^9, 3.7279750594853907`*^9, 3.730829069639236*^9, 
   3.731019275181233*^9, 3.7339551025770893`*^9, 3.733955150345973*^9, 
   3.757853004063223*^9, 3.757854767098768*^9, 3.757866867251501*^9, 
   3.757867083648459*^9, {3.7578671682104807`*^9, 3.757867193506494*^9}, 
   3.757867358902526*^9, 3.757867578305511*^9, 3.7664142747546053`*^9, 
   3.766422787248406*^9, {3.7664228223874903`*^9, 3.766422845640209*^9}, 
   3.766422894003628*^9, 3.789393025981577*^9},
 CellLabel->"Out[52]=",ExpressionUUID->"1eb15dc3-41dc-4843-9e0c-35b673605728"]
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
 InitializationCell->True,
 CellChangeTimes->{{3.627833821592511*^9, 3.627833839703699*^9}, {
   3.632433160485856*^9, 3.6324331631951723`*^9}, 3.6944729551028357`*^9},
 CellLabel->"In[53]:=",ExpressionUUID->"5de3ed10-5379-4515-b4af-300c371e6a84"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.627834067050715*^9, 3.627834094068791*^9}, 
   3.694472958238677*^9},
 CellLabel->"In[54]:=",ExpressionUUID->"a06127f2-d00b-48db-a40b-e2689b0f426f"],

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
        RowBox[{"DeleteDuplicates", "[", 
         RowBox[{"Select", "[", 
          RowBox[{
           RowBox[{"Join", "[", 
            RowBox[{
             RowBox[{"Map", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", 
               RowBox[{
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"#", " ", "\[Equal]", " ", 
                    RowBox[{"{", 
                    RowBox[{"{", "}"}], "}"}]}], ",", 
                   RowBox[{"{", "}"}], ",", " ", "#"}], "]"}], "&"}], " ", 
                "@", " ", 
                RowBox[{"Solve", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"extremexpoly", "[", 
                    RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", 
                   "0"}], ",", " ", "t", ",", " ", "Reals"}], "]"}]}]}], 
              "]"}], ",", " ", 
             RowBox[{"Map", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", 
               RowBox[{
                RowBox[{
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{"#", " ", "\[Equal]", " ", 
                    RowBox[{"{", 
                    RowBox[{"{", "}"}], "}"}]}], ",", 
                   RowBox[{"{", "}"}], ",", " ", "#"}], "]"}], "&"}], " ", 
                "@", " ", 
                RowBox[{"Solve", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"extremeypoly", "[", 
                    RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", 
                   "0"}], ",", " ", "t", ",", " ", "Reals"}], "]"}]}]}], 
              "]"}]}], "]"}], ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"#", " ", ">", " ", "0"}], " ", "&&", " ", 
             RowBox[{"#", " ", "<", " ", "1"}]}], "&"}]}], "]"}], "]"}], ",", 
        "1"}], "]"}], ",", "0"}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.625347060708021*^9, 3.625347078999975*^9}, 
   3.6253499194647837`*^9, 3.625350010950408*^9, 3.625350188116341*^9, {
   3.625350854316545*^9, 3.6253508736093063`*^9}, {3.6253512412644367`*^9, 
   3.62535124750742*^9}, {3.6253515266453657`*^9, 3.625351574324589*^9}, {
   3.627823598075549*^9, 3.62782362775426*^9}, {3.627834106783922*^9, 
   3.627834152773213*^9}, {3.632431479800539*^9, 3.632431484387302*^9}, {
   3.632432677080618*^9, 3.632432684290867*^9}, 3.694472966157888*^9},
 CellLabel->"In[55]:=",ExpressionUUID->"f2a19e18-8c7e-4987-92e4-93d0fe29ac77"],

Cell["\<\
And now, given the inflections, double points, and the extremes, we can split \
the cubic segment into its component parts.\
\>", "Text",
 CellChangeTimes->{{3.62782588335495*^9, 
  3.627825922546691*^9}},ExpressionUUID->"43de666e-8d80-4681-bbf8-\
a0797dc79f58"],

Cell[BoxData[
 RowBox[{
  RowBox[{"splits", "[", 
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
    RowBox[{"Sort", "[", 
     RowBox[{"DeleteDuplicates", "[", 
      RowBox[{"Prepend", "[", 
       RowBox[{
        RowBox[{"Append", "[", 
         RowBox[{
          RowBox[{"Select", "[", 
           RowBox[{
            RowBox[{"Join", "[", 
             RowBox[{
              RowBox[{"Map", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", 
                RowBox[{
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"#", " ", "\[Equal]", " ", 
                    RowBox[{"{", 
                    RowBox[{"{", "}"}], "}"}]}], ",", 
                    RowBox[{"{", "}"}], ",", " ", "#"}], "]"}], "&"}], " ", 
                 "@", "  ", 
                 RowBox[{"Solve", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"inflectionpolyp", "[", 
                    RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", 
                    "0"}], ",", " ", "t", ",", " ", "Reals"}], "]"}]}]}], 
               "]"}], ",", 
              RowBox[{"Map", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", 
                RowBox[{
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"#", " ", "\[Equal]", " ", 
                    RowBox[{"{", 
                    RowBox[{"{", "}"}], "}"}]}], ",", 
                    RowBox[{"{", "}"}], ",", " ", "#"}], "]"}], "&"}], " ", 
                 "@", "  ", 
                 RowBox[{"Solve", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"doublepointpolyp", "[", 
                    RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", 
                    "0"}], ",", " ", "t", ",", " ", "Reals"}], "]"}]}]}], 
               "]"}], ",", 
              RowBox[{"Map", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"t", " ", "/.", " ", "#"}], "&"}], ",", 
                RowBox[{
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{"#", " ", "\[Equal]", " ", 
                    RowBox[{"{", 
                    RowBox[{"{", "}"}], "}"}]}], ",", 
                    RowBox[{"{", "}"}], ",", " ", "#"}], "]"}], "&"}], " ", 
                 "@", "  ", 
                 RowBox[{"Solve", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"extremexpoly", "[", 
                    RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", 
                    "0"}], ",", " ", "t", ",", " ", "Reals"}], "]"}]}]}], 
               "]"}], ",", " ", 
              RowBox[{"Map", "[", 
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
                    RowBox[{"{", "}"}], ",", " ", "#"}], "]"}], "&"}], " ", 
                 "@", "  ", 
                 RowBox[{"Solve", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"extremeypoly", "[", 
                    RowBox[{"m", ",", "t"}], "]"}], " ", "\[Equal]", " ", 
                    "0"}], ",", " ", "t", ",", " ", "Reals"}], "]"}]}]}], 
               "]"}]}], "]"}], ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"#", " ", ">", " ", "0"}], " ", "&&", " ", 
              RowBox[{"#", " ", "<", " ", "1"}]}], "&"}]}], "]"}], ",", "1"}],
          "]"}], ",", "0"}], "]"}], "]"}], "]"}]}], "]"}]}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.627825939151497*^9, 3.627825991185232*^9}, {
   3.627826040349766*^9, 3.62782610302512*^9}, {3.627826189910639*^9, 
   3.627826205019555*^9}, {3.62783228603786*^9, 3.627832286120018*^9}, {
   3.627834223665345*^9, 3.627834258114105*^9}, {3.627909298532743*^9, 
   3.627909321243682*^9}, {3.6279093751673098`*^9, 3.627909380996449*^9}, {
   3.62790942910242*^9, 3.6279094317002974`*^9}, {3.632432618874349*^9, 
   3.6324326321719837`*^9}, 3.6324331813246393`*^9, 3.69447300555051*^9, {
   3.757866983358692*^9, 3.757866987337017*^9}, {3.75786701878837*^9, 
   3.7578670218543463`*^9}},
 CellLabel->"In[56]:=",ExpressionUUID->"7c6dd4f7-73f4-4105-89e4-aab0d47c3af2"],

Cell["Here is the function that cuts a Bezier", "Text",
 CellChangeTimes->{{3.627909831022332*^9, 
  3.6279098505544043`*^9}},ExpressionUUID->"0fff991d-5f99-4b2d-8881-\
ee667cd0874e"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.6254416866337013`*^9, 3.625441761970744*^9}, {
  3.6254418406141443`*^9, 3.6254418407705936`*^9}, {3.62544196658174*^9, 
  3.625441969741811*^9}, {3.693089669977809*^9, 3.693089704993924*^9}},
 CellLabel->"In[57]:=",ExpressionUUID->"cdfb05a4-6d0c-4ac7-85ac-3080e2257285"],

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

 InitializationCell->True,
 CellChangeTimes->{{3.625442643016137*^9, 3.625442722374691*^9}, {
  3.625444051137353*^9, 3.62544406879979*^9}, {3.6930897154624233`*^9, 
  3.6930897222412453`*^9}, {3.693090291658607*^9, 3.693090299506528*^9}},
 CellLabel->"In[58]:=",ExpressionUUID->"24e70c16-c30d-47b3-8abe-719871fde7e7"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.62544132838976*^9, 3.625441339154496*^9}, {
   3.6254414103071623`*^9, 3.625441410903182*^9}, {3.625441542867281*^9, 
   3.625441562802532*^9}, {3.6254416099630537`*^9, 3.625441618726791*^9}, 
   3.625442617028184*^9, {3.62544277931122*^9, 3.6254427804360323`*^9}, 
   3.625442814298967*^9, {3.6254430207845707`*^9, 3.6254430599457903`*^9}, {
   3.625443095799914*^9, 3.625443110661345*^9}, {3.625443279482306*^9, 
   3.625443280144464*^9}, {3.625443319193604*^9, 3.625443366106598*^9}, {
   3.625443793623554*^9, 3.625443813670277*^9}, {3.62544386228192*^9, 
   3.625443863046569*^9}, {3.625444072839117*^9, 3.625444074976445*^9}, {
   3.62544411284457*^9, 3.6254441239141273`*^9}, {3.625444244515839*^9, 
   3.62544424685553*^9}, {3.625444306100038*^9, 3.625444307887999*^9}, {
   3.62544447418707*^9, 3.625444475199998*^9}, {3.62544450640731*^9, 
   3.625444519144094*^9}, {3.625444746293611*^9, 3.625444815605348*^9}, {
   3.693089738233528*^9, 3.693089753863454*^9}, {3.693090187849998*^9, 
   3.693090221989154*^9}, {3.6930902613094263`*^9, 3.693090265901373*^9}, 
   3.693090308124763*^9, {3.694474043561245*^9, 3.6944740512714853`*^9}},
 CellLabel->"In[59]:=",ExpressionUUID->"9c65a3f8-722d-44a8-bab1-2da2463b90e3"],

Cell["\<\
Here is a function that draws a Bezier with bounding box (assuming its \
monotonic and integral) and control polygon\
\>", "Text",
 CellChangeTimes->{{3.627909868111294*^9, 3.627909899211479*^9}, {
   3.627909944729042*^9, 3.6279099465103292`*^9}, 
   3.757866934252165*^9},ExpressionUUID->"f290ff63-e619-4398-8b1c-\
5d65fce6ef65"],

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
 InitializationCell->True,
 CellChangeTimes->{{3.627909913932129*^9, 3.627909924456358*^9}, 
   3.627909996527424*^9, {3.62791183208368*^9, 3.627911901461503*^9}, {
   3.627911937361999*^9, 3.62791197286699*^9}, {3.627912288392785*^9, 
   3.627912341629485*^9}, {3.627912480422929*^9, 3.627912482234775*^9}, {
   3.63241535349006*^9, 3.632415377507619*^9}, {3.632430916551805*^9, 
   3.632430916881201*^9}, {3.632430977302155*^9, 3.632430996763467*^9}, {
   3.632431033541103*^9, 3.6324310593142757`*^9}, {3.6324312498021517`*^9, 
   3.6324313007861633`*^9}, {3.694473077213973*^9, 3.694473079517604*^9}, 
   3.6944732980029917`*^9},
 CellLabel->"In[60]:=",ExpressionUUID->"40b8933f-0adf-4540-82e3-5722657481d0"],

Cell["Now we can draw all the pieces", "Text",
 CellChangeTimes->{{3.627909951358735*^9, 3.627909958975176*^9}, {
  3.627912188848465*^9, 
  3.627912192682979*^9}},ExpressionUUID->"974c3c47-9ac1-47ee-82d2-\
462c884d3294"],

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
         RowBox[{"-", "3"}], ",", " ", 
         RowBox[{"-", "3"}]}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"8", ",", "5"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "8"}], ",", " ", "5"}], "}"}], ",", "  ", 
       RowBox[{"{", 
        RowBox[{"3", ",", " ", 
         RowBox[{"-", "3"}]}], "}"}]}], "}"}]}], "}"}], ",", " ", 
   "\[IndentingNewLine]", 
   RowBox[{"Manipulate", "[", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", "=", 
         RowBox[{"N", "[", "pt", "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"s", "=", 
           RowBox[{"splits", "[", "m", "]"}]}], "}"}], ",", 
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
             RowBox[{"PlotStyle", "\[Rule]", "Thick"}], ",", " ", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", 
               RowBox[{"-", "5"}], ",", "0"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", "Dashed"}], ",", 
             RowBox[{"Axes", "\[Rule]", "False"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"ParametricPlot", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"bb3", "[", "t", "]"}], ".", "m"}], ",", 
             RowBox[{"{", 
              RowBox[{"t", ",", " ", "1", ",", "6"}], "}"}], ",", " ", 
             RowBox[{"PlotRange", "\[Rule]", "10"}], ",", " ", 
             RowBox[{"PlotStyle", "\[Rule]", "Dashed"}], ",", 
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
                  RowBox[{"blossomcut", "[", 
                   RowBox[{"m", ",", "#"}], "]"}], "]"}], "&"}], ",", 
                RowBox[{"Partition", "[", 
                 RowBox[{"s", ",", "2", ",", "1"}], "]"}]}], "]"}], ",", 
              "1"}], "]"}], "]"}], ",", " ", "\[IndentingNewLine]", 
           RowBox[{"Graphics", "[", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"PointSize", "[", "Large", "]"}], ",", "Red", ",", 
              RowBox[{"Point", "[", 
               RowBox[{"Map", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{"bb3", "[", "#", "]"}], ".", "m"}], "&"}], ",", 
                 "s"}], "]"}], "]"}]}], "}"}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "]"}]}], 
      "]"}], ",", " ", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"pt", ",", "pts"}], "}"}], ",", "Locator"}], "}"}]}], "]"}]}],
   "]"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.627911669170761*^9, 3.627911717602544*^9}, {
   3.627911804634712*^9, 3.627911813813889*^9}, {3.627911914833579*^9, 
   3.627911920264743*^9}, {3.627912122679962*^9, 3.627912126315106*^9}, {
   3.627912240369223*^9, 3.627912262092124*^9}, {3.627912371589974*^9, 
   3.627912373366377*^9}, {3.6279124176930847`*^9, 3.627912459814467*^9}, {
   3.628250994907799*^9, 3.628251019971435*^9}, {3.6282515875623493`*^9, 
   3.6282516560614862`*^9}, {3.632406232794159*^9, 3.6324063151229877`*^9}, {
   3.6324063589863367`*^9, 3.63240639985695*^9}, {3.63241517585217*^9, 
   3.6324151985209417`*^9}, {3.632415314061489*^9, 3.632415342769438*^9}, {
   3.632415508912159*^9, 3.6324155353150387`*^9}, {3.632415594797028*^9, 
   3.6324156531720257`*^9}, {3.6324170868988533`*^9, 3.632417091127487*^9}, {
   3.632430898025402*^9, 3.632430899464139*^9}, {3.632431068654787*^9, 
   3.632431068954988*^9}, {3.632431261211622*^9, 3.6324312724399147`*^9}, {
   3.632433202968398*^9, 3.63243320327807*^9}, 3.632762777844998*^9, {
   3.694473308225968*^9, 3.6944733106486807`*^9}, {3.694473383153556*^9, 
   3.694473401657598*^9}, {3.694473444762826*^9, 3.694473447858513*^9}, {
   3.6944738068472767`*^9, 3.694473846745614*^9}, {3.694474137913992*^9, 
   3.694474143513761*^9}},
 CellLabel->"In[61]:=",ExpressionUUID->"ce165a2d-4020-440f-aa0b-270b8a7df3d7"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pt$$ = {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}},
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`pt$$], {{-3, -3}, {8, 5}, {-8, 5}, {3, -3}}}, 
      Automatic}}, Typeset`size$$ = {576., {285., 291.}}, Typeset`update$$ = 
    0, Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pt$$ = {{-3, -3}, {8, 5}, {-8, 5}, {
         3, -3}}}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Module[{$CellContext`m$ = N[$CellContext`pt$$]}, 
        Module[{$CellContext`s$ = $CellContext`splits[$CellContext`m$]}, 
         Show[
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 0, 1}, PlotRange -> 10, PlotStyle -> Thick, Axes -> False], 
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$], \
{$CellContext`t, -5, 0}, PlotRange -> 10, PlotStyle -> Dashed, Axes -> False], 
          ParametricPlot[
           Dot[
            $CellContext`bb3[$CellContext`t], $CellContext`m$], \
{$CellContext`t, 1, 6}, PlotRange -> 10, PlotStyle -> Dashed, Axes -> False], 
          
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
              $CellContext`blossomcut[$CellContext`m$, #]]& , 
             Partition[$CellContext`s$, 2, 1]], 1]], 
          Graphics[{
            PointSize[Large], Red, 
            Point[
             Map[Dot[
               $CellContext`bb3[#], $CellContext`m$]& , $CellContext`s$]]}], 
          ImageSize -> Large]]], 
      "Specifications" :> {{{$CellContext`pt$$, {{-3, -3}, {8, 5}, {-8, 5}, {
          3, -3}}}, Automatic, ControlType -> Locator}}, "Options" :> {}, 
      "DefaultOptions" :> {SaveDefinitions -> True}],
     ImageSizeCache->{629., {319., 326.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`splits[
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
         Sort[
          DeleteDuplicates[
           Prepend[
            Append[
             Select[
              Join[
               Map[ReplaceAll[$CellContext`t, #]& , 
                (If[# == {{}}, {}, #]& )[
                 
                 Solve[$CellContext`inflectionpolyp[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]], 
               Map[ReplaceAll[$CellContext`t, #]& , 
                (If[# == {{}}, {}, #]& )[
                 
                 Solve[$CellContext`doublepointpolyp[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]], 
               Map[ReplaceAll[$CellContext`t, #]& , 
                (If[# == {{}}, {}, #]& )[
                 
                 Solve[$CellContext`extremexpoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]], 
               Map[ReplaceAll[$CellContext`t, #]& , 
                (If[# == {{}}, {}, #]& )[
                 
                 Solve[$CellContext`extremeypoly[$CellContext`m, \
$CellContext`t] == 0, $CellContext`t, Reals]]]], And[# > 0, # < 1]& ], 1], 
            0]]]], $CellContext`inflectionpolyp[
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
         $CellContext`crosstmatrixp[$CellContext`t], 
         $CellContext`crosspmatrix[$CellContext`m]], \
$CellContext`inflectionpolyp[
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
         $CellContext`crosstmatrixp[$CellContext`t], 
         $CellContext`crosspmatrix[$CellContext`m]], \
$CellContext`crosstmatrixp[
         Pattern[$CellContext`t, 
          Blank[]]] := {$CellContext`t^3, (-3) $CellContext`t^2, 
         3 $CellContext`t, -1}, $CellContext`crosspmatrix[
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
           Blank[]]}, 
         Optional[
          Pattern[$CellContext`w, 
           Blank[]], 
          1]] := {$CellContext`w $CellContext`x, $CellContext`w \
$CellContext`y, $CellContext`w}, $CellContext`doublepointpolyp[
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
$CellContext`d4]], $CellContext`doublepointpolyp[
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
$CellContext`d4]], $CellContext`extremexpoly[
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
          Point[$CellContext`m]}], $CellContext`blossomcut[
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
$CellContext`t]]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.694473407499571*^9, 3.694473449631405*^9}, {
   3.694473706794025*^9, 3.694473729307523*^9}, 3.694473761946618*^9, {
   3.6944738168512793`*^9, 3.694473847481777*^9}, 3.694474144245006*^9, 
   3.694474219316427*^9, 3.6947337600634108`*^9, 3.6947337994790573`*^9, 
   3.725902158171419*^9, 3.725905069689843*^9, 3.7259247004740477`*^9, 
   3.7275599656152763`*^9, 3.727564520406927*^9, 3.7276022915018597`*^9, 
   3.727611498079153*^9, 3.727627410303418*^9, 3.7276492113717117`*^9, 
   3.727697724356906*^9, 3.7278246544789753`*^9, 3.727872257827949*^9, 
   3.727883733941291*^9, 3.727957512064249*^9, 3.727964577217256*^9, 
   3.727975060721175*^9, 3.730829070644257*^9, 3.731019276183674*^9, 
   3.7339551031138163`*^9, 3.757853004952586*^9, 3.757854768456954*^9, 
   3.7578668685756273`*^9, {3.7578669976748247`*^9, 3.757867026433262*^9}, {
   3.757867073994738*^9, 3.757867084544758*^9}, {3.757867169165691*^9, 
   3.7578671944170094`*^9}, 3.7578673591177473`*^9, 3.7578675789663343`*^9, 
   3.766414275684917*^9, 3.789393026423395*^9},
 CellLabel->"Out[61]=",ExpressionUUID->"9ef07c7f-36ee-4fb6-bf78-2d78528b466a"]
}, Open  ]]
},
WindowSize->{1531, 1359},
WindowMargins->{{136, Automatic}, {0, Automatic}},
ShowSelection->True,
FrontEndVersion->"12.0 for Linux x86 (64-bit) (April 8, 2019)",
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
Cell[1488, 33, 296, 5, 37, "Text",ExpressionUUID->"64e3d14b-5fa1-4524-aa34-f639267a6c67"],
Cell[1787, 40, 393, 9, 90, "Input",ExpressionUUID->"55e080cd-e300-4e2d-af1d-638581220410"],
Cell[2183, 51, 293, 4, 37, "Text",ExpressionUUID->"6ae6f803-ff96-44d6-8b78-362a2149c793"],
Cell[2479, 57, 811, 20, 49, "Input",ExpressionUUID->"0753600b-1864-414c-a24c-7bf6547c64ba",
 InitializationCell->True],
Cell[3293, 79, 513, 14, 49, "Input",ExpressionUUID->"5d73a387-c32e-470e-a44b-1ab7f05e9130",
 InitializationCell->True],
Cell[3809, 95, 226, 5, 37, "Text",ExpressionUUID->"a56621af-f1c9-4df9-becc-f327fc0f6b30"],
Cell[4038, 102, 1199, 34, 49, "Input",ExpressionUUID->"a47e5630-2301-4db3-896c-0316fa3ef402",
 InitializationCell->True],
Cell[5240, 138, 220, 5, 37, "Text",ExpressionUUID->"e55456b8-f071-4c19-bde4-8643d913b825"],
Cell[5463, 145, 1017, 30, 49, "Input",ExpressionUUID->"767951e2-c25e-4453-b756-35dae0bcdfea",
 InitializationCell->True],
Cell[6483, 177, 918, 19, 37, "Text",ExpressionUUID->"89d0d7a5-f12d-434d-99f6-22ca338f527e"],
Cell[7404, 198, 562, 13, 49, "Input",ExpressionUUID->"27976c46-9e7d-4e67-a95f-64eac39ad30f",
 InitializationCell->True],
Cell[7969, 213, 473, 12, 49, "Input",ExpressionUUID->"4b914009-e5ed-497a-82eb-88fc380169bc",
 InitializationCell->True],
Cell[8445, 227, 514, 13, 49, "Input",ExpressionUUID->"14831516-97cb-4431-bc54-530d96146665",
 InitializationCell->True],
Cell[8962, 242, 423, 11, 49, "Input",ExpressionUUID->"46ab2048-2063-4677-8a9f-7bfce9384714",
 InitializationCell->True],
Cell[9388, 255, 280, 7, 37, "Text",ExpressionUUID->"a542163d-4d86-40c3-a92b-07310be54d87"],
Cell[9671, 264, 1034, 28, 49, "Input",ExpressionUUID->"641f81b0-ecfd-4ce9-8eb3-9b099ebe2a2a",
 InitializationCell->True],
Cell[10708, 294, 258, 4, 37, "Text",ExpressionUUID->"c7130b47-2ae5-4fbc-83e7-a743a4acb5e4"],
Cell[CellGroupData[{
Cell[10991, 302, 761, 21, 33, "Input",ExpressionUUID->"5e3485a4-0f03-4181-99ff-351a455ff19b"],
Cell[11755, 325, 856, 21, 37, "Output",ExpressionUUID->"14337dbc-4827-441f-89bf-707d7d20c547"]
}, Open  ]],
Cell[12626, 349, 239, 4, 37, "Text",ExpressionUUID->"8613ced9-0051-47ef-af4d-b361eb21ee78"],
Cell[12868, 355, 327, 7, 49, "Input",ExpressionUUID->"21d7888e-b1d4-452b-92ac-c061e66626a4",
 InitializationCell->True],
Cell[13198, 364, 222, 4, 37, "Text",ExpressionUUID->"49b1ac94-fbe1-4152-81b9-c97cea43cda3"],
Cell[CellGroupData[{
Cell[13445, 372, 4362, 116, 325, "Input",ExpressionUUID->"b2b359da-c573-4a29-8af1-7b1c48ac6b29",
 InitializationCell->True],
Cell[17810, 490, 6213, 121, 716, "Output",ExpressionUUID->"8460069b-cba0-4cd9-b6a7-377d713f7310"]
}, Open  ]],
Cell[24038, 614, 384, 8, 37, "Text",ExpressionUUID->"8cf74a35-e6de-4c4c-9ee6-d224b4ef8bf9"],
Cell[24425, 624, 976, 22, 49, "Input",ExpressionUUID->"9ff3fda3-cb5e-4a75-8b81-57240a9ffe8d",
 InitializationCell->True],
Cell[25404, 648, 723, 18, 49, "Input",ExpressionUUID->"2a548d52-299a-4160-9830-2e59befe841a",
 InitializationCell->True],
Cell[26130, 668, 183, 3, 37, "Text",ExpressionUUID->"7e5cfd74-9e3c-4163-aaee-9ed7723d00e4"],
Cell[CellGroupData[{
Cell[26338, 675, 256, 6, 33, "Input",ExpressionUUID->"ec745215-33fe-493e-8d4b-8391ad038a98"],
Cell[26597, 683, 944, 24, 90, "Output",ExpressionUUID->"d84414ec-b7a6-4261-8d6b-a463495fffb5"]
}, Open  ]],
Cell[27556, 710, 414, 8, 37, "Text",ExpressionUUID->"1881ced0-40cf-4dbf-9928-dfc1eaca735e"],
Cell[CellGroupData[{
Cell[27995, 722, 454, 13, 33, "Input",ExpressionUUID->"dc5dfe5a-47b3-466d-b5c8-53591d35c00c"],
Cell[28452, 737, 234, 5, 37, "Output",ExpressionUUID->"0fb68118-253f-4c5b-a65a-ab6db66a2868"]
}, Open  ]],
Cell[28701, 745, 367, 7, 37, "Text",ExpressionUUID->"4b9e527a-a1a3-449c-8950-a81bba361d74"],
Cell[CellGroupData[{
Cell[29093, 756, 1034, 24, 49, "Input",ExpressionUUID->"e945916c-5698-4a60-b7f5-2354b81989d9",
 InitializationCell->True],
Cell[30130, 782, 1743, 39, 95, "Output",ExpressionUUID->"4d40b6a8-36e6-441c-a6b3-7542aca5bf7b"]
}, Open  ]],
Cell[31888, 824, 632, 11, 62, "Text",ExpressionUUID->"0232a7a7-380c-4ff9-9a24-74a74bd58942"],
Cell[32523, 837, 453, 11, 33, "Input",ExpressionUUID->"20637017-3c1f-472a-baa3-bde1f7c54940"],
Cell[CellGroupData[{
Cell[33001, 852, 789, 22, 33, "Input",ExpressionUUID->"f8d07c1b-44aa-4e17-b9c3-866bb297c482"],
Cell[33793, 876, 2361, 72, 61, "Output",ExpressionUUID->"a6152f93-b3be-4514-99db-8dadf91dab14"]
}, Open  ]],
Cell[36169, 951, 497, 9, 37, "Text",ExpressionUUID->"4a24fb55-4f02-419f-a463-292640f49e68"],
Cell[CellGroupData[{
Cell[36691, 964, 1242, 35, 33, "Input",ExpressionUUID->"95bb9099-e30b-45b2-ab80-860dfb2279a9"],
Cell[37936, 1001, 258, 5, 37, "Output",ExpressionUUID->"21ff825c-550d-4c04-81d7-2aea3ffe8b6c"]
}, Open  ]],
Cell[38209, 1009, 415, 6, 37, "Text",ExpressionUUID->"7b15e930-a506-4dce-9595-cb00c9b79557"],
Cell[CellGroupData[{
Cell[38649, 1019, 631, 14, 33, "Input",ExpressionUUID->"f7f53448-15da-4f57-9ed5-a6ad975875dc"],
Cell[39283, 1035, 5223, 113, 152, "Output",ExpressionUUID->"bab0b551-27d0-405c-b67d-8dc49e74157d"]
}, Open  ]],
Cell[44521, 1151, 595, 13, 137, "Text",ExpressionUUID->"1b651ec1-8b0f-442f-81f3-35db5391563c"],
Cell[45119, 1166, 405, 6, 37, "Text",ExpressionUUID->"f3da6ec5-9876-48da-8783-c0633e372691"],
Cell[CellGroupData[{
Cell[45549, 1176, 1558, 33, 33, "Input",ExpressionUUID->"caba9759-9927-46ce-a8e4-3e4b93047fea"],
Cell[47110, 1211, 753, 12, 37, "Output",ExpressionUUID->"e678839c-8078-408f-87f4-21193722d2da"]
}, Open  ]],
Cell[47878, 1226, 282, 6, 37, "Text",ExpressionUUID->"15bc06ef-9b6e-4ff4-a458-f44dbad2b93d"],
Cell[CellGroupData[{
Cell[48185, 1236, 634, 11, 33, "Input",ExpressionUUID->"cfedfd90-a1cb-48d0-8219-4ae0eea4b02c"],
Cell[48822, 1249, 580, 15, 45, "Output",ExpressionUUID->"fc132c53-7dc3-4213-a2de-28c15ac46291"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49439, 1269, 534, 11, 33, "Input",ExpressionUUID->"9980fec4-c760-46d6-bd86-7ffdfb2f695c"],
Cell[49976, 1282, 432, 13, 45, "Output",ExpressionUUID->"0115ccae-7201-49db-b0bb-fd8bee074078"]
}, Open  ]],
Cell[50423, 1298, 602, 11, 37, "Text",ExpressionUUID->"f8a6fc08-9e2d-4fae-a113-27940315d278"],
Cell[51028, 1311, 653, 16, 57, "Input",ExpressionUUID->"0de34b2c-663d-4b8b-a9d1-b24424ca74e1",
 InitializationCell->True],
Cell[51684, 1329, 534, 10, 37, "Text",ExpressionUUID->"4cb411e0-0682-47a8-ace8-db30909ab158"],
Cell[52221, 1341, 1677, 35, 49, "Input",ExpressionUUID->"66ce2925-706e-4885-a645-752d284fb0eb",
 InitializationCell->True],
Cell[53901, 1378, 1130, 25, 49, "Input",ExpressionUUID->"1fb71b66-e0bf-48c9-9893-638f2c629363",
 InitializationCell->True],
Cell[55034, 1405, 437, 8, 37, "Text",ExpressionUUID->"623bfb9c-6eaa-428c-a19d-b6475f381a40"],
Cell[CellGroupData[{
Cell[55496, 1417, 700, 17, 33, "Input",ExpressionUUID->"af78b0fc-08f0-4b9e-ac09-383e4e25ba0b"],
Cell[56199, 1436, 1690, 49, 90, "Output",ExpressionUUID->"d19cbba7-583d-42ee-9528-be761ccd08b3"]
}, Open  ]],
Cell[57904, 1488, 711, 12, 62, "Text",ExpressionUUID->"1152cf2c-bbc2-4e72-b396-36054d39cd8e"],
Cell[CellGroupData[{
Cell[58640, 1504, 758, 14, 32, "Input",ExpressionUUID->"ff3bc840-567e-4df2-84a1-78aabe74d999"],
Cell[59401, 1520, 770, 16, 34, "Output",ExpressionUUID->"a7984716-1110-4a6c-8004-d13468d31a8b"]
}, Open  ]],
Cell[60186, 1539, 263, 6, 32, "Text",ExpressionUUID->"94f468aa-b45b-46c1-991f-45d7995221ad"],
Cell[60452, 1547, 563, 8, 32, "Text",ExpressionUUID->"533255aa-95c9-4cc8-b231-ce209821278c"],
Cell[61018, 1557, 1519, 32, 49, "Input",ExpressionUUID->"cd105d7a-a0fe-43b6-8346-bb6d3546c2cf",
 InitializationCell->True],
Cell[62540, 1591, 945, 23, 49, "Input",ExpressionUUID->"a53083c2-fac8-4edf-8fa9-7d9e35500b36",
 InitializationCell->True],
Cell[63488, 1616, 1450, 40, 70, "Input",ExpressionUUID->"36497b00-548f-447a-b9d0-4931020fc6e8",
 InitializationCell->True],
Cell[64941, 1658, 1619, 42, 49, "Input",ExpressionUUID->"897d623c-8f3d-4586-b919-ec27f76ec233",
 InitializationCell->True],
Cell[66563, 1702, 528, 9, 32, "Text",ExpressionUUID->"20beae21-fb6c-4915-a783-51010c36cd06"],
Cell[67094, 1713, 479, 9, 32, "Text",ExpressionUUID->"07d4976f-42e5-4c9a-9e3e-8fc3694818f8"],
Cell[67576, 1724, 594, 10, 32, "Text",ExpressionUUID->"436c53eb-5439-49af-a9b6-ec69bd1753f1"],
Cell[68173, 1736, 1606, 44, 32, "Input",ExpressionUUID->"8309114d-5b66-4bb8-8f1e-5df18f5e5194"],
Cell[69782, 1782, 2167, 43, 49, "Input",ExpressionUUID->"858ed7b3-e837-4a9e-9544-7fc664046ae7",
 InitializationCell->True],
Cell[71952, 1827, 1080, 24, 49, "Input",ExpressionUUID->"8e11b6db-6448-4f4a-81bc-4c997281448e",
 InitializationCell->True],
Cell[73035, 1853, 286, 7, 32, "Text",ExpressionUUID->"8c7a1ce3-b46b-4202-a75a-9dfd72ceb075"],
Cell[CellGroupData[{
Cell[73346, 1864, 650, 15, 32, "Input",ExpressionUUID->"50c8d60f-d757-4d66-bc03-56df3cf5f868"],
Cell[73999, 1881, 585, 16, 32, "Output",ExpressionUUID->"910ea1e1-2ff2-4556-aa13-8d5c7ae789da"]
}, Open  ]],
Cell[74599, 1900, 524, 15, 34, "Text",ExpressionUUID->"c3117c6d-4c41-4a27-ac2d-976f4136058a"],
Cell[CellGroupData[{
Cell[75148, 1919, 1223, 33, 42, "Input",ExpressionUUID->"9013b3f3-7804-4702-92b0-ffafc6ed110a"],
Cell[76374, 1954, 936, 22, 32, "Output",ExpressionUUID->"54530dc5-57bc-4c6a-9bdb-a0226584fa81"]
}, Open  ]],
Cell[77325, 1979, 241, 5, 32, "Text",ExpressionUUID->"aa4bdab0-64b7-45cf-8941-285042c8322f"],
Cell[CellGroupData[{
Cell[77591, 1988, 555, 10, 32, "Input",ExpressionUUID->"8ee3ef55-284c-4690-a7ab-d7eaa963845a"],
Cell[78149, 2000, 515, 10, 32, "Output",ExpressionUUID->"c7919f65-4601-4ac0-bd70-acb14d8f17fd"]
}, Open  ]],
Cell[78679, 2013, 1811, 36, 49, "Input",ExpressionUUID->"113cecec-bf4e-42ad-9d4a-6b531fca29c9",
 InitializationCell->True],
Cell[80493, 2051, 1267, 28, 49, "Input",ExpressionUUID->"917f547b-52b6-494c-95c3-fa12c01fe8a8",
 InitializationCell->True],
Cell[81763, 2081, 1500, 41, 70, "Input",ExpressionUUID->"216ea60f-66ca-44cd-a028-da44be5a9256",
 InitializationCell->True],
Cell[83266, 2124, 1669, 43, 49, "Input",ExpressionUUID->"a2175c97-fdca-4a81-812c-663f49ee7ec2",
 InitializationCell->True],
Cell[84938, 2169, 347, 5, 32, "Text",ExpressionUUID->"bcdb0808-4d89-40fd-ab45-d121c8c7316d"],
Cell[CellGroupData[{
Cell[85310, 2178, 6198, 140, 350, "Input",ExpressionUUID->"f96b3e19-7aaf-4b16-90cb-447644b11dd2",
 InitializationCell->True],
Cell[91511, 2320, 12316, 301, 716, "Output",ExpressionUUID->"33d17a6d-12cf-42e0-af6d-47ab00ef7e73"]
}, Open  ]],
Cell[103842, 2624, 180, 3, 32, "Text",ExpressionUUID->"843255f9-6537-40e5-8a3c-6752d414fe85"],
Cell[CellGroupData[{
Cell[104047, 2631, 6198, 140, 350, "Input",ExpressionUUID->"9994333e-2d38-499b-879c-c6d811a1a44d",
 InitializationCell->True],
Cell[110248, 2773, 10298, 260, 716, "Output",ExpressionUUID->"e8980ef8-ab97-4876-acad-25376f2c7253"]
}, Open  ]],
Cell[120561, 3036, 1076, 19, 177, "Text",ExpressionUUID->"3ed01dfd-7c24-424e-8c94-25f729cca5a1"],
Cell[CellGroupData[{
Cell[121662, 3059, 413, 12, 32, "Input",ExpressionUUID->"972c0556-6e37-4e82-8534-da90afcb86fd"],
Cell[122078, 3073, 937, 27, 81, "Output",ExpressionUUID->"9ee6b15b-e4f3-4e0c-961b-0566f3660964"]
}, Open  ]],
Cell[CellGroupData[{
Cell[123052, 3105, 227, 5, 32, "Input",ExpressionUUID->"d51ba376-7268-4897-9a60-4872a0d2afc4"],
Cell[123282, 3112, 874, 26, 88, "Output",ExpressionUUID->"b05c93ca-7b62-4101-8770-23832b134d32"]
}, Open  ]],
Cell[124171, 3141, 2994, 80, 88, "Input",ExpressionUUID->"6f00a161-8b44-40d4-90de-871423986ead"],
Cell[127168, 3223, 985, 18, 133, "Text",ExpressionUUID->"3c464171-3b85-4a8f-b766-9339692f2c0b"],
Cell[CellGroupData[{
Cell[128178, 3245, 244, 6, 32, "Input",ExpressionUUID->"7f411ce4-68bf-40ab-a40e-50195a6f5b57"],
Cell[128425, 3253, 357, 10, 34, "Output",ExpressionUUID->"ac7d446b-2bda-460d-90de-c0cc0b42ece7"]
}, Open  ]],
Cell[128797, 3266, 196, 3, 30, "Text",ExpressionUUID->"02e5e1e1-1756-411d-8a53-28987cc4f7b4"],
Cell[CellGroupData[{
Cell[129018, 3273, 404, 12, 32, "Input",ExpressionUUID->"d890fe42-9b4d-4924-ba09-e80d0a006959"],
Cell[129425, 3287, 333, 10, 34, "Output",ExpressionUUID->"dc8fe016-99eb-4abe-99d0-4eccd107d325"]
}, Open  ]],
Cell[129773, 3300, 752, 16, 32, "Text",ExpressionUUID->"f01b86c5-e388-4e54-9372-d6d2d3ac069d"],
Cell[130528, 3318, 973, 26, 81, "Input",ExpressionUUID->"cb475b34-21f4-43fb-9842-d64989cc1188"],
Cell[131504, 3346, 371, 7, 32, "Text",ExpressionUUID->"8683ffee-c4a9-484f-a72d-cd65502079a7"],
Cell[131878, 3355, 2764, 77, 88, "Input",ExpressionUUID->"7963bdc9-cd53-43e3-b027-ff40ec021f58"],
Cell[134645, 3434, 255, 4, 32, "Text",ExpressionUUID->"0286abc3-9997-43c0-b771-393aa13e7623"],
Cell[134903, 3440, 170, 3, 31, "Text",ExpressionUUID->"95351295-9a79-4695-b597-56252f3fe4ed"],
Cell[135076, 3445, 410, 9, 53, "Text",ExpressionUUID->"7cfbaccb-dd5e-4c95-8a0c-0268f82af6c7"],
Cell[CellGroupData[{
Cell[135511, 3458, 469, 13, 32, "Input",ExpressionUUID->"00a82222-fbc7-471c-9a65-49a926cc92ea"],
Cell[135983, 3473, 935, 27, 81, "Output",ExpressionUUID->"839eb034-4a8f-4677-97cd-355626fe65b3"]
}, Open  ]],
Cell[CellGroupData[{
Cell[136955, 3505, 227, 5, 32, "Input",ExpressionUUID->"908d451c-cd16-439c-97a8-fc522bd05fa4"],
Cell[137185, 3512, 875, 26, 88, "Output",ExpressionUUID->"b510f6bc-3a52-4121-8ced-163e66c96e19"]
}, Open  ]],
Cell[CellGroupData[{
Cell[138097, 3543, 310, 7, 32, "Input",ExpressionUUID->"0e185be0-3520-48b6-9df1-2ab53cb72730"],
Cell[138410, 3552, 797, 22, 88, "Output",ExpressionUUID->"7968ce98-2fb7-419c-bb67-de18b7126ed1"]
}, Open  ]],
Cell[139222, 3577, 2462, 66, 88, "Input",ExpressionUUID->"8df92b4b-7d05-49eb-a8f3-533d07aa3a3e"],
Cell[CellGroupData[{
Cell[141709, 3647, 977, 23, 32, "Input",ExpressionUUID->"03ce9eaa-fdae-45f7-adbd-cbf679c67e74"],
Cell[142689, 3672, 12138, 380, 298, "Output",ExpressionUUID->"b94d4842-c0be-40ac-b081-17a654929411"]
}, Open  ]],
Cell[154842, 4055, 264, 6, 32, "Text",ExpressionUUID->"7d42c36f-df3d-4efc-ba08-a985458ffef8"],
Cell[CellGroupData[{
Cell[155131, 4065, 1801, 43, 52, "Input",ExpressionUUID->"45df9070-ccf0-4786-bf73-86c5a487c6db"],
Cell[156935, 4110, 389, 6, 30, "Output",ExpressionUUID->"8e6c4501-ada3-47dc-a6c6-ca2dcbae5b1c"]
}, Open  ]],
Cell[157339, 4119, 213, 4, 31, "Text",ExpressionUUID->"75dd36b3-643c-4ebe-9b2b-71bdc2c1e4cb"],
Cell[CellGroupData[{
Cell[157577, 4127, 993, 23, 32, "Input",ExpressionUUID->"78563168-ead7-4456-911e-f825c3fd3d07"],
Cell[158573, 4152, 2618, 81, 74, "Output",ExpressionUUID->"462ab983-f4e1-4da3-9fdd-6e70b05681b0"]
}, Open  ]],
Cell[161206, 4236, 1111, 18, 116, "Text",ExpressionUUID->"020d56a0-d0e9-45ff-9d52-256409d52098"],
Cell[CellGroupData[{
Cell[162342, 4258, 460, 12, 32, "Input",ExpressionUUID->"15c29775-282c-4b84-9d73-1566db292008"],
Cell[162805, 4272, 933, 26, 77, "Output",ExpressionUUID->"e81726e4-5ed8-45c9-aa86-cba0cb2d35e2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[163775, 4303, 742, 16, 32, "Input",ExpressionUUID->"e0d838fa-1bd5-43a5-b72a-9f17e059f76d"],
Cell[164520, 4321, 861, 22, 63, "Output",ExpressionUUID->"b25ee89a-07aa-48fc-874f-ddb185b3d189"]
}, Open  ]],
Cell[CellGroupData[{
Cell[165418, 4348, 688, 15, 32, "Input",ExpressionUUID->"9606b283-1a3d-40a6-a4ed-11079f93746a"],
Cell[166109, 4365, 1032, 26, 42, "Output",ExpressionUUID->"69e285ef-61fc-47b3-9c18-954acd50fcf9"]
}, Open  ]],
Cell[167156, 4394, 772, 15, 91, "Text",ExpressionUUID->"c40425dd-6a9d-4ccd-93e2-fe8b06aa19b2"],
Cell[CellGroupData[{
Cell[167953, 4413, 1478, 44, 64, "Input",ExpressionUUID->"dc71739f-9d8b-4c1a-af1b-0ed5597e755c"],
Cell[169434, 4459, 219, 5, 32, "Output",ExpressionUUID->"3a4a04d1-a3d6-45a9-9e1e-1cc4d42714fa"]
}, Open  ]],
Cell[169668, 4467, 274, 7, 51, "Text",ExpressionUUID->"61554644-008d-4ae1-90bc-f009d7aa842a"],
Cell[CellGroupData[{
Cell[169967, 4478, 754, 21, 32, "Input",ExpressionUUID->"ce22abbb-3481-4a79-ac90-9a908469e311"],
Cell[170724, 4501, 545, 15, 62, "Output",ExpressionUUID->"73cb1ec8-de13-4344-82f2-a31f6cc909df"]
}, Open  ]],
Cell[CellGroupData[{
Cell[171306, 4521, 555, 15, 32, "Input",ExpressionUUID->"af78cccc-09c4-4be3-ad5f-16c9cd2f4fb4"],
Cell[171864, 4538, 541, 16, 66, "Output",ExpressionUUID->"9da875ec-e75d-44ca-9ea0-b27ec4f20f1d"]
}, Open  ]],
Cell[172420, 4557, 516, 10, 52, "Text",ExpressionUUID->"55929979-8d30-46f8-8857-643cc4294dd1"],
Cell[172939, 4569, 647, 19, 42, "Input",ExpressionUUID->"ba296042-4a5e-4a96-9190-8e55933df66d"],
Cell[173589, 4590, 224, 4, 32, "Text",ExpressionUUID->"64d041ff-65a3-41ed-824d-ced9cb69fadc"],
Cell[173816, 4596, 1887, 54, 80, "Input",ExpressionUUID->"ec968161-e457-45ba-bd94-f22aed8a6cd6",
 InitializationCell->True],
Cell[175706, 4652, 2401, 60, 80, "Input",ExpressionUUID->"3ced6a48-89b7-44f5-ae0e-28defe3ac4f7",
 InitializationCell->True],
Cell[178110, 4714, 1571, 42, 70, "Input",ExpressionUUID->"df11dcc1-282c-492f-a2f7-b8248dccb2a8",
 InitializationCell->True],
Cell[179684, 4758, 295, 6, 32, "Text",ExpressionUUID->"6fceb3a8-6882-4b12-a372-1e050b33f9bd"],
Cell[CellGroupData[{
Cell[180004, 4768, 1656, 47, 64, "Input",ExpressionUUID->"c469c4cd-570c-407f-94bd-a028b34d5cde"],
Cell[181663, 4817, 682, 20, 42, "Output",ExpressionUUID->"fbc3dff9-b02e-4cec-9dca-ff645f353ff9"]
}, Open  ]],
Cell[182360, 4840, 2104, 59, 80, "Input",ExpressionUUID->"aeb0f813-19e3-4105-a5f1-b46927d19d8e",
 InitializationCell->True],
Cell[184467, 4901, 2082, 59, 80, "Input",ExpressionUUID->"11c981e2-5fba-45ac-a4ae-2eaa0605b040",
 InitializationCell->True],
Cell[186552, 4962, 1375, 39, 70, "Input",ExpressionUUID->"d6ae3d06-5c80-4c5c-b7de-36ed295855d2",
 InitializationCell->True],
Cell[187930, 5003, 477, 9, 32, "Text",ExpressionUUID->"7952c65d-caec-4e02-8881-c551aee65cb2"],
Cell[CellGroupData[{
Cell[188432, 5016, 657, 17, 32, "Input",ExpressionUUID->"60e45341-6a77-4327-8842-79b77e99f768"],
Cell[189092, 5035, 668, 17, 34, "Output",ExpressionUUID->"62c1f2ea-8f49-4f2d-b527-5f99c8de3d80"]
}, Open  ]],
Cell[CellGroupData[{
Cell[189797, 5057, 749, 20, 42, "Input",ExpressionUUID->"9d11cfcf-7f06-4236-80f4-1bfdaa89980c"],
Cell[190549, 5079, 739, 19, 34, "Output",ExpressionUUID->"c7dee765-e8f4-484d-85c5-6a71dfa6cee9"]
}, Open  ]],
Cell[191303, 5101, 171, 3, 31, "Text",ExpressionUUID->"890c92a7-e990-4b8d-a3d9-01db863fc511"],
Cell[CellGroupData[{
Cell[191499, 5108, 529, 12, 32, "Input",ExpressionUUID->"089e4bba-548c-4dc9-a3ed-5396ed3ce43a"],
Cell[192031, 5122, 616, 16, 34, "Output",ExpressionUUID->"b72afd8e-56b7-4d71-9526-abfb24ffdb55"]
}, Open  ]],
Cell[CellGroupData[{
Cell[192684, 5143, 895, 26, 42, "Input",ExpressionUUID->"b31fe16b-070b-405f-86b8-56a16dbbd043"],
Cell[193582, 5171, 636, 18, 34, "Output",ExpressionUUID->"04c14431-cc78-4c28-bc0e-22c449b1a8d7"]
}, Open  ]],
Cell[194233, 5192, 1560, 30, 74, "Text",ExpressionUUID->"49e34801-9885-4c9c-92c5-8e89654510f0"],
Cell[195796, 5224, 948, 15, 95, "Text",ExpressionUUID->"36437d83-254f-4626-a653-3115bf8cde05"],
Cell[196747, 5241, 670, 12, 53, "Text",ExpressionUUID->"93804267-d766-4efb-bde2-133e4c0e210e"],
Cell[197420, 5255, 2359, 64, 90, "Input",ExpressionUUID->"a6114c2d-e731-4979-9009-cc81c771aa42",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[199804, 5323, 757, 22, 32, "Input",ExpressionUUID->"55a9b3d7-3b52-4c97-862e-2260f3ef176b"],
Cell[200564, 5347, 152, 3, 30, "Output",ExpressionUUID->"f6ed3efd-bdbf-4966-bdbe-547d79181c1c"]
}, Open  ]],
Cell[200731, 5353, 333, 7, 32, "Text",ExpressionUUID->"49c0a6fa-395f-4fc7-91c7-3a1303748559"],
Cell[CellGroupData[{
Cell[201089, 5364, 1261, 39, 42, "Input",ExpressionUUID->"6418a5c5-5d89-4032-89e3-f3ce81ad48e1"],
Cell[202353, 5405, 753, 25, 42, "Output",ExpressionUUID->"8b234557-8445-494d-a10d-840978099200"]
}, Open  ]],
Cell[203121, 5433, 213, 5, 32, "Input",ExpressionUUID->"69d5d632-f9ec-423a-a189-4853c88c8bb4"],
Cell[203337, 5440, 353, 11, 32, "Input",ExpressionUUID->"6e3e1f89-5328-4a89-801a-84d1304bca24"],
Cell[203693, 5453, 188, 5, 32, "Output",ExpressionUUID->"8f74a8fd-238c-4c0d-b1f1-73f0a58a4ef1"],
Cell[203884, 5460, 365, 11, 32, "Input",ExpressionUUID->"036229a9-2727-436a-8f15-77a92af5c5e5"],
Cell[204252, 5473, 190, 5, 32, "Output",ExpressionUUID->"dcf5c189-4efa-4d77-aa25-c7834052e9e8"],
Cell[204445, 5480, 351, 10, 42, "Input",ExpressionUUID->"90724b65-daf3-48c4-aa4c-4d7a63252c8d"],
Cell[204799, 5492, 190, 5, 32, "Output",ExpressionUUID->"0770879c-2131-4d8a-b0aa-76ef74c7fae9"],
Cell[CellGroupData[{
Cell[205014, 5501, 575, 13, 32, "Input",ExpressionUUID->"85bee333-a1ea-4fa4-a658-9ed9afec8e81"],
Cell[205592, 5516, 629, 19, 36, "Output",ExpressionUUID->"34230241-d121-4ad6-8518-d665ea6e15d0"]
}, Open  ]],
Cell[CellGroupData[{
Cell[206258, 5540, 1161, 34, 32, "Input",ExpressionUUID->"91cefc5d-e243-48a8-827f-eb0f0c10a289"],
Cell[207422, 5576, 326, 6, 30, "Output",ExpressionUUID->"e7ae69e1-bc05-45bb-a0ef-4c579500aff2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[207785, 5587, 978, 28, 32, "Input",ExpressionUUID->"5ccfe9bb-fdc8-4a3b-87aa-ce95d757915b"],
Cell[208766, 5617, 300, 5, 30, "Output",ExpressionUUID->"ffb7561c-d43d-4e5a-9b1c-4d52aac92e01"]
}, Open  ]],
Cell[CellGroupData[{
Cell[209103, 5627, 535, 15, 32, "Input",ExpressionUUID->"c9cc5c3f-4bc4-448f-8430-76536dbd2c9b"],
Cell[209641, 5644, 236, 5, 32, "Output",ExpressionUUID->"9259a0d2-65d2-401a-b1eb-883d27c2eba4"]
}, Open  ]],
Cell[209892, 5652, 236, 5, 32, "Input",ExpressionUUID->"3dff8916-b596-4544-ac29-dcb886406d5a"],
Cell[CellGroupData[{
Cell[210153, 5661, 616, 14, 32, "Input",ExpressionUUID->"07914b29-939f-4772-944e-1c06a35a2bbc"],
Cell[210772, 5677, 444, 13, 42, "Output",ExpressionUUID->"9604fb86-f037-4443-9872-df3922532f1c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[211253, 5695, 617, 14, 32, "Input",ExpressionUUID->"263e570a-78c5-437b-ad25-0fed4183450c"],
Cell[211873, 5711, 526, 15, 42, "Output",ExpressionUUID->"1f72772f-2c00-47fb-9972-c27be706a238"]
}, Open  ]],
Cell[CellGroupData[{
Cell[212436, 5731, 546, 16, 42, "Input",ExpressionUUID->"fc57645b-0f87-4e5f-a7e1-0b9f446e3251"],
Cell[212985, 5749, 520, 15, 36, "Output",ExpressionUUID->"bc10da6c-8bb6-4476-846a-fdb25c7da971"]
}, Open  ]],
Cell[CellGroupData[{
Cell[213542, 5769, 1249, 38, 42, "Input",ExpressionUUID->"cb640bdf-35a9-4b35-844b-c4258799f304"],
Cell[214794, 5809, 277, 5, 30, "Output",ExpressionUUID->"55a22d2b-a5f7-41b2-ba9c-3a8a641b928f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[215108, 5819, 1385, 42, 42, "Input",ExpressionUUID->"9e1c4c8d-8dfe-46cb-81e6-0094c08a06e3"],
Cell[216496, 5863, 278, 5, 30, "Output",ExpressionUUID->"f9745a5d-40ac-4430-b4a1-21f860348ce3"]
}, Open  ]],
Cell[216789, 5871, 457, 14, 42, "Input",ExpressionUUID->"05d96dad-06f9-47ef-9aec-aa2ca56747b6"],
Cell[217249, 5887, 511, 15, 42, "Input",ExpressionUUID->"b31fac48-9ba0-4636-997f-c98ddafb6e0e"],
Cell[CellGroupData[{
Cell[217785, 5906, 1031, 30, 42, "Input",ExpressionUUID->"277470b3-635d-44cf-b429-b85f31c6f71d"],
Cell[218819, 5938, 693, 17, 34, "Output",ExpressionUUID->"2d0c0611-fe97-4eb0-9586-6ad9f59a1aca"]
}, Open  ]],
Cell[219527, 5958, 2513, 62, 70, "Input",ExpressionUUID->"aa35682b-9931-4ed3-a0bd-bb92c087a092",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[222065, 6024, 579, 17, 32, "Input",ExpressionUUID->"5ba06d86-6bad-4aad-b052-e77e6af1300b"],
Cell[222647, 6043, 274, 7, 34, "Output",ExpressionUUID->"4c01f251-c07f-459a-9596-b7cedd520f07"]
}, Open  ]],
Cell[CellGroupData[{
Cell[222958, 6055, 1290, 36, 32, "Input",ExpressionUUID->"0c53f457-9039-4d74-9221-b6f2ce7cfd85"],
Cell[224251, 6093, 490, 14, 42, "Output",ExpressionUUID->"c8f1aa23-012f-4c1f-86de-dd3576b730bf"]
}, Open  ]],
Cell[CellGroupData[{
Cell[224778, 6112, 900, 21, 32, "Input",ExpressionUUID->"0e36bd8b-0ce5-49eb-83fc-c643e8518840"],
Cell[225681, 6135, 543, 8, 30, "Output",ExpressionUUID->"068aa56d-b340-4618-91d5-14a02f922d35"]
}, Open  ]],
Cell[226239, 6146, 446, 9, 32, "Text",ExpressionUUID->"36b77137-abf9-48dc-aee4-ccaf952f0a12"],
Cell[CellGroupData[{
Cell[226710, 6159, 383, 11, 32, "Input",ExpressionUUID->"012614b9-1d9d-4e30-b7e7-17f3ea42ad0b"],
Cell[227096, 6172, 285, 9, 32, "Output",ExpressionUUID->"5a1a25d5-72a9-40d5-9403-f2202a16a6cf"]
}, Open  ]],
Cell[CellGroupData[{
Cell[227418, 6186, 521, 16, 42, "Input",ExpressionUUID->"491e2035-bc3b-4541-a867-ef532fa2ea2a"],
Cell[227942, 6204, 335, 11, 42, "Output",ExpressionUUID->"99148f76-634b-4c1d-8261-e5224f18248f"]
}, Open  ]],
Cell[228292, 6218, 433, 8, 32, "Text",ExpressionUUID->"a5a1c56c-9e29-4168-9ee2-ea89a740cf7d"],
Cell[228728, 6228, 618, 19, 33, "Input",ExpressionUUID->"33ba6e9e-cb1a-42b7-a0a9-db4909c6cc9e"],
Cell[CellGroupData[{
Cell[229371, 6251, 709, 15, 32, "Input",ExpressionUUID->"8e40beaa-c323-4caf-a579-03253d62eff2"],
Cell[230083, 6268, 626, 17, 58, "Output",ExpressionUUID->"2c43715d-2966-4508-8704-bbefb3df601e"]
}, Open  ]],
Cell[230724, 6288, 245, 4, 32, "Text",ExpressionUUID->"5761f98a-e986-4745-b5fc-227e8a99a430"],
Cell[CellGroupData[{
Cell[230994, 6296, 331, 9, 32, "Input",ExpressionUUID->"e53e37b8-dab7-4e49-8ef9-cd278ada53ed"],
Cell[231328, 6307, 313, 10, 42, "Output",ExpressionUUID->"3184c23e-4a91-42cf-b5b0-1f96491276e0"]
}, Open  ]],
Cell[231656, 6320, 415, 12, 32, "Input",ExpressionUUID->"df8c7f9e-1d20-4654-9812-adb1dbdf1da4"],
Cell[232074, 6334, 372, 11, 62, "Input",ExpressionUUID->"66697fa2-cbae-4a2b-8c06-c0aa0f2218bf"],
Cell[232449, 6347, 235, 6, 30, "Input",ExpressionUUID->"f080cfad-a831-4988-b519-4d3f9e91d8cd"],
Cell[CellGroupData[{
Cell[232709, 6357, 433, 13, 59, "Input",ExpressionUUID->"c62bbd34-843b-4ce3-bf9c-41f19c989743"],
Cell[233145, 6372, 200, 5, 59, "Output",ExpressionUUID->"c937b596-8e2f-4a2c-8181-f6b1e293fcbe"]
}, Open  ]],
Cell[CellGroupData[{
Cell[233382, 6382, 484, 14, 59, "Input",ExpressionUUID->"ad41aa85-3123-4f2e-a236-3a287442d260"],
Cell[233869, 6398, 223, 5, 59, "Output",ExpressionUUID->"93e520fd-d281-4c13-87c9-cbab4e690889"]
}, Open  ]],
Cell[234107, 6406, 352, 11, 59, "Input",ExpressionUUID->"2fcd2761-f2dc-4909-a9ae-9bc58cf52002"],
Cell[CellGroupData[{
Cell[234484, 6421, 499, 15, 62, "Input",ExpressionUUID->"5f3086bd-955e-4cc1-8f02-66dcc8fbf8dd"],
Cell[234986, 6438, 130, 3, 30, "Output",ExpressionUUID->"b3a83dee-2cbc-406b-a69b-777c2d9d044d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[235153, 6446, 864, 28, 32, "Input",ExpressionUUID->"2ff1d884-9c56-407f-b478-a6bae47bce63"],
Cell[236020, 6476, 156, 3, 30, "Output",ExpressionUUID->"01d9c5a5-877a-4462-8b69-e8b2d0410b8a"]
}, Open  ]],
Cell[236191, 6482, 672, 21, 73, "Input",ExpressionUUID->"262aae28-2a62-4aea-ab92-3df8cad03713"],
Cell[CellGroupData[{
Cell[236888, 6507, 314, 9, 59, "Input",ExpressionUUID->"7575ca85-4a1f-4a67-935f-2e089d6446ff"],
Cell[237205, 6518, 777, 25, 72, "Output",ExpressionUUID->"4c387b31-3d3a-42a2-8468-3f9c848d246a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[238019, 6548, 909, 25, 32, "Input",ExpressionUUID->"7759e6ff-5b5a-41cd-b493-61c3b7467829"],
Cell[238931, 6575, 826, 23, 42, "Output",ExpressionUUID->"b89d2cdc-2b78-46a3-91a4-346b0d00302a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[239794, 6603, 1136, 35, 42, "Input",ExpressionUUID->"a346c35d-a7fc-4293-a405-d2e7b7157866"],
Cell[240933, 6640, 630, 19, 42, "Output",ExpressionUUID->"c5adc433-6dd2-48f6-9094-1015878e314d"]
}, Open  ]],
Cell[241578, 6662, 321, 6, 32, "Text",ExpressionUUID->"306d9b55-f9d1-4257-a1ee-b1741b8f37e4"],
Cell[CellGroupData[{
Cell[241924, 6672, 1084, 35, 42, "Input",ExpressionUUID->"7913db5b-707d-489f-b66f-366d356e7b0f"],
Cell[243011, 6709, 619, 20, 42, "Output",ExpressionUUID->"067b20ad-d978-4d72-a605-74e8164f4cef"]
}, Open  ]],
Cell[243645, 6732, 781, 13, 32, "Text",ExpressionUUID->"d9312c22-1e52-41c3-bc05-93e651af892e"],
Cell[244429, 6747, 409, 8, 32, "Text",ExpressionUUID->"871faf3f-05ef-47c5-ac70-8e39c74ee829"],
Cell[244841, 6757, 1361, 36, 49, "Input",ExpressionUUID->"afeac296-de19-4f9f-bfbe-bbf589cd9b31",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[246227, 6797, 346, 9, 32, "Input",ExpressionUUID->"beba6141-684e-40aa-9145-4d053fd97a68"],
Cell[246576, 6808, 1270, 35, 88, "Output",ExpressionUUID->"03403411-a763-4e7b-b9e0-cade4c82968c"]
}, Open  ]],
Cell[247861, 6846, 640, 11, 53, "Text",ExpressionUUID->"64b28977-2224-45e2-b61f-c8535167f258"],
Cell[248504, 6859, 194, 3, 30, "Text",ExpressionUUID->"9fdce46c-c469-4b08-a256-9de099acec88"],
Cell[CellGroupData[{
Cell[248723, 6866, 691, 14, 32, "Input",ExpressionUUID->"fba1bc87-b73a-4550-8a9e-28bf37473d39"],
Cell[249417, 6882, 602, 13, 32, "Output",ExpressionUUID->"d29798f6-6a43-4ca7-b191-3141e8203e67"]
}, Open  ]],
Cell[CellGroupData[{
Cell[250056, 6900, 384, 11, 32, "Input",ExpressionUUID->"665c933f-51de-4270-9a59-81d2665231f2"],
Cell[250443, 6913, 2257, 58, 88, "Output",ExpressionUUID->"fd025533-ffdb-422d-9d8d-bed4c5b7e43d"]
}, Open  ]],
Cell[252715, 6974, 177, 3, 31, "Text",ExpressionUUID->"b13d4614-3e77-49f3-89c7-5841ef894602"],
Cell[CellGroupData[{
Cell[252917, 6981, 337, 9, 32, "Input",ExpressionUUID->"89be0ba5-8e81-4641-8e33-2742729d67e8"],
Cell[253257, 6992, 755, 24, 88, "Output",ExpressionUUID->"2c627565-49f3-4131-a9a4-5421faeb5a15"]
}, Open  ]],
Cell[254027, 7019, 1183, 18, 95, "Text",ExpressionUUID->"7bd01ed8-69db-4743-8c19-f23e50d7f40c"],
Cell[255213, 7039, 219, 5, 32, "Text",ExpressionUUID->"cce0061d-dea4-406c-af94-9afda6f70ea1"],
Cell[255435, 7046, 1021, 16, 74, "Text",ExpressionUUID->"87b5a349-7b21-48a7-b6d0-0a756277d8a7"],
Cell[256459, 7064, 964, 23, 49, "Input",ExpressionUUID->"8eac08b7-104d-43d1-ac7c-0c98cac77209",
 InitializationCell->True],
Cell[257426, 7089, 1395, 35, 49, "Input",ExpressionUUID->"03cee3ba-5ad5-4f93-801e-38238307b53a",
 InitializationCell->True],
Cell[258824, 7126, 867, 16, 49, "Input",ExpressionUUID->"8d6bc812-67fd-4c7a-9451-e2e6e82c2d87",
 InitializationCell->True],
Cell[259694, 7144, 668, 13, 49, "Input",ExpressionUUID->"4f6c9148-aab4-4bab-837e-2a29e266b1c4",
 InitializationCell->True],
Cell[260365, 7159, 6425, 156, 410, "Input",ExpressionUUID->"e14870b0-fbd7-4b86-bb0e-84c831410428",
 InitializationCell->True],
Cell[266793, 7317, 835, 23, 49, "Input",ExpressionUUID->"76e0353a-1ed8-43f2-a21e-5fbec1d66c70",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[267653, 7344, 733, 18, 32, "Input",ExpressionUUID->"c9b57060-1519-42ff-8a7f-117836ebaaf3"],
Cell[268389, 7364, 589, 9, 32, "Output",ExpressionUUID->"1254f646-b4e3-404d-ad99-24423be1f611"]
}, Open  ]],
Cell[CellGroupData[{
Cell[269015, 7378, 555, 17, 32, "Input",ExpressionUUID->"d273326f-1f9f-4dc3-ac3a-0c75bba6b71c"],
Cell[269573, 7397, 244, 4, 32, "Output",ExpressionUUID->"7c45ba5d-d8d1-4308-a933-3a83850f018d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[269854, 7406, 556, 17, 32, "Input",ExpressionUUID->"2dd8c3cf-7c75-4843-9b4e-993fd6705e5d"],
Cell[270413, 7425, 243, 4, 32, "Output",ExpressionUUID->"70aa1fd1-1443-4ab3-a81a-c1e08dc14c1f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[270693, 7434, 647, 20, 32, "Input",ExpressionUUID->"77889a34-b26e-4f09-9bd8-a98bb37ca3df"],
Cell[271343, 7456, 393, 6, 32, "Output",ExpressionUUID->"22a11a38-88f9-4a24-b2b8-ec30c4214cff"]
}, Open  ]],
Cell[CellGroupData[{
Cell[271773, 7467, 579, 18, 32, "Input",ExpressionUUID->"a45a237e-6e35-45f6-8368-842912c9c93c"],
Cell[272355, 7487, 257, 4, 32, "Output",ExpressionUUID->"4e9d4801-2405-45b8-9f41-ce839609b242"]
}, Open  ]],
Cell[CellGroupData[{
Cell[272649, 7496, 552, 17, 32, "Input",ExpressionUUID->"4efbd4c7-1fe3-42ff-87af-4d5d7c692dfc"],
Cell[273204, 7515, 309, 5, 32, "Output",ExpressionUUID->"1f02514c-ef95-433b-a8b1-b99b225db49d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[273550, 7525, 516, 16, 32, "Input",ExpressionUUID->"77cd19bf-7afc-40ca-b7be-fbf06abb6487"],
Cell[274069, 7543, 235, 3, 32, "Output",ExpressionUUID->"62e0a79c-59e9-46cb-95de-82a11cfcea61"]
}, Open  ]],
Cell[274319, 7549, 180, 2, 30, "Text",ExpressionUUID->"a7cee162-a201-4eed-8e6c-1b20e7c62bb4"],
Cell[274502, 7553, 6953, 171, 410, "Input",ExpressionUUID->"6d9a2a7f-eac6-43d1-902d-1d05f6bcbbc2",
 InitializationCell->True],
Cell[281458, 7726, 2847, 71, 90, "Input",ExpressionUUID->"bc8eb95c-e8be-4669-b6b4-591fe2f5ef4b",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[284330, 7801, 294, 8, 32, "Input",ExpressionUUID->"8ec866ce-7314-4ff7-b23c-150409d533d5"],
Cell[284627, 7811, 242, 7, 34, "Output",ExpressionUUID->"3caf68dd-03fc-45b3-b9f7-8d37a0795036"]
}, Open  ]],
Cell[CellGroupData[{
Cell[284906, 7823, 567, 16, 32, "Input",ExpressionUUID->"4e8c24ba-b099-4075-a0bb-697681776765"],
Cell[285476, 7841, 758, 21, 69, "Output",ExpressionUUID->"0dbe2a73-cb47-46a9-8b5b-73d445abb2cb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[286271, 7867, 523, 14, 32, "Input",ExpressionUUID->"861a6f3d-8989-4874-acf0-09c007e2e44b"],
Cell[286797, 7883, 1119, 35, 42, "Output",ExpressionUUID->"823d4475-aaa3-41e1-9949-4b05ee53776b"]
}, Open  ]],
Cell[287931, 7921, 172, 4, 32, "Input",ExpressionUUID->"74b3286f-1f62-45c4-914c-2a5e60ca2574"],
Cell[CellGroupData[{
Cell[288128, 7929, 344, 7, 30, "Input",ExpressionUUID->"dbb4b2e8-460d-4ed6-8c72-c34b70d981b1"],
Cell[288475, 7938, 154, 3, 30, "Output",ExpressionUUID->"c6d5b811-714a-4baf-8470-abb3761dd56a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[288666, 7946, 581, 18, 32, "Input",ExpressionUUID->"7dec7a1d-db13-4903-9634-c47dc6073941"],
Cell[CellGroupData[{
Cell[289272, 7968, 502, 12, 24, "Print",ExpressionUUID->"c9e555b6-e0db-4972-bd69-26d70e848130"],
Cell[289777, 7982, 342, 9, 24, "Print",ExpressionUUID->"639a26cd-35c7-4e76-9d89-1f6c4b30b2cf"],
Cell[290122, 7993, 266, 6, 25, "Print",ExpressionUUID->"8f510657-a729-4e55-bd94-50826e7b5b35"]
}, Open  ]],
Cell[290403, 8002, 239, 5, 32, "Output",ExpressionUUID->"2f37348b-3c5c-4b8a-afa0-8628a1913d56"]
}, Open  ]],
Cell[290657, 8010, 636, 19, 32, "Input",ExpressionUUID->"fe1ec6ee-04ab-4574-889d-7e38ecb607c1"],
Cell[291296, 8031, 539, 14, 59, "Input",ExpressionUUID->"d4984517-877d-4fa2-983a-2cd91104dc4b"],
Cell[CellGroupData[{
Cell[291860, 8049, 782, 22, 32, "Input",ExpressionUUID->"76667da7-06fb-4931-9472-3a68bd0b0cfe"],
Cell[292645, 8073, 379, 8, 34, "Output",ExpressionUUID->"a43d35b3-f3e7-428d-aa59-557a195741da"]
}, Open  ]],
Cell[CellGroupData[{
Cell[293061, 8086, 624, 19, 32, "Input",ExpressionUUID->"79c16535-cce7-4c93-867e-07011a31b555"],
Cell[293688, 8107, 297, 8, 34, "Output",ExpressionUUID->"2da23deb-f005-4bdc-b4c7-679d6eb8315e"]
}, Open  ]],
Cell[294000, 8118, 785, 22, 49, "Input",ExpressionUUID->"efb4d627-bd3d-48dc-a90c-85f1a6c0cbc1",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[294810, 8144, 781, 18, 32, "Input",ExpressionUUID->"6c7a7d1e-158c-41b7-9848-9bfef8afbf76"],
Cell[295594, 8164, 488, 8, 32, "Output",ExpressionUUID->"b42e65da-3357-4680-b342-ed99effd2e2b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[296119, 8177, 605, 18, 32, "Input",ExpressionUUID->"0da8077a-9f11-41e3-bfbf-6e44309216b9"],
Cell[296727, 8197, 243, 4, 32, "Output",ExpressionUUID->"537cb4e6-6441-48d2-b980-078fd8a85067"]
}, Open  ]],
Cell[CellGroupData[{
Cell[297007, 8206, 511, 15, 32, "Input",ExpressionUUID->"b089249d-39b5-4063-b585-17e11838bfdf"],
Cell[297521, 8223, 238, 4, 32, "Output",ExpressionUUID->"9ca4fe2b-f3fa-46c1-952c-124ab1173eb7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[297796, 8232, 699, 21, 32, "Input",ExpressionUUID->"157bc4be-052c-4289-a145-2a74f334201d"],
Cell[298498, 8255, 396, 6, 32, "Output",ExpressionUUID->"3596b0dd-2961-47df-820c-c704daf6a460"]
}, Open  ]],
Cell[CellGroupData[{
Cell[298931, 8266, 630, 19, 32, "Input",ExpressionUUID->"2dc424ab-5e9e-4f81-bd42-0580ca4c35d9"],
Cell[299564, 8287, 284, 5, 32, "Output",ExpressionUUID->"34ce0e94-714b-4604-b67d-37f30b4316ee"]
}, Open  ]],
Cell[CellGroupData[{
Cell[299885, 8297, 606, 19, 32, "Input",ExpressionUUID->"cecad372-60a6-43ed-8e11-ea8b00bcd3ee"],
Cell[300494, 8318, 329, 5, 32, "Output",ExpressionUUID->"1e282a3e-9857-4a7e-a136-5bbbf241e2c1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[300860, 8328, 566, 17, 32, "Input",ExpressionUUID->"55bfad85-53bc-4d9a-88fb-9074f233fe89"],
Cell[301429, 8347, 256, 4, 32, "Output",ExpressionUUID->"c056542f-c144-483b-b659-29996cb3cd58"]
}, Open  ]],
Cell[301700, 8354, 488, 9, 32, "Text",ExpressionUUID->"a29372ce-4b47-4a93-bbd2-3a854efced7b"],
Cell[302191, 8365, 3692, 110, 88, "Input",ExpressionUUID->"aa676091-00e6-4282-8ccd-9d9b5f8ba189",
 InitializationCell->True],
Cell[305886, 8477, 909, 22, 49, "Input",ExpressionUUID->"69191c8b-71e8-4ffb-8c56-9227521f2a8d",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[306820, 8503, 11427, 239, 450, "Input",ExpressionUUID->"1fb1b77d-79cc-4507-842a-a53072a2aeec",
 InitializationCell->True],
Cell[318250, 8744, 25714, 660, 744, "Output",ExpressionUUID->"1eb15dc3-41dc-4843-9e0c-35b673605728"]
}, Open  ]],
Cell[343979, 9407, 1275, 37, 53, "Input",ExpressionUUID->"5de3ed10-5379-4515-b4af-300c371e6a84",
 InitializationCell->True],
Cell[345257, 9446, 1225, 37, 53, "Input",ExpressionUUID->"a06127f2-d00b-48db-a40b-e2689b0f426f",
 InitializationCell->True],
Cell[346485, 9485, 3244, 79, 150, "Input",ExpressionUUID->"f2a19e18-8c7e-4987-92e4-93d0fe29ac77",
 InitializationCell->True],
Cell[349732, 9566, 272, 6, 32, "Text",ExpressionUUID->"43de666e-8d80-4681-bbf8-a0797dc79f58"],
Cell[350007, 9574, 5120, 122, 190, "Input",ExpressionUUID->"7c6dd4f7-73f4-4105-89e4-aab0d47c3af2",
 InitializationCell->True],
Cell[355130, 9698, 183, 3, 30, "Text",ExpressionUUID->"0fff991d-5f99-4b2d-8881-ee667cd0874e"],
Cell[355316, 9703, 763, 20, 49, "Input",ExpressionUUID->"cdfb05a4-6d0c-4ac7-85ac-3080e2257285",
 InitializationCell->True],
Cell[356082, 9725, 750, 18, 49, "Input",ExpressionUUID->"24e70c16-c30d-47b3-8abe-719871fde7e7",
 InitializationCell->True],
Cell[356835, 9745, 1942, 38, 49, "Input",ExpressionUUID->"9c65a3f8-722d-44a8-bab1-2da2463b90e3",
 InitializationCell->True],
Cell[358780, 9785, 341, 7, 32, "Text",ExpressionUUID->"f290ff63-e619-4398-8b1c-5d65fce6ef65"],
Cell[359124, 9794, 1811, 40, 130, "Input",ExpressionUUID->"40b8933f-0adf-4540-82e3-5722657481d0",
 InitializationCell->True],
Cell[360938, 9836, 221, 4, 31, "Text",ExpressionUUID->"974c3c47-9ac1-47ee-82d2-462c884d3294"],
Cell[CellGroupData[{
Cell[361184, 9844, 6036, 136, 350, "Input",ExpressionUUID->"ce165a2d-4020-440f-aa0b-270b8a7df3d7",
 InitializationCell->True],
Cell[367223, 9982, 17214, 423, 664, "Output",ExpressionUUID->"9ef07c7f-36ee-4fb6-bf78-2d78528b466a"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature fvpbIIXg2zZ4mDgZY#ZqyIZN *)
