import 'package:flutter/material.dart';
import 'pages/auth_page.dart';
import 'pages/admin_product_page.dart';
import 'pages/auth_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.purple,
      ),
      routes: {
        '/': (_) => AuthPage(),
        '/admin': (_) => AdminProductPage(),
      }
    );
  }
}
