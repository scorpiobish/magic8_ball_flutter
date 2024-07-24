import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        foregroundColor: Colors.blueGrey,
        backgroundColor: const Color.fromARGB(255, 4, 56, 99),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0))),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: 'CustomFont',
            letterSpacing: 2.0,),
            // backgroundColor: Colors.limeAccent),
        //
        title: Center(
          child: Container(
            color: Colors.teal.shade400.withOpacity(0.5),
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('Ask Me Anything!'),
            ),
          ),
        ),
      ),
      body: const Ball(),
    ));
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  // void SwitchBall() {setState(){setImage = 'images/ball${Random().nextInt(5) + 1}.png';}

  @override
  // ignore: library_private_types_in_public_api
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  // void switchBall() {
  //   setState(() {
  //     ballNumber = Random().nextInt(4) + 1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // String setImage;
    return Center(
        child: TextButton(
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
      },
      //   setState(() {
      //     var setImage = 'images/ball${Random().nextInt(4) + 1}.png';
      //   });
      // print(ballNumber);},
      child: Image.asset('images/ball$ballNumber.png'),
    ));
  }

//   void setState(Null Function() param0) {}
// }
}
