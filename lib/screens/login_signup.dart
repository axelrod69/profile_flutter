import 'package:flutter/material.dart';
import '../widgets/form.dart';

class LoginSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Center(
          child: LoginAndRegisterForm(),
        )
      )
    );
  }
}