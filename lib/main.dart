import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Day 1',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var nameInput = TextEditingController();
  var logoImage = 'assets/images/flutter-1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello World'),backgroundColor: Colors.deepPurple,),
        body: SingleChildScrollView(
          child: Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(child: Text('Welcome to Flutter',
                  style: TextStyle(color: Colors.red, fontSize: 30),),
                  decoration: BoxDecoration(border: Border.all(color: Colors.white38)),),
                SizedBox(height: 10,),
                Image.asset(logoImage,width: 260,),
                Text('I hope you like it! '),
                SizedBox(height: 10,),
                Text('This is first Flutter App'),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('This is first item'),
                    SizedBox(width: 20,),
                    Text('This is second item'),
                  ],),
                SizedBox(height: 10,),
                TextField(decoration: InputDecoration(hintText: 'Enter Your Name'),
                  controller: nameInput ,
                ),
                TextButton(onPressed: (){
                  // print('Hello ${nameInput.text}');
                  Fluttertoast.showToast(
                      msg: "This is ${nameInput.text}",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                  );
                }, child: Text('Click Here!'))
              ],
            ),
          )),
        )
    );
  }
}