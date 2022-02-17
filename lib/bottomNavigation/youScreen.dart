import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jumia/homePage.dart';
import 'package:jumia/homeScreenPage/jumiaStoreCridit/loginwithEmail.dart';
import 'package:share/share.dart';

import 'bottom_navigationOtheritem/contactUs.dart';
import 'bottom_navigationOtheritem/countrySelection.dart';
import 'bottom_navigationOtheritem/termCondition.dart';


class personalInfo extends StatefulWidget {
  const personalInfo({Key key}) : super(key: key);

  @override
  _personalInfoState createState() => _personalInfoState();
}

class _personalInfoState extends State<personalInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Container(
             height: MediaQuery.of(context).size.height*.3,
             width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
            ),
             child: Column(
               children: [
                 SizedBox(
                   height: 40,
                 ),
                 Text("Join Gazam",style: TextStyle(color: Colors.white,
                 fontSize: 20,fontWeight: FontWeight.bold
                 ),),
                 Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20),
                   child: Text("and get access to unique promotions on airtime and bills payments!",
                   textAlign: TextAlign.center,
                     style: TextStyle(color: Colors.white),
                   ),
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 FlatButton(
                   height: 30,
                   color: Colors.white,
                     onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => loginWithEmail(),));
                     },
                     child: Text("SIGN UP/LOG IN",
                     style: TextStyle(color: Colors.blue,
                     fontSize: 10
                     ),
                     ))
               ],
             ),
           ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 15),
                child: Text("PREFRENCES",
                style: TextStyle(color: Colors.blue,
                fontSize: 12
                ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CountrySelection()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:[BoxShadow(
                      blurRadius: 10,
                        offset: Offset(2,2),
                        color: Colors.black.withOpacity(0.1),
                    )]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.vpn_lock,
                          color: Colors.grey,
                          size: 17,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Country Selection"),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 15),
                child: Text("HELP",
                  style: TextStyle(color: Colors.blue,
                      fontSize: 12
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow:[BoxShadow(
                      blurRadius: 10,
                      offset: Offset(2,2),
                      color: Colors.black.withOpacity(0.1),
                    )]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.headset_mic_rounded,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Contact Us"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.help,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("FAQ"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TermCondition()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.save_outlined,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Terms & Conditions"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: (){
                          Share.share("jumiapay.feedback.ng@jumial.com");
                          //Share.share("https://play.google.com/store/apps/details?id=com.instructivetech.testapp");
                          },
                        child: Row(
                          children: [
                            Icon(
                              Icons.message_rounded,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Suggest more services"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.mobile_friendly_sharp,
                            color: Colors.grey,
                            size: 17,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("App Version 5.0.2"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
