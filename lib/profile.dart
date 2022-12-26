import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigationwithdata/main.dart';

class Profile extends StatelessWidget {
  String name ,email,password ;
  Profile({required this.name , required this.email , required this.password});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer : Drawer() ,
        appBar: AppBar(
        title: Text("Pass Data")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text('UserName : ${name.isNotEmpty ? name : null}' , style: TextStyle(
              fontSize: 20 ,
              color: Colors.black
            ),),
             Text('Email : ${email.isNotEmpty ? email : null}' , style: TextStyle(
              fontSize: 20 ,
              color: Colors.black
            ),),
               Text('Password : ${password.isNotEmpty ? password : null}' , style: TextStyle(
              fontSize: 20 ,
              color: Colors.black
            ),),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
               Navigator.push(context ,MaterialPageRoute(builder: ((context) => MyApp())));
            }, child: Text('Back To Register'))
          ]),
        ),),
        
    );
  }
}