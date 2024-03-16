import 'package:flutter/material.dart';
import 'package:qr_app/button.dart';
import 'package:qr_app/image.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.teal,
        body:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              CircleAvatar(radius:70,child:Icon(Icons.person,size:70),),
              QrImage(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
              ),
              SizedBox(height: 30,),
              TextButton(
              onPressed: () {
              Navigator.push(
             context,
              MaterialPageRoute(builder: (context) => Button()),);
             },
                  child: Text('Scan'),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white)),
                    primary: Colors.white,
                    ),
                  ),
            ],
          ),
        ),
      );
  }
}
