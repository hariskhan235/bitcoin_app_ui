import 'package:flutter/material.dart';

class CardAndTextWidget extends StatelessWidget {
  const CardAndTextWidget({
    super.key,
    required this.iconData,
    required this.title,
    required this.height,
  });
  final IconData iconData;
  final String title;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: height,
        ),
        Text(title),
      ],
    );
  }
}
