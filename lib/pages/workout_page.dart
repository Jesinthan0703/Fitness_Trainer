import 'package:flutter/material.dart';
import '../data.dart';

class WorkOutPage extends StatelessWidget {
  static const routeName = '/workout';
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Center(
        child: Text(workoutList[index].name),
      ),
    );
  }
}
