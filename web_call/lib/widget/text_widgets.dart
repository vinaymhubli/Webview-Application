

import 'package:flutter/material.dart';

Widget appbartitle(BuildContext context){
  return RichText(
  text: TextSpan(
    text: 'BO',
    style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),
    children: const <TextSpan>[
      TextSpan(text: 'O', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.orange)),
      TextSpan(text: 'ST',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white)),
      TextSpan(text: '  MY',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white)),
      TextSpan(text: 'SITES',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.orange)),


    ],
  ),
);
}