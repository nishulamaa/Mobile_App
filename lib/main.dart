
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var dice1 = 2;
  var dice2 = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,

        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.orange,
          title: const Text(
            'Dice Game',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: Column(
          children: [
            const SizedBox(height: 60),

            const Text(
              'Winner: ?',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            // Player names
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'Player 1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Player 2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Dice
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),

                    // Player 1 dice
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          dice1 = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset(
                        'images/dice$dice1.png',
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),

                    // Player 2 dice
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          dice2 = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset(
                        'images/dice$dice2.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // Scores
            Row(
              children: [
                Expanded(
                  child: Text(
                    '$dice1',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Expanded(
                  child: Text(
                    '$dice2',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Start button
            TextButton(
              onPressed: () {
                setState(() {
                  dice1 = Random().nextInt(6) + 1;
                  dice2 = Random().nextInt(6) + 1;
                });
              },
              child: Container(
                width: 115,
                height: 55,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 3,
                    color: Colors.orange,
                  ),
                ),
                child: const Text(
                  'Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



