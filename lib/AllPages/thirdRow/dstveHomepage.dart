import 'package:flutter/material.dart';

class DstvHomePage extends StatefulWidget {
  const DstvHomePage({Key key}) : super(key: key);

  @override
  _DstvHomePageState createState() => _DstvHomePageState();
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
            Padding(
              padding: const EdgeInsets.only(right: 15,left: 15,top: 15),
              child: editTextfield('WHAT IS YOUR PHONE NUMBERS?'),
            ),
            Container(
              height: 70,
                width: double.infinity,

                child: Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: TextField(
                    decoration:
                    InputDecoration(labelText: 'SmartCard Number'),
                  ),
                )),

            Padding(
              padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
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
              padding: const EdgeInsets.only(right: 15,left: 15,top: 15),
              child: editTextfield('WHAT IS YOUR SMART CARD NUMBER?'),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.grey.withOpacity(0.1),
              child: Container(
                width: double.infinity,
                height: 60,
                child: Expanded(
                  child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: TextField(
                          decoration:
                          InputDecoration(labelText: 'SmartCardNumber'),
                        ),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
              child: editTextfield('WHICH PACKAGE DO YOU WANT?'),
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

                    Container(
                      width: double.infinity,
                      height: 60,
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Container(
                              child: TextField(
                                decoration:
                                InputDecoration(labelText: 'Package',
                                suffixIcon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                                ),
                              )),
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

    // return Center(child: Text('Qaiser'));
  }



}

class FruitsList {
  Widget name;
  int index;
  Widget image;

  FruitsList({  this.name,   this.index,   this.image});
}

class _DstvHomePageState extends State<DstvHomePage> {



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
        title: Text('DSTV'),
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
            child: editText('WHAT IS YOUR ACTION?'),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.grey.withOpacity(0.4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        Text("Renew"),
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
                        Text("Upgrade/Su.."),
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


          Column(
            children: [
              if (id == 1) radioItem,
              if (id == 2) Con().airtel(),

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
