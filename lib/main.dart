import 'package:flutter/material.dart';
import './screens/login_signup.dart';
import './screens/list.dart';
import 'package:provider/provider.dart';
import './provider/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          accentColor: Colors.black54
        ),
        home: List(),
      ),
    );
  }
}