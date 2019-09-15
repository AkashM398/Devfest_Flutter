import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  return runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ProductSans'
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121214),
      body: CustomScrollView(
        slivers: <Widget>[
          
          SliverAppBar(
            expandedHeight: 350.0,
            backgroundColor: Color(0xFF1F2124),
            floating: false,
            pinned: true,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
                      background: ProfileCard()),
            title: Text(
              'Devfest Chennai',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Product_Sans',
                fontSize: 25,
                fontStyle: FontStyle.normal,
              ),
              ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50),
              ),
            ),
          ),
        ],),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xFF1F2124),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        child: Container(
          padding: EdgeInsets.only(top:100.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/banner_dark.png',
                height: 200,
                width: 350,
              ),
            ],
          ),
        ));
  }
}