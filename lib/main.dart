import 'package:flutter/material.dart';
import 'package:to_do_list/AuthModule/login_view.dart';
import 'package:to_do_list/routes/routes.dart';
import 'package:to_do_list/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.login,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
