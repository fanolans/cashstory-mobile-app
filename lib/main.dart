import 'package:cashstory/presentation/pages/splashscreen.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/home_page.dart';
import 'utils/routes.dart';
import 'utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cash Story',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: kColorPrimary),
      ),
      home: const SplashScreen(),
      onGenerateRoute: (RouteSettings setting) {
        switch (setting.name) {
          case Routes.HOME_PAGE:
            return MaterialPageRoute(
              builder: (context) => const HomePage(),
            );
        }
      },
    );
  }
}
