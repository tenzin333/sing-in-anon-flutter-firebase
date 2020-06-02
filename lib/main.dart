import 'package:firebase_demo/screens/authenticate/wrapper.dart';

import 'package:firebase_demo/services/auth.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value:AuthService().user,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
        home: Wrapper(),
      ),
    );
  }

}
