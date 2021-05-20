# Dart Gini Impurity For Decision Tree

## Introduction

> Calculating Gini impurity is easy to calculate but typing on the calculator is pretty overwhelmed. This script will help to get the result of Gini impurity within a second.

## What is a decision tree?
> A decision tree is a decision support tool that uses a tree-like model of decisions and their possible consequences, including chance event outcomes, resource costs, and utility. It is one way to display an algorithm that only contains conditional control statements.

## What is Gini Impurity?
>The internal working of Gini impurity is also somewhat similar to the working of entropy in the Decision Tree. In the Decision Tree algorithm, both are used for building the tree by splitting as per the appropriate features but there is quite a difference in the computation of both the methods. Gini Impurity of features after splitting can be calculated by using this formula.

>![alt text](https://media.geeksforgeeks.org/wp-content/uploads/20200620175232/Screenshot-2020-06-20-at-5.51.42-PM.png)

## The Formula
>![alt text](https://image.prntscr.com/image/EzRLeN6FQfGqaaAUCuUscg.png)

## Code Samples

> ![alt text](https://cdn.discordapp.com/attachments/713819130930790531/844981993006563408/unknown.png)

> ![alt text](https://cdn.discordapp.com/attachments/713819130930790531/844982226118246400/unknown.png)

## Installation

> Copy the below code or main.dart code and paste to https://dartpad.dev to run the script.

> ```
import 'dart:math';
void main() {
  var trueyes = 6; // value of left true yes
  var trueno = 1; // value of left true no
  var falseyes = 1; // value of right false yes
  var falseno = 2; // value of right false yes
  var trueyesplusno =
      trueyes + trueno; // addition value of left true yes and no
  var falseyesplusno =
      falseyes + falseno; // addition value of right true yes and no
  var trueyesf1 = 
      pow(trueyes / trueyesplusno, 2); // to the power of 2
  var truenof1 = 
      pow(trueno / trueyesplusno, 2); // to the power of 2
  var falseyesf1 = 
      pow(falseyes / falseyesplusno, 2); // to the power of 2
  var falsenof1 = 
      pow(falseno / falseyesplusno, 2); // to the power of 2
  var truegini = 
      1 - trueyesf1 - truenof1; // this is the true side gini
  var falsegini = 
      1 - falseyesf1 - falsenof1; // this is the false side gini
  var truey = 
      trueyes + trueno;
  var falsey = 
      falseyes + falseno;
  var trueplusfalse = 
      trueyes + trueno + falseyes + falseno;
  var equationfortrue = 
      truey / trueplusfalse * truegini;
  var equationforfalse = 
      falsey / trueplusfalse * falsegini;
  var totalgini =  
      equationfortrue + equationforfalse;
  print('true gini:$truegini');
  print('false gini:$falsegini');
  print('total gini impurity:$totalgini');
}
```

>![alt text](https://cdn.discordapp.com/attachments/713819130930790531/844982775639310342/unknown.png)

> THANK YOU 
