import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



enum AuthMode  {signUp,login}
class LoginScreen extends StatefulWidget {
  static const routeName = "loginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget inputForm({String hintText,bool showSuffixIcon,bool showLeadingIcon,String labelText}){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius:  BorderRadius.circular(22),
      ),
      child: TextFormField(
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
  TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
   final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 70,left: 10,right: 10,bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                   softWrap: true,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Welcome Back!\n', style: TextStyle(color: Colors.white, fontSize: 20),),
                      TextSpan(text: '\n Please sign in to your account', style: TextStyle(color: Colors.white24, fontSize: 12)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    inputForm(hintText: "Enter Full name",showLeadingIcon: false,showSuffixIcon: false, labelText: "Name"),
                    SizedBox(height: 20,),
                inputForm(hintText: "coolname@gmail.com",showLeadingIcon: false,showSuffixIcon: false, labelText: "Email"),
                SizedBox(height: 20,),
                inputForm(hintText: null,showLeadingIcon: false,showSuffixIcon: true, labelText: "Password"),
                    Align(
                      alignment: Alignment.topRight,
                      child: FlatButton(
                          onPressed: (){},
                          child: Text("Forgot password",
                          style: TextStyle(color: Colors.blue),)),
                    ),
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
                              child: Center(child: Text("Sign in ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))
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
                        Text("Don't have an account?",style: TextStyle(color: Colors.white)),
                        FlatButton(onPressed: (){}, child: Text("Sign up instead",style: TextStyle(color: Colors.blue),)),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
