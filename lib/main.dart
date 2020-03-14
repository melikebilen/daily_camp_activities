import 'package:daily_camp_activities/screens/activities_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/counselor_login_screen.dart';
import './screens/login_screen.dart';
import './screens/admin_login_screen.dart';
import './screens/edit_activities_screen.dart';
import './screens/add_activity_screen.dart';
import './screens/chosen_bunks_campers_screen.dart';
import './screens/camper_daily_activity_screen.dart';

import './providers/Activities.dart';
import './providers/Campers.dart';
import './providers/Counselors.dart';
import './providers/Bunks.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Activities(),  
        ),
         ChangeNotifierProvider.value(
          value: Campers(),  
        ),
          ChangeNotifierProvider.value(
          value: Counselors(),  
        ),
          ChangeNotifierProvider.value(
          value: Bunks(),  
        )
      ],
    child:
    MaterialApp(
          title: 'Daily Camp Activities',
          theme: ThemeData(
            primarySwatch: Colors.pink,
            accentColor: Colors.amber,
            fontFamily: 'Lato',
          ),
          home: LoginScreen(),
          routes: {
            CamperDailyActivityScreen.routeName:(ctx)=> CamperDailyActivityScreen(),
            CounselorLoginScreen.routeName: (ctx) => CounselorLoginScreen(),
            ActivitiesScreen.routeName: (ctx)=> ActivitiesScreen(),
            AdminLoginScreen.routeName: (ctx)=> AdminLoginScreen(),
            EditActivitiesScreen.routeName: (ctx)=> EditActivitiesScreen(),
            AddActivityScreen.routeName: (ctx)=> AddActivityScreen(),
            ChosenBunksCampersScreen.routeName:(ctx)=>ChosenBunksCampersScreen(),
          },
        
          ));
    
  }
}
