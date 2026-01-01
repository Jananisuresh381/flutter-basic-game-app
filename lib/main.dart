import 'package:flutter/material.dart';
import 'package:mini_game/gamepage.dart';

void main() {
  runApp(GameApp());
}

class GameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            double halfHeight = constraints.maxHeight / 2;

            return Stack(
              alignment: Alignment.center,
              children: [
                // Background divided into two halves
                Column(
                  children: [
                    Container(
                      height: halfHeight,
                      color: Colors.blue,
                    ),
                    Container(
                      height: halfHeight,
                      color: Colors.red,
                    ),
                  ],
                ),

                // Circular MaterialButton exactly at center
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => gamepge()));
                  },
                  color: Colors.white,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(40),
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
