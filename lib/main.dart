import 'package:flutter/material.dart';
import 'package:kojo_app/src/login/login_page.dart';
import 'package:kojo_app/src/utils/palette.dart';

void main() {
  runApp(const KOJO());
}

class KOJO extends StatefulWidget {
  const KOJO({Key? key}) : super(key: key);

  @override
  State<KOJO> createState() => _KOJOState();
}

class _KOJOState extends State<KOJO> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KOJO',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage()
      },
      theme: ThemeData(
        primaryColor: Palette.primary
      ),
    );
  }
}
