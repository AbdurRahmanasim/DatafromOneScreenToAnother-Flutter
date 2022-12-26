
import 'package:flutter/material.dart';
import 'package:navigationwithdata/profile.dart';



void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhome()
    );
    
  }
}



class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {


  TextEditingController _name = new TextEditingController() ;
  TextEditingController _email = new TextEditingController() ;
  TextEditingController _password = new TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      drawer: Drawer(),
        appBar: AppBar(
          title: const Text("Pass Data"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("REGISTRATION\n        FORM" ,style: TextStyle(
                  fontSize: 35 ,
                  fontWeight: FontWeight.bold
                ),) ,
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                      hintText: "Enter UserName",
                      filled: true,
                      border: const OutlineInputBorder() ,
          
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                     controller: _email,
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      filled: true,
          
                      border: OutlineInputBorder() ,
          
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                     controller: _password,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Enter Password",
                      border: OutlineInputBorder() ,
          
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context ,MaterialPageRoute(builder: ((context) => Profile(name: _name.text, email : _email.text , password: _password.text))));
                }, child: Text("Register"))
              ],
            ),
          ),
        ),
        
    );
  }
}