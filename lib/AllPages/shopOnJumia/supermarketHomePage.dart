
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jumia/commonFolder/dataClass.dart';
import 'package:jumia/commonFolder/modelDataClass.dart';


class SupermarketHomePage extends StatefulWidget {
  @override
  _SupermarketHomePageState createState() => _SupermarketHomePageState();
}

class _SupermarketHomePageState extends State<SupermarketHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Supermarket'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.cancel,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          // shrinkWrap: true,
          // physics:ScrollPhysics(),
          children: [
            SizedBox(
              height: 6,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Groceries'),
              )),
              color: Colors.blue[100],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                child: ListView.builder(
                    // shrinkWrap: true,
                    // physics:ScrollPhysics(),
                    // physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Row(
                            children: [
                              Image.network(
                                gazamDataList[index].ImageUrl,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),

            Container(
              child: Card(
                child: _VerticalScrollView(),
              ),
            ),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(14)),
                height: MediaQuery.of(context).size.height * 0.15,
                child: Card(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: gazamDataList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.network(gazamDataList[index].ImageUrl),
                          ),
                        );
                      }),
                )),

// show data horizantal listview  on model class
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blue[100],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Reckitt Benckiser'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Extra 10% off At checkout'),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: gazamDataList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Image.network(
                                          gazamDataList[index].ImageUrl,
                                          // width: 80,
                                        ),
                                      ),
                                      Text(gazamDataList[index].title),
                                      Row(
                                        children: [
                                          Text(
                                            'N',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(gazamDataList[index].price,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),

// show data horizantal listview  on model class
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blue[100],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Pernod Ricard'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Official Store')),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: gazamDataList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Image.network(
                                          gazamDataList[index].ImageUrl,
                                          // width: 80,
                                        ),
                                      ),
                                      Text(gazamDataList[index].title),
                                      Row(
                                        children: [
                                          Text(
                                            'N',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(gazamDataList[index].price,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),

// show data horizantal listview  on model class
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blue[100],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Diageo'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Official Store')),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: gazamDataList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Image.network(
                                          gazamDataList[index].ImageUrl,
                                          // width: 80,
                                        ),
                                      ),
                                      Text(gazamDataList[index].title),
                                      Row(
                                        children: [
                                          Text(
                                            'N',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(gazamDataList[index].price,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),

// show data horizantal listview  on model class
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blue[100],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Unilever'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Official Store')),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: gazamDataList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Image.network(
                                          gazamDataList[index].ImageUrl,
                                          // width: 80,
                                        ),
                                      ),
                                      Text(gazamDataList[index].title),
                                      Row(
                                        children: [
                                          Text(
                                            'N',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(gazamDataList[index].price,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
        
            // yaha par gridview me data show kia model see
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height*0.35,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height*0.35,
                    child: Card(
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Shop by Category'),
                              )),
                          Container(
                            // width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height,
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                              ),
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Image.network(
                                            gazamDataList[index].ImageUrl),
                                      ),
                                      Text(gazamDataList[index].title)
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height,
            //   color: Colors.blue[100],
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       children: [
            //         Text('Food Bundles'),
            //         Text('SEE ALL',style: TextStyle(fontSize: 11,color: Colors.black,fontWeight: FontWeight.bold),),
            //       ],
            //     ),
            //   ),
            // ),

            // show data horizantal listview  on model class
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blue[100],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Food Bundle'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: gazamDataList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Image.network(
                                          gazamDataList[index].ImageUrl,
                                          // width: 80,
                                        ),
                                      ),
                                      Text(gazamDataList[index].title),
                                      Row(
                                        children: [
                                          Text(
                                            'N',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(gazamDataList[index].price,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // show data horizantal listview  on model class
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blue[100],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Alchohol Free'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: gazamDataList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Image.network(
                                          gazamDataList[index].ImageUrl,
                                          // width: 80,
                                        ),
                                      ),
                                      Text(gazamDataList[index].title),
                                      Row(
                                        children: [
                                          Text(
                                            'N',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(gazamDataList[index].price,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // show data horizantal listview  on model class
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blue[100],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Home Cleaning'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: gazamDataList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Image.network(
                                          gazamDataList[index].ImageUrl,
                                          // width: 80,
                                        ),
                                      ),
                                      Text(gazamDataList[index].title),
                                      Row(
                                        children: [
                                          Text(
                                            'N',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(gazamDataList[index].price,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'CROCERY',
                    style: TextStyle(color: Colors.grey),
                  ),
                )),

            // yaha par gridview me data show kia model see
            Container(
              width: MediaQuery.of(context).size.width,
              //  height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 2,
                  crossAxisCount: 2,
                ),
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: gazamDataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Image.network(
                                    gazamDataList[index].ImageUrl),
                              ),
                              // free delivery bar
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 10, left: 8),
                                    child: Container(
                                        width: 50,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.orange),
                                        child: Center(
                                            child: Text(
                                          'Free Delivery*',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                          ),
                                        ))),
                                  )),
                              // percentage discount
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 10),
                                    child: Container(
                                        width: 30,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: Colors.orange[100]),
                                        child: Center(
                                            child: Text(
                                          gazamDataList[index]
                                              .percentageDiscount,
                                          style:
                                              TextStyle(color: Colors.orange),
                                        ))),
                                  )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(gazamDataList[index].des,
                                style: TextStyle(fontSize: 13)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6, top: 3),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 3),
                                  child: Text(
                                    'N',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ),
                                Text(gazamDataList[index].price),
                              ],
                            ),
                          ),
                          // rating bar
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  itemSize: 10,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Text(
                                  '(',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                Text(
                                  gazamDataList[index].verifyRating,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                                Text(
                                  ')',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset(
                                'images/jumialogo.png',
                                width: 60,
                              )),
                          Text(gazamDataList[index].des,
                              style: TextStyle(fontSize: 13)),

                          MaterialButton(
                            onPressed: () {},
                            child: Text('ADD TO CART',
                                style: TextStyle(color: Colors.white)),
                            color: Colors.orange,
                            minWidth: double.infinity,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
      
         //  container to show previouse page buton 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                        children: [
                          Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                    color: Colors.grey,
                  ),
                    Text('PREVIOUSE PAGE',style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                  
                  ),
                  Container(
                      child: Row(
                        children: [
                        Text('1'),
                        Text('/',style: TextStyle(color: Colors.grey),),
                        Text('50',style: TextStyle(color: Colors.grey),),
                  
                        ],
                      ),
                  
                  ),
                  Container(
                      child: Row(
                        children: [
                        Text('NEXT PAGE',style: TextStyle(color: Colors.orange),),
                     Icon(Icons.arrow_forward_ios,size: 12,color: Colors.orange,)
                  
                        ],
                      ),
                  
                  ),
                  
                ],
              ),
            ),
            // black container to show filter popularity optoin
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Icon(Icons.menu,color: Colors.white,),
                            ),
                            Divider(),
                            Row(
                              children: [
                                Text('POPULARITY',style:TextStyle(color: Colors.white)),
                                Icon(Icons.arrow_drop_down,color: Colors.white,),
                              ],
                            ),
                             Divider(),
                             Text('FILTER',style: TextStyle(color: Colors.white),)

                          ],
                        ),
                      ),
                    ),
            ),
          
             // show data horizantal listview  on model class
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.3,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // color: Colors.blue[100],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Recently Viewed'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,color: Colors.orange),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: gazamDataList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Image.network(
                                          gazamDataList[index].ImageUrl,
                                          // width: 80,
                                        ),
                                      ),
                                      Text(gazamDataList[index].title),
                                      Row(
                                        children: [
                                          Text(
                                            'N',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(gazamDataList[index].price,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),


Container(
  width: MediaQuery.of(context).size.width,
  child: Card(
    child:Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Groceries Online In Nigeria',style: TextStyle(fontSize: 16)),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Do You need to get some dailty use item for yourself and your family Discouver groceries in nigeria on njumia . we '),
      )
      

    ],)
  ),
)
          ],
        ),
      ),
    );
  }

  Widget _VerticalScrollView() {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.blue[100],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Deals'),
                Text(
                  'SEE ALL',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
              // shrinkWrap: true,
              //   physics:ScrollPhysics(),
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: gazamDataList.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(gazamDataList[index].ImageUrl),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(gazamDataList[index].title),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 3),
                                child: Text(
                                  'N',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ),
                              Text(gazamDataList[index].price),
                            ],
                          )
                        ],
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                                margin: EdgeInsets.only(top: 13),
                                width: 30,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.orange[100]),
                                child: Center(
                                    child: Text(
                                  gazamDataList[index].percentageDiscount,
                                  style: TextStyle(color: Colors.orange),
                                ))),
                          )),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
