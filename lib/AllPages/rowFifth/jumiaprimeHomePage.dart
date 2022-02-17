import 'package:flutter/material.dart';

class GazamPrim extends StatefulWidget {
  const GazamPrim({Key key}) : super(key: key);

  @override
  _GazamPrimState createState() => _GazamPrimState();
}

class _GazamPrimState extends State<GazamPrim> {


  int _value=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Text('DSTV'),
        toolbarHeight: 40,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('CONTINUE')),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SUBSCRIBE NOW",
              style: TextStyle(color: Colors.blue,fontSize: 13),

              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gazam Prime",style: TextStyle(color: Colors.black,
                      fontSize: 13,
                      ),),
                      Radio(value: 1, groupValue: _value, onChanged: (value){
                        setState(() {
                          _value=value;
                        });
                      }
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("GAZAMPAY AUTHENTICATION",
                style: TextStyle(color: Colors.blue,fontSize: 13),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: 120,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("You have to login  in order to authorize your email to be shared with this service provider.",

                        style: TextStyle(color: Colors.black,
                        fontSize: 14,
                          letterSpacing: 1

                      ),),
                      TextButton(onPressed: (){}, child:
                      Text("LOGIN TO CONTINUE"))

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text('CONTINUE',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600)),
                  color: Colors.blue,
                  minWidth: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
