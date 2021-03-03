import 'package:flutter/material.dart';


enum AuthMode {Login,SignUp}
class AuthenticationScreen extends StatefulWidget {
  static const routeName = "authScreen";
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  Widget inputForm({String hintText,bool showSuffixIcon,bool showLeadingIcon,String labelText, bool obscureText}){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius:  BorderRadius.circular(22),
      ),
      child: TextFormField(
        obscureText: obscureText,
        style: TextStyle(color: Colors.white,fontSize: 18,),
        cursorHeight: 18,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17, color: Colors.white),
          hintText: hintText,
          labelText: labelText,
          icon: showLeadingIcon?Icon(Icons.email):null,
          suffixIcon: showSuffixIcon?IconButton(icon: Icon(Icons.remove_red_eye_outlined), onPressed: (){}):null,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }
  GlobalKey<FormState> _formKey = GlobalKey();
  AuthMode _authMode = AuthMode.Login;

  void _switchMode(){
    if(_authMode == AuthMode.Login){
      setState(() {
      _authMode = AuthMode.SignUp;
      });
    }else {
      setState(() {
        _authMode = AuthMode.Login;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child:
            Container(
              height:deviceSize.height,
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      softWrap: true,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text:  '${ _authMode == AuthMode.Login?"Welcome Back":"Welcome to Haux"}!\n',
                          style: TextStyle(color: Colors.white, fontSize: 20),),
                          TextSpan(text:  _authMode == AuthMode.Login?'\n Please sign in to your account':"Please sign up to have an account",
                          style: TextStyle(color: Colors.white24, fontSize: 12)),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        _authMode == AuthMode.SignUp? inputForm(hintText: "Enter Full name",showLeadingIcon: false,showSuffixIcon: false, labelText:                          "Name", obscureText: true):SizedBox(),
                        _authMode == AuthMode.SignUp?SizedBox(height: 20,):SizedBox(),
                        inputForm(hintText: "coolname@gmail.com",showLeadingIcon: false,showSuffixIcon: false, labelText: "Email", obscureText: false),
                        SizedBox(height: 20,),
                        inputForm(hintText: null,showLeadingIcon: false,showSuffixIcon: true, labelText: "Password", obscureText: true),
                        _authMode == AuthMode.SignUp?SizedBox(height: 20,):SizedBox(),
                        _authMode == AuthMode.SignUp? inputForm(hintText: null,showLeadingIcon: false,showSuffixIcon: true, labelText: "Confirm Password", obscureText: true):SizedBox(),
                        _authMode == AuthMode.Login? Align(
                          alignment: Alignment.topRight,
                          child: FlatButton(
                              onPressed: (){},
                              child: Text("Forgot password?",
                                style: TextStyle(color: Colors.blue),)),
                        ): SizedBox(),
                      ],
                    ),
                    Column(

                      children: [
                        RaisedButton(
                            onPressed: (){
                              // Navigator.of(context).popAndPushNamed(LoginScreen.routeName);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 60, width: deviceSize.width/1.3,
                                  child: Center(child: Text( _authMode == AuthMode.Login?"Sign in ": "Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))
                              ),
                            ),
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(23.0),
                                side: BorderSide(color: Colors.blue)
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(_authMode == AuthMode.Login?"Do not have account?":"Already have an account?",style: TextStyle(color: Colors.white),),
                            FlatButton(onPressed: _switchMode, child: Text(_authMode == AuthMode.Login?"Sign up":"Sign in", style: TextStyle(color: Colors.blue),))
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
