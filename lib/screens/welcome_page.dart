import 'package:flutter/material.dart';
import 'package:lodge/screens/auth_screen.dart';
import 'package:lodge/screens/login_screen.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget form(String labelText){
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        color: Colors.indigo[100],
        //color: Colors.indigo[100],
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(labelText:labelText),
          ),
        ),
      ),
    );
  }
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("android/model/asset/house.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.black12,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                   // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Haux", style: TextStyle(
                            color: Colors.white,
                            fontSize: 30
                          ),),
                          Text(".",style: TextStyle(color: Colors.blue, fontSize: 30,fontWeight: FontWeight.w700),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50,top: 8),
                        child: Text("Find your place with an immersive photo experience and the most listings, including things you won't find anywhere else .", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),softWrap: true,textAlign: TextAlign.center,),
                      ),
                      SizedBox(height: 50,),
                      RaisedButton(
                        onPressed: (){
                      Navigator.of(context).popAndPushNamed(AuthenticationScreen.routeName);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60, width: deviceSize.width/1.3,
                              child: Center(child: Text("Get Stated",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))
                          ),
                        ),
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23.0),
                              side: BorderSide(color: Colors.blue)
                          )
                      ),
                      SizedBox(height: 80,)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
