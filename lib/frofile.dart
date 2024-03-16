import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.teal,
        body:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              CircleAvatar(radius:70,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ7UDB1m7u0Q9Xa3x0Py4xNpi5xEaBt3vNWQ&usqp=CAU'),
              ),
              Text('Isabella',style: TextStyle(color:Colors.white,fontSize:20),),
              SizedBox(height:10,),
              Text('Flutter developer',),
              SizedBox(height:20,),
          TextField(
              decoration:InputDecoration(
                contentPadding:EdgeInsets.symmetric(vertical: 20.0),
                enabledBorder:OutlineInputBorder(
                  borderSide:BorderSide(width:3,color:Colors.white),
                ),
                hintText: 'Enter your phone number',
                prefixIcon:IconButton(onPressed: (){},icon:Icon(Icons.phone_rounded)),
                filled:true,
                fillColor:Colors.white,
              ),
          ),
        SizedBox(height:20,),
          TextField(
              decoration:InputDecoration(
                contentPadding:EdgeInsets.symmetric(vertical: 20.0),
                enabledBorder:OutlineInputBorder(
                  borderSide:BorderSide(width:3,color:Colors.white),
                ),
                hintText: 'Enter your email address',
                prefixIcon:IconButton(onPressed: (){},icon:Icon(Icons.email_rounded)),
                filled:true,
                fillColor:Colors.white,
              ),
          ),
        ],

          ),
        ),
      );

  }
}
