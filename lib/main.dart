import 'package:airplane/ui/pages/main_pages.dart';
import 'package:flutter/material.dart';

import 'ui/pages/bonus_pages.dart';
import 'ui/pages/get_started.dart';
import 'ui/pages/sign_up_pages.dart';
import 'ui/pages/splashPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPages(),
        '/bonus': (context) => BonusPages(),
        '/main-pages': (context) => MainPages(),
      },
    );
  }
}
