import 'package:flutter/material.dart';
import 'package:lodge/screens/grid_widget.dart';
import 'package:lodge/widgets/custom_drawer.dart';

class MainDisplayPage extends StatefulWidget {
  @override
  _MainDisplayPageState createState() => _MainDisplayPageState();
}

class _MainDisplayPageState extends State<MainDisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      drawer: CustomDrawer(),
      body: GridWidget(),
    );
  }
}
