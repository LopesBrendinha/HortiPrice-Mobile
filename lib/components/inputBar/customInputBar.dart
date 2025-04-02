import 'package:flutter/material.dart';

class CustomInputBar extends StatelessWidget {
  final String text;
  final double largura;
  final IconData icon;
  final TextEditingController controller;
  final bool obscure;

  const CustomInputBar({
    Key? key,
    required this.text,
    required this.largura,
    required this.icon,
    required this.controller,
    required this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: largura,
      child: TextFormField(
        controller: controller,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(174, 174, 178, 1.00),
        ),
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(174, 174, 178, 1.00),
          ),
          prefixIcon: icon != null ? Icon(icon) : null,

          fillColor: Color.fromRGBO(
              235, 235, 240, 1), // Cor de fundo do campo de entrada
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0), // Cor e largura da borda
            borderRadius: BorderRadius.circular(20.0), // Raio da borda
          ),
        ),
        obscureText: obscure,
      ),
    );
  }
}
