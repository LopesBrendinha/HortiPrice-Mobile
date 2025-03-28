import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Container(
          alignment: Alignment.center,
          width: 230,
          height: 55,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: <Color>[
              Color.fromRGBO(48, 219, 91, 059),
              Color.fromRGBO(36, 138, 92, 059)
            ]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Etna',
              color: Color.fromRGBO(235, 235, 240, 100),
            ),
          )),
    );
  }
}
