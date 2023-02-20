import 'dart:math';
import 'package:dart_eval/dart_eval.dart';

List<String> operators = [
  '+',
  '-',
  '*',
];

int max = 22;

int opL1 = Random().nextInt(operators.length);
int opL2 = Random().nextInt(operators.length);
int opL3 = Random().nextInt(operators.length);
int opL4 = Random().nextInt(operators.length);
int opL5 = Random().nextInt(operators.length);
int opL6 = Random().nextInt(operators.length);
int opL7 = Random().nextInt(operators.length);
int opL8 = Random().nextInt(operators.length);
int opL9 = Random().nextInt(operators.length);
int opL10 = Random().nextInt(operators.length);

int num1 = Random().nextInt(max) + 3;
int num2 = Random().nextInt(max) + 3;
int num3 = Random().nextInt(max) + 3;
int num4 = Random().nextInt(max) + 3;
int num5 = Random().nextInt(max) + 3;
int num6 = Random().nextInt(max) + 3;
int num7 = Random().nextInt(max) + 3;
int num8 = Random().nextInt(max) + 3;
int num9 = Random().nextInt(max) + 3;
int num10 = Random().nextInt(max) + 3;
int num11 = Random().nextInt(max) + 3;
int num12 = Random().nextInt(max) + 3;
int num13 = Random().nextInt(max) + 3;
int num14 = Random().nextInt(max) + 3;
int num15 = Random().nextInt(max) + 3;
int num16 = Random().nextInt(max) + 3;
int num17 = Random().nextInt(max) + 3;
int num18 = Random().nextInt(max) + 3;
int num19 = Random().nextInt(max) + 3;
int num20 = Random().nextInt(max) + 3;
int num21 = Random().nextInt(max) + 3;
int num22 = Random().nextInt(max) + 3;
int num23 = Random().nextInt(max) + 3;
int num24 = Random().nextInt(max) + 3;
int num25 = Random().nextInt(max) + 3;
int num26 = Random().nextInt(max) + 3;
int num27 = Random().nextInt(max) + 3;
int num28 = Random().nextInt(max) + 3;
int num29 = Random().nextInt(max) + 3;
int num30 = Random().nextInt(max) + 3;
int num31 = Random().nextInt(max) + 3;
int num32 = Random().nextInt(max) + 3;
int num33 = Random().nextInt(max) + 3;
int num34 = Random().nextInt(max) + 3;
int num35 = Random().nextInt(max) + 3;
int num36 = Random().nextInt(max) + 3;
int num37 = Random().nextInt(max) + 3;
int num38 = Random().nextInt(max) + 3;
int num39 = Random().nextInt(max) + 3;
int num40 = Random().nextInt(max) + 3;

String op1 = operators[opL1];
String op2 = operators[opL2];
String op3 = operators[opL3];
String op4 = operators[opL4];
String op5 = operators[opL5];
String op6 = operators[opL6];
String op7 = operators[opL7];
String op8 = operators[opL8];
String op9 = operators[opL9];
String op10 = operators[opL10];

var q1 = '$num1 $op1 $num2';
var q2 = '$num3 $op2 $num4';
var q3 = '$num5 $op3 $num6';
var q4 = '$num7 $op4 $num8';
var q5 = '$num9 $op5 $num10';
var q6 = '$num11 $op2 $num12';
var q7 = '$num13 $op1 $num14';
var q8 = '$num15 $op4 $num16';
var q9 = '$num17 $op3 $num18';
var q10 = '$num19 $op6 $num20';
var q11 = '$num21 $op8 $num22';
var q12 = '$num23 $op7 $num24';
var q13 = '$num25 $op9 $num26';
var q14 = '$num27 $op4 $num28';
var q15 = '$num29 $op6 $num30';
var q16 = '$num31 $op8 $num32';
var q17 = '$num33 $op9 $num34';
var q18 = '$num35 $op7 $num36';
var q19 = '$num37 $op2 $num38';
var q20 = '$num39 $op9 $num40';

int a1 = eval(q1);
int a2 = eval(q2);
int a3 = eval(q3);
int a4 = eval(q4);
int a5 = eval(q5);
int a6 = eval(q6);
int a7 = eval(q7);
int a8 = eval(q8);
int a9 = eval(q9);
int a10 = eval(q10);
int a11 = eval(q11);
int a12 = eval(q12);
int a13 = eval(q13);
int a14 = eval(q14);
int a15 = eval(q15);
int a16 = eval(q16);
int a17 = eval(q17);
int a18 = eval(q18);
int a19 = eval(q19);
int a20 = eval(q20);

List ansList = [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20];
List queList = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20];
