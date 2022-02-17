import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Contact Us Android"),
            Icon(Icons.cancel,
            color: Colors.white,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
              width: double.infinity,
              child: Center(child: Image.asset("images/gazamlogo.png"))),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Genrel",style: TextStyle(color: Colors.black54),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 30),
            child: Text("Email",style: TextStyle(color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("shal.gazam@gmail.com",style: TextStyle(
              color: Colors.black54
            ),),
          ),
        ],
      ),
    );
  }
}
