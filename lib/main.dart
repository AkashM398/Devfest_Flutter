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
      body: Container(
        color: Color(0xFF121214),
        child: Stack(
          children: <Widget>[
            CustomMadeClipper(),
            AppBar(title: Text('DevFest Chennai', 
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.w400, 
            fontFamily: 'Product_Sans',
            fontSize: 25,)
            ),
              backgroundColor: Colors.transparent,
              centerTitle: true,
            ),

          ],
        ),
      ),
    );
  }
}


class CustomMadeClipper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: 450,
        width: 400,
        color: Color(0xFF202125),
      ),
      clipper: CustomBlueClipper(),
    );
  }
}

class CustomBlueClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height - 50);

    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height - 50.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);


    path.lineTo(size.width, size.height - 30);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}