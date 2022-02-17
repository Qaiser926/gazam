import 'package:flutter/material.dart';
import 'package:jumia/homeScreenPage/jumiaStoreCridit/loginwithEmail.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaction History",),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                child: CircleAvatar(
                  backgroundImage:AssetImage("images/gift.png"),

                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Text("Loging to see your transaction history",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,
                    color: Colors.black
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Text("Your transaction details will appear here once you're logged in.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54,
                    fontSize: 15
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 40,
                width: 150,
                child: FlatButton(
                    color: Colors.blue,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => loginWithEmail(),));
                    }, child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
