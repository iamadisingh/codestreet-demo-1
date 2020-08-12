import 'package:express_app_self/widgets/home_screen_button.dart';
import 'package:express_app_self/widgets/input_text_feild.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
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
                  "Sign Up",
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
                  reqText: "Name",
                ),
                InputTextFeild(
                  reqText: "Phone Number",
                ),
                InputTextFeild(
                  reqText: "Email Id",
                ),
                InputTextFeild(
                  reqText: "Password",
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) => Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  letterSpacing: 1.1,
                                  color: Colors.black, //Color(0xff0099ff),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '🎊',
                                style: TextStyle(
                                  fontSize: 50,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                "Thank You, for registering in our app. Please, Sign in again to proceed!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff0099ff),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/signIn');
                                },
                                child: HomeScreenButton(
                                  title: "Take me to Sign In",
                                  colours: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: HomeScreenButton(
                    title: "Register",
                    colours: Color(0xff0099ff),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//Navigator.pushNamed(context, '/signIn');
