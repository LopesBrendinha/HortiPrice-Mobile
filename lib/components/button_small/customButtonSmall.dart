import 'package:flutter/material.dart';

class CustomButtonSmall extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButtonSmall({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(242, 242, 247, 1),
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Container(
        width: 160 * 0.85,
        height: 150 * 0.85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(48, 219, 91, 1),
                  Color.fromRGBO(36, 138, 92, 1),
                ],
              ).createShader(bounds),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
