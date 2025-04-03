import 'package:flutter/material.dart';

class CustomInputBar extends StatefulWidget {
  final String text;
  final double largura;
  final IconData icon1;
  final TextEditingController controller;
  final bool obscure; // Propriedade do construtor
  final bool showEyeIcon;

  const CustomInputBar({
    Key? key,
    required this.text,
    required this.largura,
    required this.icon1,
    required this.controller,
    this.obscure = false, // Valor padrão
    this.showEyeIcon = false,
  }) : super(key: key);

  @override
  _CustomInputBarState createState() => _CustomInputBarState();
}

class _CustomInputBarState extends State<CustomInputBar> {
  late bool _obscure; // Variável local para controlar a visibilidade do texto

  @override
  void initState() {
    super.initState();
    _obscure =
        widget.obscure; // Inicializa a variável local com o valor do construtor
  }

  void _toggleObscure() {
    setState(() {
      _obscure = !_obscure; // Alterna o valor da variável local
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: widget.largura,
      child: TextFormField(
        controller: widget.controller,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(174, 174, 178, 1.00),
        ),
        decoration: InputDecoration(
          labelText: widget.text,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(174, 174, 178, 1.00),
          ),
          prefixIcon: widget.icon1 != null
              ? Icon(
                  widget.icon1,
                  color: Color.fromRGBO(174, 174, 178, 1.00),
                )
              : null,
          suffixIcon: widget.showEyeIcon
              ? IconButton(
                  icon: Icon(
                    _obscure ? Icons.visibility_off : Icons.visibility,
                    color: Color.fromRGBO(174, 174, 178, 1.00),
                  ),
                  onPressed: _toggleObscure,
                )
              : null,
          fillColor: Color.fromRGBO(235, 235, 240, 1),
          filled: true,
          focusedBorder: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        obscureText: _obscure, // Usa a variável local
      ),
    );
  }
}
