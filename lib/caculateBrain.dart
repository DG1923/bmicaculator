import 'dart:math';

class Caculatebrain{
  late int height;
  late int weight;
  late int age;
  Caculatebrain({required this.height, required this.weight, required this.age}){
    if(height<0 || weight <0 || age < 0){
      this.height = 0;
      this.weight = 0;
      this.age = 0;
    }
  }
  double getBMI(){
    double bmi = (weight)/pow(height/100, 2);
    return double.parse(bmi.toStringAsFixed(1));
  }
  String getResultComment(){
    String result  = "";
    double bmi = getBMI();
    if(bmi <=18.5){
      result = "You are too thin!";
    }else if(bmi <25){
      result = "You have a normal body";
    }else if (bmi < 30){
      result = "You are overweight";
    }else if(bmi <35){
      result = " Grade 1 obesity";
    }else {
      result = " Grade 2 obesity";
    }
    return result;
  }
  String getResult(){
    String result  = "";
    double bmi = getBMI();
    if(bmi <=18.5){
      result = "THIN";
    }else if(bmi <25){
      result = "NORMAL";
    }else if (bmi < 30){
      result = "OVERWEIGHT";
    }else if(bmi <35){
      result = " GRADE 1 OBESITY";
    }else {
      result = " GRADE 2 OBESITY";
    }
    return result;
  }
  String getBMIRange(){
    String result = "";
    double bmi = getBMI();
    if(bmi <=18.5){
      result = "< 18 .5";
    }else if(bmi <25){
      result = "18.5 - 25";
    }else if (bmi < 30){
      result = "25 - 30";
    }else if(bmi <35){
      result = "30 - 34 ";
    }else {
      result = "> 34";
    }
    return result;
  }

}
