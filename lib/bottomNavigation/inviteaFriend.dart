import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InviteaFriend extends StatefulWidget {
  const InviteaFriend({Key key}) : super(key: key);

  @override
  _InviteaFriendState createState() => _InviteaFriendState();
}

class _InviteaFriendState extends State<InviteaFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Referrals",),
      ),
      body: Container(
        child: SingleChildScrollView(
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
                child: Text("Share JumiaPay and you'll get N500 when your friend spends N500 or more."
                    "Your friend also grt 20% cash back off their first purchase!",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,
                color: Colors.black54
                ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: FlatButton(
                      color: Colors.blue,
                      onPressed: (){}, child: Text(
                    "INVITE YOUR FRIENDS",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              TextButton(onPressed: (){},
                  child: Text("VIEW MY REFERRALS",
                    style: TextStyle(color: Colors.blue,
                    fontWeight: FontWeight.bold
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Text("Your friend gets 20% cashback bonus on their 1st transaction.",
                textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54,
                  fontSize: 17
                  ),
                ),
              ),
              TextButton(onPressed: (){},
                  child: Text("T&C",
                    style: TextStyle(
                        fontSize: 17,color: Colors.black54,
        
                    ),
                  )),
        
            ],
          ),
        ),
      ),
    );
  }
}

// ("images/gift.png"),
