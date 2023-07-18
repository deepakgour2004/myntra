import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget axisWidget(context, image) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 222, 213, 213)),
    ),
    child: Image.asset(
      image,
      fit: BoxFit.fill,
    ),
  );
}

Widget axisWidget1(context, image) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Color.fromARGB(255, 222, 213, 213)),
    ),
    child: Image.asset(
      image,
      fit: BoxFit.fill,
    ),
  );
}
