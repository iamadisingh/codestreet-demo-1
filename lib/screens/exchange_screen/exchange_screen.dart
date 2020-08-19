import 'package:express_app_self/widgets/home_screen_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExchangeScreen extends StatelessWidget {
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
              "Book Exchange",
              textAlign: TextAlign.center,
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
            HomeScreenButton(
              title: "Your Wishlist",
              colours: Color(0xff0099ff),
            ),
            HomeScreenButton(
              title: "Your Basket",
              colours: Color(0xff0099ff),
            ),
            SizedBox(
              height: 70,
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
                  label: Text('Facing issues? Contact us.'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/mainAppScreen');
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
            ),
          ],
        ),
      ),
    );
  }
}
