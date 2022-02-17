
import 'package:flutter/material.dart';

import 'mtnDetailPage.dart';

class AirTimeHomePage extends StatefulWidget {
 
 final Widget container1=Container(
   child: Text('Qaiser'),
 );
 final Widget container2=Container(
   child: Text('Qaiser farooq'),
 );
 final Widget container3=Container(
   child: Text('haider farooq'),
 );
 final Widget container4=Container(
   child: Text('khalid farooq'),
 );

 final int select=0;

  @override
  State<AirTimeHomePage> createState() => _AirTimeHomePageState();
}

Widget radioItem = Con().mtn();

class Con {
  Widget mtn() {
    // yaha par  container ko call kia he 
    return _mainContainer();
  }
 // ye main container ka function banaya he 
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
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: MaterialButton(
          //     onPressed: () {
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => MtnDetailPgae(),));
          //     },
          //     child: Text('PROCEED TO PAY',
          //         style: TextStyle(
          //             color: Colors.white, fontWeight: FontWeight.w600)),
          //     color: Colors.blue,
          //     minWidth: double.infinity,
          //   ),
          // ),
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

// yaha  second container ki jaga he 
  Widget airtel() {

    // return _mainContainer();
    return Center(child: Text('Inam'));
  }
 // ye third container ki jaga he 
  Widget mobile() {
    // return _mainContainer();
    return Center(child: Text('Qaiser'));
  }
// our ye fourth container ki jgaa he 
  Widget Glo() {
    return _mainContainer();
  }
}
 // ye me ne constructor banaya he  jis me 'name' , 'index' , our 'image ' pas kia he 
class FruitsList {
  Widget name;
  int index;
  Widget image;

  FruitsList({ this.name,  this.index, this.image});
}
 // yaha niche list create kia name our image diya 
class _AirTimeHomePageState extends State<AirTimeHomePage> {
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
    // yaha par second container ko 
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

  int value = 1;
  
  Widget CustomRadioButton(Widget image, int index) {
    return OutlineButton(
      onPressed: () {
        setState(() {
          value = index;
          
          // print(widget.checkcontainer);
        });
      },
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
              child: Center(child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MtnDetailPgae(),));
                },
                child: Text('CONTINUE'))),
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editText('WHAT IS YOUR OPERATOR?'),
            ),
            // ye niche custom radio button he
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.grey.withOpacity(0.4),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                       setState(() {
                         
                        //  widget.container1;
                       if(widget.select==1){
                     var cont1=    widget.container1;
                       }
                       });
                      },
                      child: Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 40,
                              ),
                              1),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                         
                       
                        });
                      },
                      child: Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                width: 40,
                              ),
                              2),
                        ),
                      ),
                    ),
                    InkWell(
                      
                      onTap: (){
                        
                        setState(() {
                          
                          widget.container3;
                        });
                      },
                      child: Container(
                        width: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CustomRadioButton(
                              Image.asset(
                                'images/starlogo.jpg',
                                fit: BoxFit.cover,
                                width: 40,
                              ),
                              3),
                        ),
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
                          4),
                      ),
                    ),

                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: editText('WHAT IS YOUR OERATOR?'),
            ),
            

          // our yaha par niche return kia he sare data ko column me show ho raha he 
            // Expanded(
            //   child: Container(
            //     height: 250.0,
            //     child: Column(
            //       children: fList
            //           .map((data) => RadioListTile(
            //                 // title: Text("${data.name}"),
                            
            //                 title: data.image,
            //                 groupValue: id,
            //                 value: data.index,
            //               // controlAffinity: ListTileControlAffinity.values,
                          
                          
                            
            //                 // toggleable: true,
                            

            //                 onChanged: (val) {
            //                   setState(() {
            //                     radioItem = data.name;
            //                     id = data.index;
            //                   });
            //                 },
            //               )
            //               )
            //           .toList(),
            //     ),
            //   ),
            // ),
        
           
              // yaha par niche me show karta ho sare container ko body me 
            // Container(width: double.infinity, height: 300, child: radioItem),

             Padding(
              padding:  EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MtnDetailPgae(),));
                },
                child: Text('PROCEED TO PAY',style:TextStyle(color: Colors.white)),
                color: Colors.blue,
                elevation: 10,
              ),
            )
          ],
        )
        );
  }
  Widget editText(String title) => Text(title,
      style: TextStyle(
          color: Colors.blue, fontSize: 13, fontWeight: FontWeight.w500));
}
