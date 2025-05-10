import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 230,

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Container(
          alignment: Alignment.center,
          width: width,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: <Color>[
              Color.fromRGBO(48, 219, 91, 1),
              Color.fromRGBO(36, 138, 92, 1)
            ]),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins-Bold',
              color: Color.fromRGBO(235, 235, 240, 1),
            ),
          )),
    );
  }
}
