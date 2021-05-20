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
