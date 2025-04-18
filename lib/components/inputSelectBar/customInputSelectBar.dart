import 'package:flutter/material.dart';

class CustomInputSelectBar extends StatelessWidget {
  final String text;
  final double largura;
  final String? selectedValue;
  final List<String> items;
  final void Function(String?)? onChanged;

  const CustomInputSelectBar({
    Key? key,
    required this.text,
    required this.largura,
    required this.selectedValue,
    required this.items,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: largura,
      child: DropdownButtonFormField<String>(
        value: selectedValue,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(174, 174, 178, 1.00),
          ),
          fillColor: Color.fromRGBO(235, 235, 240, 1),
          filled: true,
          focusedBorder: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent, width: 1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        icon: Icon(
          Icons.arrow_drop_down,
          color: Color.fromRGBO(174, 174, 178, 1.00),
        ),
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(174, 174, 178, 1.00),
        ),
        dropdownColor: Color.fromRGBO(235, 235, 240, 1),
        items: items
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              ),
            )
            .toList(),
      ),
    );
  }
}
