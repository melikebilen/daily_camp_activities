import '../widgets/app_drawer.dart';
import 'package:flutter/material.dart';
class CounselorLoginScreen extends StatelessWidget {
static const routeName = '/counselor_login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counselor!!!'),),
      body:Text('Counselor screen'),
      drawer: AppDrawer(),
    );
  }
}