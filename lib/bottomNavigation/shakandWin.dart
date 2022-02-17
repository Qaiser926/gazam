import 'package:flutter/material.dart';
import 'package:jumia/homeScreenPage/jumiaStoreCridit/loginwithEmail.dart';

class ShakandWin extends StatefulWidget {
  const ShakandWin({Key key}) : super(key: key);

  @override
  _ShakandWinState createState() => _ShakandWinState();
}

class _ShakandWinState extends State<ShakandWin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF88C4CB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Shake to Win!",
                  style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),
                  ),
                  Text("You have to login in order to participate in shake and Win!",
                  textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // here include login form
                  FlatButton(
                    color: Colors.blue,
                      onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => loginWithEmail(),));
                      }, child: Text(
                    "LOGIN TO CONTINUE",
                    style: TextStyle(color: Colors.white),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset("images/giftanimation.gif"),
                  Icon(Icons.card_giftcard_sharp,
                  color: Colors.red,),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
                    child: Text("You can shake your phone one time every 24h.In every shake"
                        "you stand a chance to win a prize",
                    textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.privacy_tip_outlined,
                        color: Colors.blue,
                        size: 14,
                      ),
                      TextButton(onPressed: (){},
                          child: Text("TERMS AND CONDITIONS APPLY",
                            style: TextStyle(color: Colors.blue,fontSize: 12),
                          ))
                    ],
                  ),





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
