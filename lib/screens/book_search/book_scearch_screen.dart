import 'package:express_app_self/widgets/home_screen_button.dart';
import 'package:express_app_self/widgets/input_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Find your next read",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InputTextFeild(
                  reqText: "Name of the book",
                ),
                InputTextFeild(
                  reqText: "Author",
                ),
                InputTextFeild(
                  reqText: "Genre (optional)",
                ),
                InputTextFeild(
                  reqText: "Published Year (optional)",
                ),
                SizedBox(
                  height: 15,
                ),
                HomeScreenButton(
                  title: "Search Book",
                  colours: Color(0xff0099ff),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Color(0xffebebeb),
                        child: FaIcon(
                          FontAwesomeIcons.questionCircle,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      label: Text("Can't find? Notify us."),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/nonAcademicScreen');
                      },
                      child: Chip(
                        avatar: CircleAvatar(
                          backgroundColor: Color(0xffebebeb),
                          child: FaIcon(
                            FontAwesomeIcons.arrowCircleLeft,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                        label: Text("Go Back"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
