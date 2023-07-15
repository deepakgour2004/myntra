import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Myntra_Page extends StatefulWidget {
  var photo;
  var name;

  Myntra_Page(this.photo, this.name);

  @override
  State<Myntra_Page> createState() => _Myntra_PageState();
}

class _Myntra_PageState extends State<Myntra_Page> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 70,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.photo)),
              border: Border.all(color: Colors.black),
              shape: BoxShape.circle),
        ),
        Text(widget.name),
      ],
    );
  }
}
