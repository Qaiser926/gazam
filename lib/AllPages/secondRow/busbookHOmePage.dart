import 'package:flutter/material.dart';

class BusBookingHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bus Booking'),
          centerTitle: true,
          actions: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.cancel),
                ))
          ],
        ),
        body: Container(
          child: ListView(
            children: [
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'SELECT OPERATOR',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                height: 1.5,
                                letterSpacing: 0.6),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.14,
                        color: Colors.grey.withOpacity(0.1),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'BUS TICKET',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                            ),
                            Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'ABC transport',
                                      style: TextStyle(),
                                    ),
                                    Icon(Icons.search),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'SELECT ORIGIN',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                height: 1.5,
                                letterSpacing: 0.6),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.14,
                        color: Colors.grey.withOpacity(0.1),
                        child: Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Oring',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    )),
                                Icon(Icons.search),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'SELECT DESTINATION',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                height: 1.5,
                                letterSpacing: 0.6),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.14,
                        color: Colors.grey.withOpacity(0.1),
                        child: Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Destination',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    )),
                                Icon(Icons.search),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text('NEXT',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1)),
                        color: Colors.blue,
                        minWidth: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/starlogo.jpg',
                      width: 90,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                          'Easy ABe Transportation Booking with cashback each time',
                          style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Booking your bus ticket is alway a breeze with jumai pay nigadljksf',
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 1,
                              )),
                    ),
                  ],
                ),
              ),
               Card(
                child: Column(
                  children: [
                 
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'save money',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                                letterSpacing: 1,
                                fontWeight: FontWeight.w900)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Booking your bus ticket is alway a breeze with jumai pay nigadljksf',
                          style: TextStyle(
                              
                              letterSpacing: 1,
                              )),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'save Time - instant Bus ticket booking and pay ment',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[800],
                                letterSpacing: 1,
                                fontWeight: FontWeight.w900)),
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Booking your bus ticket is alway a breeze with jumai pay nigadljksf',
                          style: TextStyle(
                              
                              letterSpacing: 1,
                              )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
