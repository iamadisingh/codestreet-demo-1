import 'package:express_app_self/widgets/home_screen_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 90, bottom: 20, right: 20, left: 20),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, There!😊",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Where to next?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 100,
                                    ),
                                    Text(
                                      "We here, show you all the public Libraries available in your area, you can choose whichever library you would want to go",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/publicLibraryScreen');
                                      },
                                      child: HomeScreenButton(
                                        title: "Continue",
                                        colours: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: HomeScreenButton(
                      title: "Public Library",
                      colours: Color(0xff0099ff),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/onlineLibraryScreen');
                    },
                    child: HomeScreenButton(
                      title: "Online Library",
                      colours: Color(0xff0099ff),
                    ),
                  ),
                  HomeScreenButton(
                    title: "Book Selling Vendors",
                    colours: Color(0xff0099ff),
                  ),
                  HomeScreenButton(
                    title: "Exchange your books",
                    colours: Color(0xff0099ff),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signIn');
                    },
                    child: Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Color(0xffebebeb),
                        child: FaIcon(
                          FontAwesomeIcons.questionCircle,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      label: Text('Use different account'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Color(0xffebebeb),
                        child: FaIcon(
                          FontAwesomeIcons.signOutAlt,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                      label: Text('Sign Out'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
