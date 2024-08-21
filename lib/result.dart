import 'package:bmicaculator/constants.dart';
import 'package:flutter/material.dart';
import 'reuseCard.dart';

class Result extends StatelessWidget {
  Result({required this.result,required this. comment, required this. bmiRange, required this.bmi});
  late String result;
  late String comment;
  late String bmiRange;
  late String bmi;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("BMI CACULATOR",
              style: kTextStyle,),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Center(
                  child: Text(
                    'Your Result',
                    style: kTextStyleLarge,
                  ),
                ),
                reuseCard(
                  color: kInActiveColorCard,
                  chillWidget: Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          result,
                          style: kTextResult,
                        ),
                        Text(
                          bmi,
                          style: kNumberLargeStyle,
                        ),
                        Text(
                          'BMI range:',
                          style: kTextStyle,
                        ),
                        Text(
                          bmiRange+" Kg/m2",
                          style: kTextStyle,
                        ),
                        Text(
                          comment,
                          style: kTextStyle,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Save Your Result!",
                            style: kTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: kHeightBottomButton,
                  color: kColorBottomButton,
                  child: GestureDetector(
                    onTap: () {
                      print("caculate was pressed");
                      Navigator.pop;
                    },
                    child: Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Text(
                          "RE-CACULATE YOU BMI",
                          style: kNumberMediumStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
