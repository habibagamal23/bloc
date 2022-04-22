import 'package:flutter/material.dart';

import 'helper/GenerateRoute.dart';

void main() {
  runApp(MyApp(
    AppRoute(),
  ));
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp(this.appRoute);

  final AppRoute appRoute;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoute.generateRoute,
    );
  }
}
