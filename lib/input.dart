import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'childWidget.dart';
import 'reuseCard.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
  non,
}

class InputRange extends StatefulWidget {
  const InputRange({super.key});

  @override
  State<InputRange> createState() => _InputRangeState();
}
class RoundedButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback func;
  RoundedButton({super.key, required this.icon,required this.func });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: icon,
      onPressed: func,
      shape:CircleBorder(),
      fillColor:Color(0xFF4C4F5E),
    );
  }
}


class _InputRangeState extends State<InputRange> {
  late Gender selectedGender;
  late int height;
  late int weight;
  late int age;
  @override
  void initState() {
    super.initState();
    selectedGender = Gender.non;
    height = 180;
    weight = 60;
    age = 20;
  }

  Widget box(Gender gender) {
    String text = gender == Gender.male ? "Male" : "Female";
    IconData icon =
        gender == Gender.male ? FontAwesomeIcons.mars : FontAwesomeIcons.venus;
    return reuseCard(
      tapped: () {
        setState(() {
          selectedGender = selectedGender == gender ? Gender.non : gender;
        });
      },
      color: selectedGender == gender ? kActiveColorCard : kInActiveColorCard,
      chillWidget: childWidget(
        text: text,
        icon: icon,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI Caculator"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      box(Gender.male),
                      SizedBox(
                        width: 20,
                      ),
                      box(Gender.female),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(20),
                child: reuseCard(
                  color: kInActiveColorCard,
                  chillWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kTextStyle,
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.ideographic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kNumberMediumStyle,
                            ),
                            Text(
                              'cm',
                              style: kUnitStyle,
                            ),
                          ]),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            thumbColor: kColorBottomButton,
                            overlayColor: kColorBottomButton.withAlpha(0x1f),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 10),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30)),
                        child: Slider(
                          value: height.toDouble(),
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          },
                          inactiveColor: kActiveColorCard,
                          max: 300,
                          min: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: reuseCard(
                            color: kInActiveColorCard,
                            chillWidget: Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'WEIGHT',
                                    style: kTextStyle,
                                  ),
                                  Text(
                                    weight.toString(),
                                    style: kNumberMediumStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RoundedButton(
                                        icon: Icon(
                                          FontAwesomeIcons.minus,
                                          color: Colors.white,
                                        ),
                                        func: (){
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      RoundedButton(
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        func: (){
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: reuseCard(
                            color: kInActiveColorCard,
                            chillWidget: Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'AGE',
                                    style: kTextStyle,
                                  ),
                                  Text(
                                    age.toString(),
                                    style: kNumberMediumStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RoundedButton(
                                        icon: Icon(
                                          FontAwesomeIcons.minus,
                                          color: Colors.white,
                                        ),
                                        func: (){
                                          setState(() {
                                            age--;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      RoundedButton(
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        func: (){
                                          setState(() {
                                            age++;
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: kHeightBottomButton,
                color: kColorBottomButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
