import 'package:flutter/material.dart';
import 'package:qr_app/code.dart';
import 'package:qr_app/reg.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Code()),
                );},
                child: const Text('Login'),
              ),
              SizedBox(height: 30,),
              TextButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Reg()),
              );}, child: Text('dont have account?Register',style:TextStyle(color:Colors.white),)),
            ],
          ),
        ),
      );
  }
}


