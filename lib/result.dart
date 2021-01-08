import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int marks;
  Result(this.marks);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Your score is $marks ! Thanks for playing !'),
    );
  }
}
