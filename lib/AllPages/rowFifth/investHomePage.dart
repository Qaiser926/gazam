import 'package:flutter/material.dart';

class InvestHomePage extends StatefulWidget {
  const InvestHomePage({Key key}) : super(key: key);

  @override
  _InvestHomePageState createState() => _InvestHomePageState();
}


Widget radioItem = Con().mtn();

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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Expanded(
                          child: Container(
                              child: TextField(
                                decoration:
                                InputDecoration(hintText: 'Account Number'),
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
              child: editTextfield('WHICH PACKAGE DO YOU WANT?'),
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Expanded(
                          child: Container(
                              child: TextField(
                                decoration:
                                InputDecoration(hintText: 'Package',
                                suffixIcon: Icon(Icons.arrow_drop_down,
                                color: Colors.black,
                                )
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
  }

  Text editTextfield(String text) {
    return Text(text,
        style: TextStyle(
            color: Colors.blue, fontSize: 13, fontWeight: FontWeight.w500));
  }

}

class FruitsList {
  Widget name;
  int index;
  Widget image;

  FruitsList({  this.name,   this.index,   this.image});
}


class _InvestHomePageState extends State<InvestHomePage> {


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
        title: Text('Invest'),
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
            child: editText('SELECT A PROVIDER?'),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.13,
            color: Colors.grey.withOpacity(0.4),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
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
                      Text("Lotus Capital")
                    ],
                  ),
                 
                ],
              ),
            ),
          ),
          Column(
            children: [
              if (id == 1) radioItem,
              // if (id == 2) Con().airtel(),
              // if (id == 3) Con().mobile(),
              // if (id == 4) Con().Glo(),
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
