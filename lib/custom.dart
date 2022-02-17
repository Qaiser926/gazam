
import 'package:flutter/material.dart';

class MainHomeMTNPage extends StatefulWidget {
  @override
  State<MainHomeMTNPage> createState() => _MainHomeMTNPageState();
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
              child: editTextfield('WHAT IS YOUR PHONE NUMBERS?'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 80,
                color: Colors.grey.withOpacity(0.1),
                child: Column(
                  children: [
                    Text('Country'),
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
                  children: [
                    Text('Currency'),
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
                              padding: const EdgeInsets.all(8.0),
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
    return _mainContainer();
    // return Center(child: Text('Inam'));
  }

  Widget mobile() {
    return _mainContainer();
    // return Center(child: Text('Qaiser'));
  }

  Widget Glo() {
    return _mainContainer();
  }
}

class FruitsList {
  Widget name;
  int index;
  Widget image;

  FruitsList({@required this.name, @required this.index, @required this.image});
}

class _MainHomeMTNPageState extends State<MainHomeMTNPage> {
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
        title: Text('Airtime'),
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
// // Yaha Jo niche code he is ko comment karo ye me ne radio listtile k liye lika he Jo column me radio icon our image kar raha he
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: editText('WHAT IS YOUR OERATOR?'),
//             ),
//             Expanded(
//               child: Container(
//                 height: 250.0,
//                 child: Column(
//                   children: fList
//                       .map((data) => RadioListTile(
//                             // title: Text("${data.name}"),

//                             title: data.image,
//                             groupValue: id,
//                             value: data.index,
//                             onChanged: (val) {
//                               setState(() {
//                                 radioItem = data.name;
//                                 id = data.index;
//                               });
//                             },
//                           ))
//                       .toList(),
//                 ),
//               ),
//             ),
//             Container(width: double.infinity, height: 300, child: radioItem)
//           ],
  //));

  Widget editText(String title) => Text(title,
      style: TextStyle(
          color: Colors.blue, fontSize: 13, fontWeight: FontWeight.w500));
}
