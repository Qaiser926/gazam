import 'package:flutter/material.dart';
import 'package:jumia/AllPages/firstRow/airTimeHomePage.dart';


class RowsevenBetingHomePage extends StatefulWidget {

  @override
  _RowsevenBetingHomePageState createState() => _RowsevenBetingHomePageState();
}

class Con {
  Widget mtn() {
    return _mainContainer();
  }

  Container _mainContainer() {
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
              child: editTextfield('WHAT IS YOUR ACCOUNT NUMBERS?'),
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
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 6,top: 10),
                    //   child: Text('Country',style: TextStyle(fontSize: 12),),
                    // ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Expanded(
                        child: Container(
                            child: TextField(
                              decoration:
                              InputDecoration(labelText: '1960 account number'),
                            )),
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

  Text editTextfield(String text) {
    return Text(text,
        style: TextStyle(
            color: Colors.blue, fontSize: 13, fontWeight: FontWeight.w500));
  }

  Widget airtel() {
    return    Container(
      // width: double.infinity,
      // width:200,

      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('WHAT IS YOUR CUSTOMER ID?'),
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
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 6,top: 10),
                    //   child: Text('Country',style: TextStyle(fontSize: 12),),
                    // ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          // Expanded(
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(left: 6),
                          //     child: Text(
                          //       'Nigeria',
                          //       style: TextStyle(
                          //           fontSize: 15, fontWeight: FontWeight.w600),
                          //     ),
                          //   ),
                          // ),
                          Expanded(
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: TextField(
                                    decoration:
                                    InputDecoration(hintText: 'Customer ID'),
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
    return Text('asdfasdf');
    // return Center(child: Text('Inam'));
  }

  Widget mobile() {
    return    Container(
      // width: double.infinity,
      // width:200,

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
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 6,top: 10),
                    //   child: Text('Country',style: TextStyle(fontSize: 12),),
                    // ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          // Expanded(
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(left: 6),
                          //     child: Text(
                          //       'Nigeria',
                          //       style: TextStyle(
                          //           fontSize: 15, fontWeight: FontWeight.w600),
                          //     ),
                          //   ),
                          // ),
                          Expanded(
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: TextField(
                                    decoration:
                                    InputDecoration(hintText: 'Betway Account Number'),
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

  Widget Glo() {
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
              child: editTextfield('WHAT IS YOUR PLAYER ID/AGENT ID?'),
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
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 6,top: 10),
                    //   child: Text('Country',style: TextStyle(fontSize: 12),),
                    // ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: [
                          // Expanded(
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(left: 6),
                          //     child: Text(
                          //       'Nigeria',
                          //       style: TextStyle(
                          //           fontSize: 15, fontWeight: FontWeight.w600),
                          //     ),
                          //   ),
                          // ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(labelText: 'Player ID Agent ID'),
                                  )),
                            ),
                          ),
                          // Expanded(child: Icon(Icons.person_add_alt_1_rounded)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editTextfield('SELECT AN OPTION'),
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
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 6,top: 10),
                    //   child: Text('Currency',style: TextStyle(fontSize: 12),),
                    // ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Row(
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 6),
                            //   child: Text(
                            //     'NGN',
                            //     style: TextStyle(
                            //         fontSize: 15, fontWeight: FontWeight.w600),
                            //   ),
                            // ),
                            Expanded(
                              child: Container(
                                  child: TextField(
                                    decoration:
                                    InputDecoration(hintText: 'Option',
                                    suffixIcon: Icon(Icons.arrow_drop_down,color: Colors.black,)
                                    ),
                                  )),
                            ),

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


  }



class FruitsList {
  Widget name;
  int index;
  Widget image;

  FruitsList({  this.name,   this.index,   this.image});
}

class _RowsevenBetingHomePageState extends State<RowsevenBetingHomePage> {


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
      name: Con().mobile(),
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
        title: Text('Betting'),
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
            child: editText('CHOOSE A BETTING PROVIDER'),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.12,
            color: Colors.grey.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
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
                                  width: 40,
                                ),
                                1, onPressedHandler: () {
                              setState(() {
                                id = 1;
                              });
                            }),
                          ),
                        ),
                        Text("1960Bet",style: TextStyle(fontSize: 12),)
                      ],
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
                                  width: 40,
                                ),
                                2, onPressedHandler: () {
                              setState(() {
                                id = 2;
                              });
                            }),
                          ),
                        ),
                        Text("BetWay",style: TextStyle(fontSize: 12),)
                      ],
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
                                3, onPressedHandler: () {
                              setState(() {
                                id = 3;
                              });
                            }),
                          ),
                        ),
                        Text("Bet9ja",style: TextStyle(fontSize: 12),)
                      ],
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

                        Text("Bonansawin",style: TextStyle(fontSize: 12),)
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              if (id == 1) radioItem,
              if (id == 2) Con().airtel(),
              if (id == 3) Con().mobile(),
              if (id == 4) Con().Glo(),
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
