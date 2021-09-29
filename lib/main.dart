import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomeCardPage(),
    );
  }
}
class MyHomeCardPage extends StatelessWidget{



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title:'FirstCard',
        home:Scaffold(
            appBar: AppBar(
              title: const Text('FirstCard'),
            ),
            body:Container(
                alignment: Alignment.center,
                child:Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      top: 250,
                    child: Container(
                      width: 250,
                      height: 180,
                      decoration: new BoxDecoration(
                        color: Colors.pinkAccent,
                        border: Border.all(
                          color: Colors.pinkAccent,
                            width: 3.0
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0) //
                        ),
                      ),

                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text(
                          "Majda EL MAROUNI",
                          style: TextStyle(color: Colors.white),
                    ),
                  Text("elmarounimajda@gmail.com",
                      style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                      ),
                      Text("twitter: xxxx", style: TextStyle(color: Colors.white))
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  )
                  ],
                ),
                    ),),
                    Positioned(
                      top: 190,
                    child:Container(
                      width: 100,
                      height: 100,
                      decoration: new BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage('https://pixabay.com/get/g0ed4b1215fb4d7307fd63037557baa59fc3c7aa345eda899e371a63b3cd3629ee0dd549940c46e3d42ba3da589192701_1920.jpg')

                        ),
                        border: Border.all(
                          color: Colors.pinkAccent,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),),

                  ],
                )
            )
        )

    );
  }

}


