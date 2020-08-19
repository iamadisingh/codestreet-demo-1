import 'package:express_app_self/widgets/home_screen_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
          ],
        ),
      ),
    );
  }
}
