import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget textrow(icon, text) {
  return Row(
    children: [
      Icon(
        icon,
        color: Colors.grey[700],
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        text,
        style: TextStyle(
            color: Colors.black.withOpacity(0.9),
            fontSize: 18,
            fontWeight: FontWeight.w600),
      )
    ],
  );
}

Widget orangText(text) {
  return Text(
    text,
    style: TextStyle(
        color: Colors.orange[800], fontSize: 17, fontWeight: FontWeight.w600),
  );
}

Widget headtext(text) {
  return Text(
    text,
    style: TextStyle(
        color: Colors.black.withOpacity(0.9),
        fontSize: 20,
        fontWeight: FontWeight.w800),
  );
}

Widget notSelected() {
  return const Icon(
    Icons.radio_button_off,
    size: 25,
    color: Colors.grey,
  );
}

Widget selected() {
  return Icon(
    Icons.check_circle,
    color: Colors.orange[800],
    size: 25,
  );
}

Widget lastrow(text1, text2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text1,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black)),
      Text(
        text2,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      ),
    ],
  );
}

Widget lastrowbold(text1, text2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text1,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black)),
      Text(
        text2,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
      ),
    ],
  );
}

Widget close() {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(100),
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0.7)
        ]),
    child: const Center(
      child: Icon(Icons.close),
    ),
  );
}

Widget creditCard(text) {
  return Flexible(
      child: TextField(
    maxLength: 8,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(hintText: text),
  ));
}

Widget myButton(text, color, textColor) {
  return Container(
    width: 162,
    height: 55,
    decoration: BoxDecoration(
      border: Border.all(color: textColor),
      borderRadius: BorderRadius.circular(7),
      color: color,
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontWeight: FontWeight.w800, fontSize: 17),
      ),
    ),
  );
}
