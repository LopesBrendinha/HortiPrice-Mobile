import 'package:flutter/material.dart';

class ExplicacaoView extends StatelessWidget {
  final Map pObj;
  const ExplicacaoView({super.key, required this.pObj});

  @override
  Widget build(BuildContext context) {
    var midia = MediaQuery.of(context).size;

    return SizedBox(
      width: midia.width,
      height: midia.height,
      child: Column(
        children: <Widget>[
          Image.asset(
            pObj['image'].toString(),
            fit: BoxFit.fitWidth,
            width: midia.width,
          ),
          SizedBox(
            height: midia.width * 0.1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              pObj['title'].toString(),
              style: TextStyle(
                color: Color.fromRGBO(36, 36, 38, 1),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              pObj['subtitle'].toString(),
              style: TextStyle(
                color: Color.fromRGBO(142, 142, 147, 1),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
