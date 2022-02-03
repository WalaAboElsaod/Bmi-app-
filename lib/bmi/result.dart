
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final bool ismale;
  final int age;
  final double res;
  Result({
    required this.age,
    required this.res,

    required this.ismale,

  });





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
              'Gender:${ismale?'Male':'Female'}',style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),
          Text(
              'Age:$age',style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),
          Text(
              'Result:${res.round()}',style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          ),
        ],


        ),
      ),
    );
  }
}
