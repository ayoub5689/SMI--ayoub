import 'package:asem/screens/categories.dart';
import 'package:asem/screens/login.dart';
import 'package:asem/screens/register.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to flutter',
      home : MyLogin(),
      routes: {
        '/login':(context)=>MyLogin(),
        '/register':(context)=>MyRegister(),
        '/categories':(context)=>Categories(),
      },
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child :Text('I am rish'),
//         ),
//         backgroundColor: Colors.deepPurple[400],
//       ),
//       backgroundColor: Colors.deepPurple[100],
//       body: Center(
//         child:Image(image: AssetImage('images/3.png'),) ,
//       ),
//     ),
//   ));
// }
