import 'package:flutter/material.dart';
const colorCard = Color(0xFF1D1E33);
const double heightBottomButton = 80;
const colorBottomButton = Color(0xFFEB1555);
class InputRange extends StatefulWidget {
  const InputRange({super.key});

  @override
  State<InputRange> createState() => _InputRangeState();
}

class _InputRangeState extends State<InputRange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
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
                    reuseCard(color: colorCard),
                    SizedBox(
                      width: 20,
                    ),
                    reuseCard(color: colorCard),
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
              child: reuseCard(color: colorCard),
            )),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    reuseCard(color: colorCard),
                    SizedBox(
                      width: 20,
                    ),
                    reuseCard(color: colorCard),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: heightBottomButton,
              color: colorBottomButton,
            ),
          ],
        ),
      ),
    );
  }
}

class reuseCard extends StatelessWidget {
  reuseCard({
    required this.color
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
        ));
  }
}
