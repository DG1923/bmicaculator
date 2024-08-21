import 'package:bmicaculator/constants.dart';
import 'package:flutter/material.dart';
import 'reuseCard.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("BMI CACULATOR"),
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
                          'Normal',
                          style: kTextResult,
                        ),
                        Text(
                          '20',
                          style: kNumberLargeStyle,
                        ),
                        Text(
                          'Normal BMI range:',
                          style: kTextStyle,
                        ),
                        Text(
                          "18,5 - 25kg/m2",
                          style: kTextStyle,
                        ),
                        Text(
                          "You have normal body weight. Good job!",
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Result()));
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
