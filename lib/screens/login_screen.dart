import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sensordataflutter/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String value='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[850],
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Login fields
            Container(
              height: 250,
              width: 300,
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              decoration: BoxDecoration(
                //color: Colors.grey[800],
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Login text
                  Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.0,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10,),

                  // Username
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    onChanged: (text){
                      value = text;
                    },
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 10,),

                  // Password
                  TextFormField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 20,),

                  // Button
                  ButtonTheme(
                    minWidth: 150.0,
                    child: ElevatedButton(
                        onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen(value: value,),
                            ));
                          },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.grey[850],
                          textStyle: TextStyle(
                            fontSize: 15,
                          )
                        ) ,
                        child: Text(
                            'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  )
                ],
              )
            )
          ],
        )
      ),
    );
  }
}