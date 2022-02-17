
import 'package:flutter/material.dart';
import 'package:jumia/homeScreenPage/airTimePage/airTimeHomePage.dart';
import 'dart:ui';

import 'package:jumia/homeScreenPage/jumiaStoreCridit/loginwithEmail.dart';
class FirstJumiaPrimeContainerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1970B6),
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        title:Image.asset('images/jumialogo.png',width: 100),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.print),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.restart_alt_outlined)),
          ),
        ],
      ),
  
      body:Container(
      child: ListView(children: [
        Container(
          color: Colors.blue,
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.05,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => loginWithEmail(),));
                },
                child: Container(
                  child: Row(
                    children:[
              
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Login to see your wallet balance',style:TextStyle(color: Colors.white)),
                      ),
                    ]
                  ),
              
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => loginWithEmail(),));
                    },
                    child: Text('SIGN IN',style:TextStyle(color: Colors.white,fontSize:12,fontWeight:FontWeight.w500))),
                ),
              )
            ],
          ),
        ),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AirTimeHomePage(),));
        }, child: Text('airtime'))
      ],),
      )
    );
  }
}