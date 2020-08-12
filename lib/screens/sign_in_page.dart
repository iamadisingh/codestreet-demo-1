import 'package:express_app_self/widgets/input_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign In",
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
              reqText: "Email Id",
            ),
            InputTextFeild(
              reqText: "Password",
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.arrowAltCircleLeft,
                      size: 45,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.arrowAltCircleRight,
                      size: 45,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/mainAppScreen');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
