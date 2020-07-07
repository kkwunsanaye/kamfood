import 'package:flutter/material.dart';
import 'package:kamfood/screens/home.dart';
 
void main() {
 runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Kam Food',
     home: Home(),
   );
 }
}
