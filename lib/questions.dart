import 'dart:math';
import 'package:dart_eval/dart_eval.dart';

List<String> operators = [
  '+',
  '-',
  '*',
]; // '/'];

int max = 22;
//int for+- = 980;

int opL1 = Random().nextInt(operators.length);
int opL2 = Random().nextInt(operators.length);
int opL3 = Random().nextInt(operators.length);
int opL4 = Random().nextInt(operators.length);
int opL5 = Random().nextInt(operators.length);

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

String op1 = operators[opL1];
String op2 = operators[opL2];
String op3 = operators[opL3];
String op4 = operators[opL4];
String op5 = operators[opL5];

var q1 = '$num1 $op1 $num2';
var q2 = '$num3 $op2 $num4';
var q3 = '$num5 $op3 $num6';
var q4 = '$num7 $op4 $num8';
var q5 = '$num9 $op5 $num10';
var q6 = '$num11 $op2 $num12';
var q7 = '$num13 $op1 $num14';
var q8 = '$num15 $op4 $num16';
var q9 = '$num17 $op3 $num18';
var q10 = '$num19 $op5 $num20';

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

List ansList = [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10];
List queList = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10];
