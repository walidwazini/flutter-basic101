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
  var nameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Hello World'),backgroundColor: Colors.deepPurpleAccent,),
      body: SingleChildScrollView(
        child: Center(child: Column(
          children: [
            Text('Welcome to intro to Flutter',style: TextStyle(color: Colors.purpleAccent, fontSize: 30),),
            SizedBox(height: 10,),
            Image.network('https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80', width: 200,),
            Text('I hope you like it!',style: TextStyle(color: Colors.indigo, fontSize: 26)),
            SizedBox(height: 10,),
            Text('This is my first Flutter project'),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('This is first item'),
              SizedBox(width: 10,),
              Text('2nd Item')],),
            SizedBox(height: 12,),
            TextField(decoration: InputDecoration(hintText: 'Enter Your Name'), controller: nameEditingController,),
            TextButton(onPressed: (){
              print('Hello ${nameEditingController.text}');
              Fluttertoast.showToast(
                  msg: "This is ${nameEditingController.text}",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  // timeInSecForIosWeb: 1,
                  // backgroundColor: Colors.red,
                  // textColor: Colors.white,
                  // fontSize: 16.0
              );
            }, child: Text('Press me!'))
          ],
        )),
      )
    );
  }
}