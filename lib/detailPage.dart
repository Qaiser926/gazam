import 'package:flutter/material.dart';
import 'package:jumia/homeScreenPage/jumiaStoreCridit/loginwithEmail.dart';


class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Text('Airtime'),
        actions: [
          Padding(
            padding:  EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => loginWithEmail(),));
              },
              child: Text('CONTINUE')),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                height: 50,
                color: Colors.grey.withOpacity(0.15),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: editText('YOUR ORDER'),
                    ))),
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      editText('Operator'),
                      Text('MTN',style: TextStyle(fontWeight: 
                          FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      editText('Phone'),
                      Text('03334934',style: TextStyle(fontWeight: 
                          FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      editText('Operator'),
                      Row(
                        children: [
                          Text('N,',		style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: 
                          FontWeight.bold),
                ),
                          Text('87',style:TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () {
                 
                 showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(6.0)), //this right here
            child: Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('How much do you want to top-up?',style: TextStyle(fontSize: 15),),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: editText('Currency')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Row(
                            children: [
                              Text('NGN'),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left:15),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        labelText: 'Top-up Amount'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      width: 320.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[

                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text('CANCEL')),
                          TextButton(onPressed: (){}, child: Text('CONFIRM')),
                        ]
                      )
                    )
                  ],
                ),
              ),
            ),
          );
        });
                 
                    },
                    child: Text('CHANGE AMOUNT',
                        style: TextStyle(letterSpacing: 1)))
              ],
            ),
            Container(
                width: double.infinity,
                height: 50,
                color: Colors.grey.withOpacity(0.15),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: editText('ORDER SUMMARY'),
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  editText('Service Price'),
                  Row(
                    children: [
                      Text('N',		style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: 
                          FontWeight.bold)),
                      Text(' 87',		style: TextStyle(fontWeight: 
                          FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  editText('Jumia Discount'),
                  Row(
                    children: [
                      Text('N',		style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: 
                          FontWeight.bold)),
                      Text(' 00',		style: TextStyle(fontWeight: 
                          FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  editText('Service Fee'),
                  Row(
                    children: [
                      Text('N',		style: TextStyle(decoration: TextDecoration.lineThrough,fontWeight: 
                          FontWeight.bold)),
                      Text(' 87',		style: TextStyle(fontWeight: 
                          FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  editText('Final Price'),
                  Row(
                    children: [
                      Text('N',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.blue,
                          )),
                      Text(' 87', style: TextStyle(color: Colors.blue,fontWeight:FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.grey.withOpacity(0.15),
                  child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Login to find out if you have a higher cashback bonus!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blue))))),
            ),
            InkWell(
              onTap: () {
                 
                 showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(6.0)), //this right here
            child: Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:15,right:15),
                      child: Text('What is your voucher code?',style: TextStyle(fontSize: 15),),
                    ),
                  
                    Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left:15,right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'Voucher Code'),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 320.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[

                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text('CANCEL')),
                          TextButton(onPressed: (){}, child: Text('CONFIRM')),
                        ]
                      )
                    )
                  ],
                ),
              ),
            ),
          );
        });
                 
              },
              child: Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.grey.withOpacity(0.15),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Do you have a voucher code?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blue))))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => loginWithEmail(),));
                },
                child: Text('CONTINUE TO LOGIN',style:TextStyle(color: Colors.white)),
                color: Colors.blue,
                elevation: 10,
              ),
            )
          ],
        ),
      ),
    );
  }

  Text editText(String text) => Text(text,
      style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.9)));
}
