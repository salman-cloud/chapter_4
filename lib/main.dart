import 'package:flutter/material.dart';
import 'dart:math';
/* notes for 3rd chapter
stateless widget don't allow us to rebuild the screen
all widgets accept ternary operators
* */

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x =5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is $x')),
            const SizedBox(height: 20,),
            Container(
              height: 400,
              width: 300,

              decoration: BoxDecoration(
                color:  Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Padding(
                padding: const EdgeInsets.all(15),
                child:x == 5?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.done,color: Colors.green,size: 35,),
                    const SizedBox(height: 15),
                    Text('congroculations you have won the lottry your number is  $x \n ',textAlign: TextAlign.center,),
                  ],
                )
                    :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.error,color: Colors.red,size: 35,),
                    const SizedBox(height: 15),
                    Text('Better luck next time your number is  $x \ntry again ',textAlign: TextAlign.center,),
                  ],
                ),
              ),
            )
          ],

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x=random.nextInt(10);
            print(x);
            setState(() {

            });

          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}



