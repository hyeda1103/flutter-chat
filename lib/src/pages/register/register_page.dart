import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _imageBanner(context),
                _textFieldName(),
                _textFieldPhone(),
                _textFieldEmail(),
                _textFieldPassword(),
                _textFieldConfirmPassword(),
                _buttonRegister(),
                _doNotHaveAccount(),
              ],
            ),
          ),
        )
    );
  }

  Widget _imageBanner (context) {
    return Container(
      margin: EdgeInsets.only(
        top: 90,
        bottom: MediaQuery.of(context).size.height * 0.05,
      ),
      child: SvgPicture.asset(
          'assets/images/mascot.svg',
          width: 100,
          fit: BoxFit.scaleDown
      ),
    );
  }

  Widget _textFieldName () {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: '이름',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: Colors.black
            ),
            prefixIcon: Icon(Icons.person)
        ),
      ),
    );
  }

  Widget _textFieldPhone () {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 50, right: 50),
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: '전화번호',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
                color: Colors.black
            ),
            prefixIcon: Icon(Icons.phone)
        ),
      ),
    );
  }

  Widget _textFieldEmail () {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 50, right: 50),
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
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
      margin: EdgeInsets.only(top: 10, left: 50, right: 50),
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
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

  Widget _textFieldConfirmPassword () {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 50, right: 50),
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30)
      ),
      child: TextField(
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
        decoration: InputDecoration(
            hintText: '비밀번호 확인',
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

  Widget _buttonRegister () {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
            padding: EdgeInsets.symmetric(vertical: 15)
        ),
        child: Text('회원가입'),
      ),
    );
  }

  Widget _doNotHaveAccount () {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '이미 계정이 있으세요?',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: () {
            Get.toNamed('/');
          },
          child: Text(
            '로그인',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        )
      ],
    );
  }
}
