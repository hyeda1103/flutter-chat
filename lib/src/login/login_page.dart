import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kojo_app/src/utils/palette.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            _imageBanner(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _doNotHaveAccount(),
          ],
        ),
      )
    );
  }

  Widget _imageBanner () {
    return Container(
      margin: EdgeInsets.only(
          top: 100,
          bottom: MediaQuery.of(context).size.height * 0.1,
      ),
      child: SvgPicture.asset(
        'assets/images/logo.svg',
        width: 500,
        fit: BoxFit.scaleDown
      ),
    );
  }

  Widget _textFieldEmail () {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: '이메일',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: Colors.black
          ),
          prefixIcon: Icon(Icons.email)
        ),
      ),
    );
  }

  Widget _textFieldPassword () {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: '비밀번호',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: Colors.black
            ),
            prefixIcon: Icon(Icons.lock)
        ),
      ),
    );
  }

  Widget _buttonLogin () {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
          onPressed: () {},
          child: Text('로그인'),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            padding: EdgeInsets.symmetric(vertical: 15)
          )
      ),
    );
  }

  Widget _doNotHaveAccount () {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '아직 계정이 없으세요?',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        SizedBox(width: 7),
        Text(
          '회원가입',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        )
      ],
    );
  }
}
