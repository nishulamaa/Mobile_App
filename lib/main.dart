import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dice1=2;
  var dice2=3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(backgroundColor: Colors.teal,
          appBar: AppBar(backgroundColor: Colors.teal,
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.orange,
          title:Text('Dice Game',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),

          ),
          body: Column(
            children: [
              SizedBox(height: 60,),
              Text(
                'Winner: ?',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Player 1',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Player 2',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),


              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Expanded(child: Image.asset('images/dice$dice1.png')),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Expanded(child: Image.asset('images/dice$dice2.png')),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 60,),
              
              Row(
                children: [
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      '0',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                      
                    ),
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.center,
                      '1',
                                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              TextButton(
                onPressed: (){
                  setState(() {
                    dice1=3;
                    dice2=6;
                  });
                },
                child: Container(
                
                  width: 115,
                  height: 55,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 3,color: Colors.orange)
                  ),
                  child: Text('Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight(1000),
                    color: Colors.white
                  ),),
                ),
              )

            ],

          ),
        ),
    );
  }
}

