import 'package:flutter/material.dart';
import 'package:kojo_app/src/pages/login/login_page.dart';
import 'package:kojo_app/src/pages/register/register_page.dart';
import 'package:kojo_app/src/utils/palette.dart';
import 'package:get/get.dart';

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
    return GetMaterialApp(
      title: 'KOJO',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
      ],
      theme: ThemeData(
        primaryColor: Palette.primary
      ),
      navigatorKey: Get.key,
    );
  }
}
