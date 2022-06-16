import 'dart:async';
import 'dart:developer';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snake_game/blank_pixel.dart';
import 'package:snake_game/food_pixel.dart';
import 'package:snake_game/navneet.dart';
import 'package:snake_game/snake_pixel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


enum snake_Direction { UP , DOWN , LEFT , RIGHT }

class _HomePageState extends State<HomePage> {

  //grid dimension
  int rowSize = 10;
  int totalNumberOfSquares = 100;

  bool gameHasStarted = false;


  // user currnt Score
  int currntScore = 0;

  //Snake position
  List<int> snakePos = [
    0,
    1,

  ];

  // snake direction is initially to the right
  var currentDirection = snake_Direction.RIGHT;

  //food Position
  int foodPos = 55;

  //Start the Game
  void startGame(){
    gameHasStarted= true;
    Timer.periodic(Duration(milliseconds: 200), (timer) {
      setState((){

        //keep the snake moving!
        moveSnake();

        //check if game is over
        if(gameOver()){
          timer.cancel();
          //Display a massage to the user
          showDialog(context: context, barrierDismissible: false, builder: (context){
            return AlertDialog(
              title: Text("Game Over"),
              content: Center(
                child: Column(
                  children: [
                    Text("Your score is: " + currntScore.toString()),
                    // TextField(
                    //   decoration: InputDecoration(hintText: "Enter name"),
                    // ),

                    SizedBox(height: 20,),
                    MaterialButton(
                      onPressed: (){
                        Navigator.pop(context);
                        submitScore();
                        newGame();
                      },
                      child: Text("Play Again"),
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),

              // actions: [
              //   MaterialButton(
              //       onPressed: (){
              //         Navigator.pop(context);
              //         submitScore();
              //         newGame();
              //       },
              //     child: Text("Submit"),
              //     color: Colors.amber,
              //   ),
              // ],
            );
          });
        }
      });
    });
  }

  void submitScore() {
    //add data to Firebase
  }

  void newGame(){
    setState((){
      snakePos = [
        0,
        1,
      ];
      foodPos=38;
      currentDirection = snake_Direction.DOWN;
      gameHasStarted = false;
      currntScore = 0;
    });

  }


  void eatFood(){

    currntScore++;
    //making sure the good is not where the snake is
    while(snakePos.contains(foodPos)){
      foodPos = Random().nextInt(totalNumberOfSquares);
    }
  }



  void moveSnake(){
    switch(currentDirection){
      case snake_Direction.RIGHT:
        {
          //add a new head
          //if snake is at the right wall, need to re-adjust
          if(snakePos.last % rowSize == 9){
            snakePos.add(snakePos.last+1-rowSize);
          }
          else{
            snakePos.add(snakePos.last+1);
          }
        }

        break;
      case snake_Direction.LEFT:
        {
          //add a new head
          if(snakePos.last % rowSize == 0){
            snakePos.add(snakePos.last-1+rowSize);
          }
          else{
            snakePos.add(snakePos.last-1);
          }

        }

        break;
      case snake_Direction.UP:
        {
          //add a new head
          if(snakePos.last < rowSize){
            snakePos.add(snakePos.last - rowSize+ totalNumberOfSquares);
          }else{
            snakePos.add(snakePos.last - rowSize);
          }

        }

        break;
      case snake_Direction.DOWN:
        {
          //add a new head
          if(snakePos.last + rowSize > totalNumberOfSquares){
            snakePos.add(snakePos.last + rowSize - totalNumberOfSquares);
          }else{
            snakePos.add(snakePos.last + rowSize);
          }

        }
        break;
      default:
    }

    //snake is eating food
    if(snakePos.last == foodPos){
      eatFood();
    }else{
      //remove the tail
      snakePos.removeAt(0);
    }

  }

  //game over
  bool gameOver(){
    //the game is over when the snake runs into itself
    //this is occures when there is a duplicate in the snakePos list

    //this list is the body of the snake (no hade)
    List<int> bodySnake = snakePos.sublist(0,snakePos.length -1);
    if(bodySnake.contains(snakePos.last)){
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: screenWidth>428?428:screenWidth,
        child: Column(
          children: [
            //High scores
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //user current score
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Current Score", style: TextStyle(fontSize: 30),),
                      Text(currntScore.toString(),style: TextStyle(fontSize: 30),),
                    ],
                  ),


                  //highscores, top5 or top10
                  //Text("Highscores..")
                ],
              ),
            ),

            //game grid
            Expanded(
              flex: 3,
              child: GestureDetector(

                onVerticalDragUpdate: (details) {
                  if(details.delta.dy < 0 && currentDirection != snake_Direction.DOWN){


                    currentDirection = snake_Direction.UP;
                  }
                  else if(details.delta.dy > 0 && currentDirection != snake_Direction.UP){


                    currentDirection = snake_Direction.DOWN;
                  }
                },
                onHorizontalDragUpdate: (details){
                  if(details.delta.dx < 0 && currentDirection != snake_Direction.RIGHT){


                    currentDirection = snake_Direction.LEFT;
                  }
                  else if(details.delta.dx > 0 && currentDirection != snake_Direction.LEFT){


                    currentDirection = snake_Direction.RIGHT;
                  }
                },

                child: GridView.builder(
                    itemCount: totalNumberOfSquares,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: rowSize),
                    itemBuilder: (context,index){
                      if(snakePos.contains(index)){
                        return SnakePixel();
                      }
                      else if(foodPos == index){
                        return FoodPixel();
                      }
                      else{
                        return const BlankPixel();
                      }

                    }
                ),
              ),
            ),

            //play button
            Expanded(
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: MaterialButton(
                        child: Text("PLAY",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        color: gameHasStarted ? Colors.grey : Colors.amber,
                        onPressed: gameHasStarted ? () {} : startGame,
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  //work by navneet
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => const Navneet()),
                      );
                    },
                    child: Text(
                        "Work by Navneet",
                        style: GoogleFonts.poiretOne(
                          textStyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF343434),
                          ),
                        )
                    ),
                  ),

                  SizedBox(height: 10,),



                  IconButton(
                    onPressed: (){

                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => const Navneet()),
                      );

                    },
                    icon: SvgPicture.asset(
                      'assets/navneet_logo.svg',
                      height: 30,
                      width: 30,
                      //fit: BoxFit.cover,
                    ),
                  )



                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
