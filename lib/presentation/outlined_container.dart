import 'package:flutter/material.dart';

class OutlinedContainer extends StatelessWidget {
  OutlinedContainer({required this.child});
  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
