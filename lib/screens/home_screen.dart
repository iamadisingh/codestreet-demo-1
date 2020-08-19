import 'package:express_app_self/widgets/home_screen_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Project Book-Worm",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "📚",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/signIn');
              },
              child: HomeScreenButton(
                title: "Sign In",
                colours: Color(0xff0099ff),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/signUp');
              },
              child: HomeScreenButton(
                title: "Sign Up",
                colours: Color(0xff0099ff),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "Connnect With us:",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.instagram),
                SizedBox(
                  width: 20,
                ),
                FaIcon(FontAwesomeIcons.twitter),
                SizedBox(
                  width: 20,
                ),
                FaIcon(FontAwesomeIcons.facebook),
                SizedBox(
                  width: 20,
                ),
                FaIcon(FontAwesomeIcons.youtube),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
