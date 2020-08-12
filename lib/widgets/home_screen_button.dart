import 'package:flutter/material.dart';

class HomeScreenButton extends StatelessWidget {
  final String title;
  final Color colours;
  HomeScreenButton({this.title, this.colours});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      height: 50,
      width: 300,
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
      decoration: BoxDecoration(
        color: colours,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
