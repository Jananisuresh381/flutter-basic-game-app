import 'package:flutter/material.dart';
import 'package:mini_game/winningpage.dart';

void main ()
{
  runApp(gamepge());
}

class gamepge extends StatefulWidget{
  @override
  State<gamepge> createState() => _gamepgeState();
}

class _gamepgeState extends State<gamepge> {
  double bluecard = 0;
  double redcard = 0;
  bool initial = false;
  int playerAScore = 0;
  int playerBScore = 0;

  @override
  Widget build(BuildContext context) {
    
    if (initial==false)
    {
      bluecard = MediaQuery.of(context).size.height / 2;
      redcard = MediaQuery.of(context).size.height / 2;
      initial = true;
    }
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                 setState(() {
                   bluecard = bluecard + 30;
                   redcard = redcard - 30;
                   playerAScore = playerAScore + 5;
                 }); 

                double maxheight = MediaQuery.of(context).size.height - 60;

                if ( bluecard > maxheight)
                {
                  Navigator.push(context,
                   MaterialPageRoute(
                    builder: (context) => winnerpage(
                      playerAScore, 'Player A Won')));
                }
              },
              child: Container(
                alignment: Alignment.topLeft,
                height: bluecard,
                width: double.infinity,
                color: Colors.blueAccent,
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Player A",
                      style: TextStyle(
                      fontSize: 28, 
                      fontWeight: FontWeight.bold),)),
                    Text(playerAScore.toString(), style: TextStyle(
                      fontSize: 28, 
                      fontWeight: FontWeight.bold),),
                  ],
                )
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                   redcard = redcard + 30;
                   bluecard = bluecard - 30;
                   playerBScore = playerBScore + 5;
                 }); 

                double maxheight = MediaQuery.of(context).size.height - 60;

                if ( redcard > maxheight)
                {
                  Navigator.push(context,
                   MaterialPageRoute(
                    builder: (context) => winnerpage(
                      playerBScore, 'Player B Won')));
                }
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: redcard,
                width: double.infinity,
                color: Colors.red,
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(child: Text("Player B",
                    style: TextStyle(
                      fontSize: 28, 
                      fontWeight: FontWeight.bold),)),
                    Text(
                      playerBScore.toString(), style: TextStyle(
                      fontSize: 28, 
                      fontWeight: FontWeight.bold),),
                  ],
                )
              ),
            ),
          ],
        ),
      )
    )
    );
  }
}

