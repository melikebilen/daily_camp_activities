import 'package:daily_camp_activities/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import './counselor_login_screen.dart';
import 'package:intl/intl.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Camp Activities'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
           alignment: Alignment.center,
            child: Text('Hey welcome to Camp Activities Daily',style: TextStyle(fontSize: 20),),),
            SizedBox(height: 20,),
          Container(
             alignment: Alignment.center,
              child: Text(
                  DateFormat('dd/MM/yyyy').format(DateTime.now()).toString())),
                  SizedBox(height: 20,),
          RaisedButton(
            child: Text('Counselor',style: TextStyle(fontSize: 20),),
            color: Theme.of(context).accentColor,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(CounselorLoginScreen.routeName);
            },
          ),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
            child: Text('Admin',style: TextStyle(fontSize: 20),),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          )
        ],
      ),
   //   drawer: AppDrawer(),
    );
  }
}
