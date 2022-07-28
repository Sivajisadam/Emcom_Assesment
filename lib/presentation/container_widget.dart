import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  ContainerWidget({this.child});
  final child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 230, 234, 234)),
      child: child,
    );
  }
}