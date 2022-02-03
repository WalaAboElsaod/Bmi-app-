import 'dart:math';

import 'package:bmi_app/bmi/result.dart';
import 'package:flutter/material.dart';



class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height=100;
  int wt=30;
  int age=10;
  bool isMale=true;
  double result =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Bmi Calculator'
        ),
        centerTitle: true,
      backgroundColor: Colors.black,
      ),
      bottomSheet: BottomSheet(
        backgroundColor: Colors.deepOrange,
        builder: (BuildContext context){
          return GestureDetector(
            onTap: (){
              result=wt/pow(height/100, 2);
              print(result);
              navigateTo(context, Result(res: result,age: age,ismale: isMale,));
            },
            child: Container(
              alignment:  Alignment.center,
              height: 45,
              color: Colors.pink,
              width: double.infinity,
              child: Text('CALCULATE',style: TextStyle(
                color: Colors.white
                    ,fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
            ),
          );
        },
        onClosing:(){} ,
      ),
      body:Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(

                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      width: double.infinity,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:[
                          BoxShadow(
                            spreadRadius: 3,
                            color:isMale? Colors.pink:Colors.white

                          ),

                        ]
                       , color: Colors.blueGrey[900],


                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male,size: 100,color: Colors.white,),
                          Text('Male',style: TextStyle(
                            color: Colors.white24,fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),


                        boxShadow:[
                          BoxShadow(
                              spreadRadius: 3,
                              color:isMale? Colors.white:Colors.pink
                          ),

                        ]
                        , color: Colors.blueGrey[900],


                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female,size: 100,color: Colors.white,),
                          Text('Female',style: TextStyle(
                              color: Colors.white24,fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20.0),
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow:[
                  BoxShadow(
                      spreadRadius: 1,
                      color: Colors.white

                  ),

                ]
                , color: Colors.blueGrey[900],


              ),

              child: Column(
                children: [
                  Text('Height',style: TextStyle(
                      color: Colors.white24,fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${height.round()}',style: TextStyle(
                          color: Colors.white,fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),),
                      Text('cm',style: TextStyle(
                          color: Colors.white24,fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  Slider(value:height ,
                      activeColor: Colors.pink,
                      min: 100,
                      max: 200,
                      divisions: 100,

                      onChanged: (val)
                      {
                        setState(() {
                          height=val;

                        });
                      }),
                ],

              ),
            ),
          ),
          Expanded(
            child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
    Expanded(

    child: Container(
    margin: EdgeInsets.all(20.0),
    width: double.infinity,

    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    boxShadow:[
    BoxShadow(
    spreadRadius: 1,
    color: Colors.white

    ),

    ]
    , color: Colors.blueGrey[900],


    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('WEIGHT',style: TextStyle(
        color: Colors.white24,fontSize: 30,
    fontWeight: FontWeight.bold
    ),)
      ,Text('$wt',style: TextStyle(
          color: Colors.white,fontSize: 30,
          fontWeight: FontWeight.bold
      ),),
      SizedBox(
        height: 20,
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: (){
            setState(() {
              wt--;
              if(wt==0){
                wt=1;
              }
            });

          },backgroundColor: Colors.pink,child: Icon(Icons.remove),
            heroTag: 1,

          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(onPressed: (){
            setState(() {
              wt++;

            });

          },backgroundColor: Colors.pink,child: Icon(Icons.add),
            heroTag: 2,

          ),
        ],
      ),

    ],
    ),
    ),
    ),
    Expanded(
    child: Container(
    margin: EdgeInsets.all(20.0),
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),


    boxShadow:[
    BoxShadow(
    color: Colors.white

    ),

    ]
    , color: Colors.blueGrey[900],


    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('AGE',style: TextStyle(
    color: Colors.white24,fontSize: 30,
    fontWeight: FontWeight.bold
    ),) ,
      Text('$age',style: TextStyle(
    color: Colors.white,fontSize: 30,
    fontWeight: FontWeight.bold
    ),),
      SizedBox(
        height: 20,
      ),

      Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
            FloatingActionButton(onPressed: (){
                 setState(() {
                   age--;
                   if(age==0){
                     age=1;
                   }

                 });
            },backgroundColor: Colors.pink,child: Icon(Icons.remove),
              heroTag: 3,
            ),
            SizedBox(
              width: 20,
            ),
            FloatingActionButton(onPressed: (){
              setState(() {
                age++;
              });

            },backgroundColor: Colors.pink,child: Icon(Icons.add),
              heroTag: 4,

            ),
        ],
      ),
    ],


    ),


    ),
    ),

    ],
    ),
          ),
          SizedBox(
            height: 40,
          ),

        ],

      ),

    );
  }
  void navigateTo(context, Widget, {isSearch}) => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Widget),
  );
}
