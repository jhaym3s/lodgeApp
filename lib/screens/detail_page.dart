import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/info_provider.dart';

class DetailPage extends StatefulWidget {
  static const routeName = "detailPage";
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final filteredId = ModalRoute.of(context).settings.arguments as String;
    final info = Provider.of<InfoProvider>(context).findById(filteredId);
    return Scaffold(
      appBar: AppBar(
        title: Text(info.landLordName),
        actions: [
          IconButton(icon: Icon(Icons.message, color: Colors.white,), onPressed: null)
        ],
      ),
      body: ListView(
        children: [
        Stack(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              color: Colors.black45,
            ),

            Center(
              child: Container(
                  width: 300.00,
                  height: 400.00,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:NetworkImage(info.imageUrl),
                      fit: BoxFit.fitWidth,
                    ),
                  )),
            ),
          ],
        ),
        Text("More from ${info.landLordName}",style: TextStyle(fontSize: 25),),
        Row(
          children: [],
        ),
        SizedBox(height: 180,),
        Padding(
          padding: EdgeInsets.all(15),
          child: Container(
          margin: EdgeInsets.only(bottom: 12),
          height: 85,
          child: RaisedButton(
          onPressed: null,
          elevation: 0,
          child: Text(
          "Start to de chat",
          style: TextStyle(
          color: Colors.white,
          letterSpacing: 1.3,
          fontFamily: "Gilroy",
          fontWeight: FontWeight.bold,
          fontSize: 23
          ),
          ),
          color: Color(0xff3657E0),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)

          ),

          ),

          ),
        ),
]
      ),
    );
  }
}
