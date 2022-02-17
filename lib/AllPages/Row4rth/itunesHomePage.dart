

import 'package:flutter/material.dart';

class ItunesHomePage extends StatefulWidget {
  const ItunesHomePage({Key key}) : super(key: key);

  @override
  _ItunesHomePageState createState() => _ItunesHomePageState();
}


Widget radioItem = Con().mtn();

class Con {
  Widget mtn() {
    return _mainContainer();
  }

  Container _mainContainer() {
    return Container(
      width: double.infinity,
      // width:200,

      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 15),
              child: editTextfield('CHOOSE A VOUCHER?'),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                  width: 300,
                height: 40,
                child: Row(
                  children: [

                    Expanded(
                      child: Container(
                          child: TextField(
                            decoration:
                            InputDecoration(hintText: 'Voucher'),
                          )),
                    ),
                    Expanded(child: Text("SELECT",style: TextStyle(color: Colors.blue),)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
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
    return Container(
      width: double.infinity,
      // width:200,

      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 15),
              child: editTextfield('CHOOSE A VOUCHER?'),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 300,
                height: 40,
                child: Row(
                  children: [

                    Expanded(
                      child: Container(
                          child: TextField(
                            decoration:
                            InputDecoration(hintText: 'Voucher'),
                          )),
                    ),
                    Expanded(child: Text("SELECT",style: TextStyle(color: Colors.blue),)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
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

  Widget mobile() {
    return Container(
      width: double.infinity,
      // width:200,

      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 15),
              child: editTextfield('CHOOSE A VOUCHER?'),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 300,
                height: 40,
                child: Row(
                  children: [

                    Expanded(
                      child: Container(
                          child: TextField(
                            decoration:
                            InputDecoration(hintText: 'Voucher'),
                          )),
                    ),
                    Expanded(child: Text("SELECT",style: TextStyle(color: Colors.blue),)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
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

Widget Glo() {
  return Container(
    width: double.infinity,
    // width:200,

    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: editTextfield('CHOOSE A VOUCHER?'),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: 300,
              height: 40,
              child: Row(
                children: [

                  Expanded(
                    child: Container(
                        child: TextField(
                          decoration:
                          InputDecoration(hintText: 'Voucher'),
                        )),
                  ),
                  Expanded(child: Text("SELECT",style: TextStyle(color: Colors.blue),)),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
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

  FruitsList({@required this.name, @required this.index, @required this.image});
}

class _ItunesHomePageState extends State<ItunesHomePage> {


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
    FruitsList(
      index: 4,
      name: Con().Glo(),
      image: Image.asset(
        'images/starlogo.jpg',
        width: 30,
        height: 30,
      ),
    ),
  ];

  int value = 0;

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
        title: Text('iTunes'),
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
            child: editText('CHOOSE A BRAND'),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.12,
            color: Colors.grey.withOpacity(0.4),
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
                    Text("iTunes",style: TextStyle(fontSize: 12),)
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
                    Text("GooglePlay",style: TextStyle(fontSize: 12),)
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
                    Text("Tinder",style: TextStyle(fontSize: 12),)
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
                    Text("EZ PIN",style: TextStyle(fontSize: 12),)
                  ],
                ),
              ],
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
