import 'package:daily_camp_activities/screens/activities_screen.dart';
import 'package:flutter/material.dart';

import './screens/counselor_login_screen.dart';
import './screens/login_screen.dart';
import './screens/choose_activities_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          title: 'Daily Camp Activities',
          theme: ThemeData(
            primarySwatch: Colors.pink,
            accentColor: Colors.amber,
            fontFamily: 'Lato',
          ),
          home: LoginScreen(),
          routes: {
            CounselorLoginScreen.routeName: (ctx) => CounselorLoginScreen(),
            ActivitiesScreen.routeName: (ctx)=> ActivitiesScreen(),
            ChooseActivitiesScreen.routeName: (ctx)=>ChooseActivitiesScreen(),
         //   ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
         //   CartScreen.routeName: (ctx) => CartScreen(),
         //   OrdersScreen.routeName: (ctx) => OrdersScreen(),
          }
          );
    
  }
}
