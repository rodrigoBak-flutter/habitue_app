import 'package:flutter/material.dart';
import 'package:habitue_app/routes.dart';

import 'package:habitue_app/src/screens/splash/splash_screen.dart';
import 'package:habitue_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Este widget es la raíz de la aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // Usamos routeName para que no necesitemos recordar el nombre
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
