import 'package:flutter/material.dart';

class InputTextFeild extends StatelessWidget {
  final String reqText;
  InputTextFeild({this.reqText});
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          textAlign: TextAlign.center,
          autofocus: false,
          style: TextStyle(fontSize: 20.0, color: Color(0xFFbdc6cf)),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffebebeb),
            hintText: reqText,
            contentPadding: const EdgeInsets.only(
                left: 14.0, bottom: 20.0, top: 20.0, right: 14.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
