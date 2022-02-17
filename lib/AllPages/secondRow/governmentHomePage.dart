import 'package:flutter/material.dart';

class GovernmentHomePage extends StatefulWidget {
  const GovernmentHomePage({Key key}) : super(key: key);

  @override
  _GovernmentHomePageState createState() => _GovernmentHomePageState();
}

class _GovernmentHomePageState extends State<GovernmentHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        title: Text('Government Payment'),
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
          padding: const EdgeInsets.only(top: 15,left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("GOVERMENT PAYMENTS",style: TextStyle(color: Colors.blue),),
              SizedBox(
                height: 5,
              ),

              Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [

                          Expanded(
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: TextField(
                                    decoration:
                                    InputDecoration(hintText: 'SELECT TO PAY NOW',
                                    suffixIcon: Icon(Icons.arrow_drop_down)
                                    ),
                                  ),
                                )),
                          ),

                          // Expanded(child: Icon(Icons.person_add_alt_1_rounded)),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
