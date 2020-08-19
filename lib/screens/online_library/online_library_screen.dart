import 'package:express_app_self/widgets/home_screen_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnlineLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "What would you like to Read?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          HomeScreenButton(
            title: 'Academic Section',
            colours: Color(0xff0099ff),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/nonAcademicScreen');
            },
            child: HomeScreenButton(
              title: 'Non-academic Section',
              colours: Color(0xff0099ff),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/mainAppScreen');
            },
            child: Chip(
              avatar: CircleAvatar(
                backgroundColor: Color(0xffebebeb),
                child: FaIcon(
                  FontAwesomeIcons.arrowAltCircleLeft,
                  color: Colors.black,
                  size: 15,
                ),
              ),
              label: Text('Back to home screen'),
            ),
          ),
        ],
      ),
    );
  }
}
