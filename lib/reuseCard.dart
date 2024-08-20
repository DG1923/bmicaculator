import 'package:flutter/material.dart';
class reuseCard extends StatelessWidget {
  reuseCard({required this.color, this.chillWidget,this.tapped});
  final Widget? chillWidget;
  final VoidCallback? tapped;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: this.tapped,
        child: Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: chillWidget,
            )),
      ),
    );
  }
}
