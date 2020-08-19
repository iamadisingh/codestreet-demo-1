import 'package:express_app_self/screens/book_search/book_scearch_screen.dart';
import 'package:express_app_self/screens/exchange_screen/exchange_screen.dart';
import 'package:express_app_self/screens/home_screen.dart';
import 'package:express_app_self/screens/main_app_screen.dart';
import 'package:express_app_self/screens/online_library/nonacademic_screen.dart';
import 'package:express_app_self/screens/online_library/online_library_screen.dart';
import 'package:express_app_self/screens/public%20Library/public_library.dart';
import 'package:express_app_self/screens/public%20Library/public_library_screen.dart';
import 'package:express_app_self/screens/public_library/public_library_screen.dart';
import 'package:express_app_self/screens/sign_in_page.dart';
import 'package:express_app_self/screens/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodeStreet'20 prototype",
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/signIn': (context) => SignInPage(),
        '/signUp': (context) => SignUpPage(),
        '/mainAppScreen': (context) => MainAppScreen(),
        '/onlineLibraryScreen': (context) => OnlineLibrary(),
        '/publicLibraryScreen': (context) => PublicLibrary(),
        '/nonAcademicScreen': (context) => NonAcademicScreen(),
        // ignore: equal_keys_in_map
        '/publicLibraryScreen': (context) => ExplorePopularPlaces(),
        '/exchangeBookPage': (context) => ExchangeScreen(),
        '/bookSearchScreen': (context) => BookSearchScreen(),
      },
    );
  }
}
