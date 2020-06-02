import 'package:firebase_demo/models/user.dart';
import 'package:firebase_demo/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'authenticate.dart';



class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

        if (user==null){
          return Authenticate();
        }
        else{
          return Home();
        }


        
  }
}