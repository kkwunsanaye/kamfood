import 'package:flutter/material.dart';
import 'package:kamfood/utility/my_style.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: <Color>[Colors.white, MyStyle().priaryColor],
          center: Alignment(0, 0.3),
          radius: 1.0,
        )),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MyStyle().showLogo(),
                MyStyle().mySizebox(),
                MyStyle().showTitle('Kam Food'),
                MyStyle().mySizebox(),
                userForm(),
                MyStyle().mySizebox(),
                passwordForm(),
                MyStyle().mySizebox(),
                loginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton() => Container(
        width: 250.0,
        child: RaisedButton(
          color: MyStyle().darkColor,
          onPressed: () {},
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  Widget userForm() => Container(
      width: 250.0,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.account_box,
            color: MyStyle().darkColor,
          ),
          labelStyle: TextStyle(color: MyStyle().darkColor),
          labelText: 'User :',
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().darkColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().priaryColor)),
        ),
      ));

  Widget passwordForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 250.0,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: MyStyle().darkColor,
                  ),
                  labelStyle: TextStyle(color: MyStyle().darkColor),
                  labelText: 'Password :',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyStyle().darkColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyStyle().priaryColor)),
                ),
              )),
        ],
      );
}
