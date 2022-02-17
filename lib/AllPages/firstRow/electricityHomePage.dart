import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElectricityHomePage extends StatefulWidget {
  const ElectricityHomePage({Key key}) : super(key: key);

  @override
  _ElectricityHomePageState createState() => _ElectricityHomePageState();
}


Widget radioItem = Con().mtn();

class Con {
  Widget mtn() {
    return _mainContainer();
  }

  Container _mainContainer() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: editTextfield('WHAT IS YOUR ELECTRICITY BOARD?'),
            // ),
            
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: 100,
            //     width: double.infinity,
            //     color: Colors.grey,
            //     child: Padding(
            //       padding: const EdgeInsets.all(15),
            //       child: Row(
            //         children: [
            //           Column(
            //             children: [
            //               Container(
            //                   height:50,
            //                   width: 40,
            //                   child: Image.network("https://image.shutterstock.com/image-vector/alphabet-letters-initials-monogram-logo-260nw-1919886389.jpg")),
            //               Text("EKO")
            //             ],
            //           ),
            //           SizedBox(
            //             width: 20,
            //           ),
            //           Column(
            //             children: [
            //               Container(
            //                   height:50,
            //                   width: 40,
            //                   child: Image.network("https://image.shutterstock.com/image-vector/alphabet-letters-initials-monogram-logo-260nw-1919886389.jpg")),
            //               Text("EKO")
            //             ],
            //           ),
            //           SizedBox(
            //             width: 20,
            //           ),
            //           Column(
            //             children: [
            //               Container(
            //                   height:50,
            //                   width: 40,
            //                   child: Image.network("https://image.shutterstock.com/image-vector/alphabet-letters-initials-monogram-logo-260nw-1919886389.jpg")),
            //               Text("EKO")
            //             ],
            //           ),
            //           SizedBox(
            //             width: 20,
            //           ),
            //           Column(
            //             children: [
            //               Container(
            //                   height:50,
            //                   width: 40,
            //                   child: Image.network("https://image.shutterstock.com/image-vector/alphabet-letters-initials-monogram-logo-260nw-1919886389.jpg")),
            //               Text("EKO")
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     width: double.infinity,
            //     height: 80,
            //     color: Colors.grey.withOpacity(0.1),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(left: 6,top: 10),
            //           child: Text('Country',style: TextStyle(fontSize: 12),),
            //         ),
            //         Container(
            //           width: double.infinity,
            //           height: 40,
            //           child: Row(
            //             children: [
            //               Expanded(
            //                 child: Padding(
            //                   padding: const EdgeInsets.only(left: 6),
            //                   child: Text(
            //                     'Nigeria',
            //                     style: TextStyle(
            //                         fontSize: 15, fontWeight: FontWeight.w600),
            //                   ),
            //                 ),
            //               ),
            //               Expanded(
            //                 child: Container(
            //                     child: TextField(
            //                       decoration:
            //                       InputDecoration(labelText: 'Phone Number'),
            //                     )),
            //               ),
            //               Expanded(child: Icon(Icons.person_add_alt_1_rounded)),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: editTextfield('HOW MUCH DO YOU WANT TO POP-UP?'),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     width: double.infinity,
            //     height: 80,
            //     color: Colors.grey.withOpacity(0.15),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(left: 6,top: 10),
            //           child: Text('Currency',style: TextStyle(fontSize: 12),),
            //         ),
            //         Container(
            //           width: double.infinity,
            //           height: 40,
            //           child: Row(
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(left: 6),
            //                 child: Text(
            //                   'NGN',
            //                   style: TextStyle(
            //                       fontSize: 15, fontWeight: FontWeight.w600),
            //                 ),
            //               ),
            //               Expanded(
            //                 child: Padding(
            //                   padding: const EdgeInsets.only(left: 30,right: 10),
            //                   child: Container(
            //                       child: TextField(
            //                         decoration:
            //                         InputDecoration(labelText: 'Top-up Amount'),
            //                       )),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text editTextfield(String text) {
    return Text(text,
        style: TextStyle(
            color: Colors.blue, fontSize: 13, fontWeight: FontWeight.w500));
  }
  Widget airtel() {
    return Container(
      // width: double.infinity,
      // width:200,

      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR PHONE NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Country',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                'Nigeria',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                child: TextField(
                                  decoration:
                                  InputDecoration(labelText: 'Phone Number'),
                                )),
                          ),
                          Expanded(child: Icon(Icons.person_add_alt_1_rounded)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('HOW MUCH DO YOU WANT TO POP-UP?'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Currency',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              'NGN',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 10),
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(labelText: 'Top-up Amount'),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );

    // return Center(child: Text('Qaiser'));
  }
  Widget Eko() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR METER NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Meter Number',
                                labelText: 'Meter Number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('HOW MUCH DO YOU WANT TO POP-UP?'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Currency',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              'NGN',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 10),
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(labelText: 'Top-up Amount'),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );

  }
  Widget Kano() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR METER NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Meter Number',
                                labelText: 'Meter Number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );

  }
  Widget Ikedc() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR METER NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Meter Number',
                                labelText: 'Meter Number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR CONTACT TYPE?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Contact type',
                                labelText: 'Contact type',
                              suffixIcon: Icon(Icons.arrow_drop_down,
                              color: Colors.black,
                              )
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('HOW MUCH DO YOU WANT TO POP-UP?'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Currency',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              'NGN',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 10),
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(labelText: 'Top-up Amount'),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );

    // return Center(child: Text('Qaiser'));
  }
  Widget Abuja() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR METER NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Meter Number',
                                labelText: 'Meter Number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('HOW MUCH DO YOU WANT TO POP-UP?'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Currency',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              'NGN',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 10),
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(labelText: 'Top-up Amount'),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );

  }
  Widget Jos() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR METER NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Meter Number',
                                labelText: 'Meter Number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
              child: editTextfield('WHAT IS YOUR PHONE NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Country',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                'Nigeria',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                child: TextField(
                                  decoration:
                                  InputDecoration(labelText: 'Phone Number'),
                                )),
                          ),
                          Expanded(child: Icon(Icons.person_add_alt_1_rounded)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('HOW MUCH DO YOU WANT TO POP-UP?'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Currency',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              'NGN',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 10),
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(labelText: 'Top-up Amount'),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );

  }
  Widget Kaduna() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR METER NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Meter Number',
                                labelText: 'Meter Number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );

  }
  Widget Enudu() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR METER NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Meter Number',
                                labelText: 'Meter Number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('HOW MUCH DO YOU WANT TO POP-UP?'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Currency',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              'NGN',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 10),
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(labelText: 'Top-up Amount'),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );

    // return Center(child: Text('Qaiser'));
  }
  Widget Port() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR METER NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Meter Number',
                                labelText: 'Meter Number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('HOW MUCH DO YOU WANT TO POP-UP?'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Currency',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              'NGN',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 10),
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(labelText: 'Top-up Amount'),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
          
        ),
      ),
    );

  }
  Widget Smartgen() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
              child: editTextfield('WHAT IS YOUR ACCOUNT NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Powergen account number',
                                labelText: 'Powergen account number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
              child: editTextfield('HOW MUCH DO YOU WANT TO POP-UP?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Currency',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              'NGN',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 10),
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(labelText: 'Top-up Amount'),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
    return Text('asdfasdf');
    // return Center(child: Text('Inam'));
  }
  Widget PowerGen() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
              child: editTextfield('WHAT IS YOUR ACCOUNT NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Powergen account number',
                                labelText: 'Powergen account number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
              child: editTextfield('HOW MUCH DO YOU WANT TO POP-UP?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6,top: 10),
                      child: Text('Currency',style: TextStyle(fontSize: 12),),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              'NGN',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 10),
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(labelText: 'Top-up Amount'),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );

    // return Center(child: Text('Qaiser'));
  }
  Widget Paysolar() {
    return Container(


      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR ACCOUNT NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Meter Number',
                                labelText: 'Meter Number'
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHICH PACKAGE DO YOU WANT?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Expanded(
                      child: Container(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration:
                            InputDecoration(hintText: 'Package',
                                labelText: 'Package',
                                suffixIcon: Icon(Icons.arrow_drop_down,
                                  color: Colors.black,
                                )
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                child: Text('PROCEED TO PAY',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
                color: Colors.blue,
                minWidth: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );

    // return Center(child: Text('Qaiser'));
  }


}

class FruitsList {
  Widget name;
  int index;
  Widget image;

  FruitsList({  this.name,   this.index,   this.image});
}

class _ElectricityHomePageState extends State<ElectricityHomePage> {


  int id = 1;

  List<FruitsList> fList = [
    FruitsList(
      index: 1,
      name: Con().mtn(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 2,
      name: Con().airtel(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 3,
      name: Con().Eko(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 4,
      name: Con().Kano(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 5,
      name: Con().Ikedc(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 6,
      name: Con().Abuja(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 7,
      name: Con().Jos(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 8,
      name: Con().Kaduna(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 9,
      name: Con().Enudu(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 10,
      name: Con().Port(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 11,
      name: Con().Smartgen(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 10,
      name: Con().PowerGen(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
    FruitsList(
      index: 11,
      name: Con().Paysolar(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
  ];

  int value = 0;
  // ye niche code nhe inam sahab
  Widget CustomRadioButton(Widget image, int index,
      {Function onPressedHandler}) {
    return OutlineButton(
      onPressed: onPressedHandler ??
              () {
            print(index);
          },
      // () {
      //   setState(() {
      //     value = index;
      //     print(value);
      //     print('index $index');
      //   });
      // },
      // child: Text(
      //   text,
      //   style: TextStyle(
      //     color: (value == index) ? Colors.green : Colors.black,
      //   ),
      // ),
      child: image,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      borderSide: BorderSide(
          color: (value == index) ? Colors.blue : Colors.grey.withOpacity(0.4)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Text('Electricity'),
        toolbarHeight: 40,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('CONTINUE')),
          ),
        ],
      ),
      body: ListView(
        children: [
// Yaha Jo me ne comment kia he is ko on comment karo ye code Jo image row me show kia he ye code is k liye he
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: editText('WHAT IS YOUR OPERATOR?'),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.grey.withOpacity(0.4),
            child: Row(
              children: [
                Container(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: CustomRadioButton(
                        // Image.asset(
                        //   'images/starlogo.jpg',
                        //   width: 40,
                        // ),
                      Text("PrePaide"),
                        1, onPressedHandler: () {
                      setState(() {
                        id = 1;
                      });
                    }),
                  ),
                ),
                Container(
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: CustomRadioButton(
                        // Image.asset(
                        //   'images/starlogo.jpg',
                        //   width: 40,
                        // ),
                      Text("PostPaide"),
                        2, onPressedHandler: () {
                      setState(() {
                        id = 2;
                      });
                    }),
                  ),
                ),



              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: editText('WHAT IS YOUR CONTRACT TYPE?'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                children: [

                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                fit: BoxFit.cover,
                                width: 40,
                              ),
                              3, onPressedHandler: () {
                            setState(() {
                              id = 3;
                            });
                          }),
                        ),
                      ),
                      Text("EKO",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 60,
                              ),
                              4, onPressedHandler: () {
                            setState(() {
                              id = 4;
                            });
                          }),
                        ),
                      ),
                      Text("KANO",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                fit: BoxFit.cover,
                                width: 40,
                              ),
                              5, onPressedHandler: () {
                            setState(() {
                              id = 5;
                            });
                          }),
                        ),
                      ),
                      Text("IKEDC",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 60,
                              ),
                              6, onPressedHandler: () {
                            setState(() {
                              id = 6;
                            });
                          }),
                        ),
                      ),
                      Text("Abuja",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 60,
                              ),
                              7, onPressedHandler: () {
                            setState(() {
                              id = 7;
                            });
                          }),
                        ),
                      ),
                      Text("JOS",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 60,
                              ),
                              8, onPressedHandler: () {
                            setState(() {
                              id = 8;
                            });
                          }),
                        ),
                      ),
                      Text("Kaduna",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 60,
                              ),
                              9, onPressedHandler: () {
                            setState(() {
                              id = 9;
                            });
                          }),
                        ),
                      ),
                      Text("ENUGU",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 60,
                              ),
                              10, onPressedHandler: () {
                            setState(() {
                              id = 10;
                            });
                          }),
                        ),
                      ),
                      Text("Part Harcourt",style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 60,
                              ),
                              11, onPressedHandler: () {
                            setState(() {
                              id = 11;
                            });
                          }),
                        ),
                      ),
                      Text("SmarterGrid")
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 60,
                              ),
                              12, onPressedHandler: () {
                            setState(() {
                              id = 12;
                            });
                          }),
                        ),
                      ),
                      Text("PowerGen")
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 60,
                              ),
                              13, onPressedHandler: () {
                            setState(() {
                              id = 13;
                            });
                          }),
                        ),
                      ),
                      Text("PaySolar")
                    ],
                  ),
                ],
              ),
            ),
          ),

          Column(
            children: [
              if (id == 1) radioItem,
              if (id == 2) Con().airtel(),
              if (id == 3) Con().Eko(),
              if (id == 4) Con().Kano(),
              if (id == 5) Con().Ikedc(),
              if (id == 6) Con().Abuja(),
              if (id == 7) Con().Jos(),
              if (id == 8) Con().Kaduna(),
              if (id == 9) Con().Enudu(),
              if (id == 10) Con().Port(),
              if (id == 11) Con().Smartgen(),
              if (id == 12) Con().PowerGen(),
              if (id == 13) Con().Paysolar(),
            ],
          )
        ],
      ),
    );

  }
  Widget editText(String title) => Text(title,
      style: TextStyle(
          color: Colors.blue, fontSize: 13, fontWeight: FontWeight.w500));
}




