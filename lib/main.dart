import 'package:flutter/material.dart';
import 'package:jumia/bottomNavigation/bottom_navigationOtheritem/bottomNavigationFile.dart';
import 'package:jumia/jumiaPrimePage.dart';

import 'package:jumia/theme/color.dart';

class item{
  Widget image;
  bool selected;
  item(this.image,this.selected);
}

main(){
  runApp(jumia());
}
class jumia extends StatefulWidget {

  @override
  _jumiaState createState() => _jumiaState();
}

class _jumiaState extends State<jumia> {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(

      appBar: AppBar(

        elevation: 0,
        leading: Icon(Icons.menu,color:JColor.normalTextColor),
        backgroundColor: Colors.white30,
        toolbarHeight: 40,
        // title:Text('JUMIA',style: TextStyle(fontSize: 20,color:JColor.normalTextColor,fontWeight: FontWeight.w500),),
        actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.search,color:JColor.normalTextColor),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.person_outline_outlined,color:JColor.normalTextColor),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.shopping_cart_outlined,color:JColor.normalTextColor),
        ),
        ],
      ),
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(),
      ),
      // body:SignInpage(),
      // body:JumiaPrimePage(),
      // body:MainHomeMTNPage(),
      // body: ElectricityHomePage(),
      // body: MainHomeMTNPage(),
      
      // ///////////////////
      // body: HomePage(),
      body:navigation(),
 
        // body:ElectricityHomePage(),
        // body:InternetHomePage(),
        // body: InternationalTopUpPage(),
        // body:LoanHomePage(),
        // body:BusBookingHomePage(),
        // body:FlightAirPeasePage(),

       
      ),
    );
  }
}
