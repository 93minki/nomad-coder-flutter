import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text, // text가 컴파일 이전에 확정된 값이라면 위에 Padding에 const를 붙일 수 있음
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

// Container(
//                       decoration: BoxDecoration(
//                           color: const Color(0xFF1F2123),
//                           borderRadius: BorderRadius.circular(45)),
//                       child: const Padding(
//                         padding: EdgeInsets.symmetric(
//                           vertical: 20,
//                           horizontal: 50,
//                         ),
//                         child: Text(
//                           'Request',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                           ),
//                         ),
//                       ),
//                     ),