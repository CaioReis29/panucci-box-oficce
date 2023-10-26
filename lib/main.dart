import 'package:flutter/material.dart';
import 'package:bilheteria_panucci/screens/home.dart';
import 'package:bilheteria_panucci/themes/my_themes.dart';

void main() {
  runApp(const BilheteriaPanucci());
}

class BilheteriaPanucci extends StatelessWidget {
  const BilheteriaPanucci({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bilheteria Panucci',
      theme: MyThemes.getTheme("default"),
      home: const Home(),
    );
  }
}
