import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.teal,
        body:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text('Login',style:TextStyle(color:Colors.white,fontSize:25)),
              SizedBox(height: 20,),
              TextField(
                decoration:InputDecoration(
                  contentPadding:EdgeInsets.symmetric(vertical: 20.0),
                  enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(width:3,color:Colors.white),
                  ),

                  hintText:'Enter your Roll no',
                  hintStyle:TextStyle(color:Colors.white),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration:InputDecoration(
                  contentPadding:EdgeInsets.symmetric(vertical: 20.0),
                  enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(width:3,color:Colors.white),
                  ),

                  hintText:'Enter your password',
                  hintStyle:TextStyle(color:Colors.white),
                )
              ),
              SizedBox(height: 25,),
              TextButton(
                style: TextButton.styleFrom(
                  side: BorderSide(
                    color: Colors.white,
                  ),
                  primary:Colors.white,
                ),
                onPressed: () {},
                child: const Text('Login'),
              ),
              SizedBox(height: 30,),
              TextButton(onPressed: (){}, child: Text('dont have account?Register',style:TextStyle(color:Colors.white),)),
            ],
          ),
        ),
      ),
    );
  }
}


