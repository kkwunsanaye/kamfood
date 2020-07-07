import 'package:flutter/material.dart';
import 'package:kamfood/screens/signin.dart';
import 'package:kamfood/screens/signup.dart';
 
class Home extends StatefulWidget {
 @override
 _HomeState createState() => _HomeState();
}
 
class _HomeState extends State<Home> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(),
     drawer: showDrawer(),
   );
 }
 
 Drawer showDrawer() => Drawer(
         child: ListView(
       children: <Widget>[
         showHeadDraw(),
         singInMenu(),
         singUpMenu(),
       ],
     ));
 
 ListTile singInMenu() {
   return ListTile(
     leading: Icon(Icons.android),
     title: Text('Sing In'),
     onTap: () {
       Navigator.pop(context);
       MaterialPageRoute route =
           MaterialPageRoute(builder: (value) => SignIn());
       Navigator.push(context, route);
     },
   );
 }
 
 ListTile singUpMenu() {
   return ListTile(
     leading: Icon(Icons.android),
     title: Text('Sing Up'),
     onTap: () {
       Navigator.pop(context);
       MaterialPageRoute route =
           MaterialPageRoute(builder: (value) => SignUp());
       Navigator.push(context, route);
     },
   );
 }
 
 UserAccountsDrawerHeader showHeadDraw() {
   return UserAccountsDrawerHeader(
       accountName: Text('Guest'), accountEmail: Text('Please Login'));
 }
}
