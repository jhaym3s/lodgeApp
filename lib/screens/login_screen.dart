import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "loginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 60,),
                Text("Welcome Back !",style: TextStyle(color: Colors.white, fontSize: 30),),
                Text("Please sign in to your account",style: TextStyle(color: Colors.white24,),),
                SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: new BoxDecoration(
                    color: Colors.white24, //new Color.fromRGBO(255, 0, 0, 0.0),
                    borderRadius:  BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                    ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                  labelText:" Email",
                    hintText:"emailName@gmail.com",
                    labelStyle: TextStyle(
                      color: Colors.white24,
                    ),
                      border: new UnderlineInputBorder(
                          borderSide: new BorderSide(
                            color: Colors.white24,
                          ),
                      ),
                  ),
                ),
              )
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
