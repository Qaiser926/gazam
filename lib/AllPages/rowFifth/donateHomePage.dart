import 'package:flutter/material.dart';

class DonatHomePage extends StatefulWidget {
  const DonatHomePage({Key key}) : super(key: key);

  @override
  _DonatHomePageState createState() => _DonatHomePageState();
}

class _DonatHomePageState extends State<DonatHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Text('Donate'),
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
              Text("DONATIONS",style: TextStyle(color: Colors.blue),),
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
                                    InputDecoration(hintText: 'SELECT ORGANIZATION',
                                        suffixIcon: Icon(Icons.arrow_drop_down,
                                        color: Colors.black,)
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
