import 'package:flutter/material.dart';
import 'package:mini_game/main.dart';

class winnerpage extends StatefulWidget {
  int score = 0;
  String player = '';

  winnerpage(this.score, this.player);

  @override
  State<winnerpage> createState() => _winnerpageState();
}

class _winnerpageState extends State<winnerpage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: widget.player == 'Player A Won'? Colors.blueAccent : Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.score.toString(),style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            Text(widget.player,style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
            MaterialButton(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              onPressed: () {
              Navigator.push(context,
                   MaterialPageRoute(
                    builder: (context) => GameApp()));
            },
            child: Text('Restart Game', 
            style: TextStyle(
              fontSize: 25, 
              fontWeight: FontWeight.bold),),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20)
            )
            ),
          ],
        ),
      ),
    );
  }
}
