import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jumia/AllPages/shopOnJumia/supermarketHomePage.dart';
import 'package:jumia/commonFolder/dataClass.dart';
import 'package:jumia/commonFolder/modelDataClass.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FlashSaleHomePage extends StatefulWidget {
  @override
  _FlashSaleHomePageState createState() => _FlashSaleHomePageState();
}

class _FlashSaleHomePageState extends State<FlashSaleHomePage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text(
            'Flash Sale',
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.cancel)),
            ),
          ],
        ),
      
        body: 
        
        Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height*0.3,
          child: ListView(
            children: [
              Container(
                child: Card(
                  child: Column(
                    children: [
                      // carousel slider 
                      CarouselSlider(
                        options: CarouselOptions(
                          // height: 180.0,
                          autoPlay: true,
                          // enlargeCenterPage: true,
                          aspectRatio: 16 / 7,
                        ),
                        items: gazamDataList.map((fileImage) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                margin: EdgeInsets.all(5.0),
                                child: GestureDetector(
                                  child: Image.network(
                                    fileImage.ImageUrl,
                                    // width: 10000,
                                    fit: BoxFit.cover,
                                  ),
                                  onTap: () {
                                    // Navigator.of(context).push(MaterialPageRoute(
                                    //     builder: (context) => DetailHomePage(
                                    //           fetchData: gazamDataList[index],
                                    //         )));
                                  },
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    
                      // red container
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height * 0.04,
                        color: Colors.red,
                        child: Center(
                            child: Text(
                          'Start In : 19: 07m: 00',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: gazamDataList.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: Text(
                                          gazamDataList[index].daywise,
                                          style: TextStyle(letterSpacing: 1),
                                        )),
                                  );
                                }),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('FLASH SALES',
                                style: TextStyle(color: Colors.grey)),
                          )),

                      // yaha par gridview me data show kia model see
                      Container(
                        width: MediaQuery.of(context).size.width,
                        //  height: MediaQuery.of(context).size.height,
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 8),
                                              child: Container(
                                                  width: 50,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3),
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
                                                          BorderRadius.circular(
                                                              3),
                                                      color:
                                                          Colors.orange[100]),
                                                  child: Center(
                                                      child: Text(
                                                    gazamDataList[index]
                                                        .percentageDiscount,
                                                    style: TextStyle(
                                                        color: Colors.orange),
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
                                      padding: const EdgeInsets.only(
                                          left: 6, top: 3),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 3),
                                            child: Text(
                                              'N',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  decoration: TextDecoration
                                                      .lineThrough),
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
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 4.0),
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
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            gazamDataList[index].verifyRating,
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            ')',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey),
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

                                    // prograss bar
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 3),
                                          child: Text(
                                            '20 items left',
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        )),
                                        // prograss bar 
                                    Align(

                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: LinearPercentIndicator(
                                  
                                          width: MediaQuery.of(context).size.width*0.4,
                                          lineHeight: 10.0,
                                          percent: 0.5,
                                          backgroundColor: Colors.grey,
                                          // linearStrokeCap: LinearStrokeCap.roundAll,
                                          linearStrokeCap: LinearStrokeCap.roundAll,
                                          progressColor: Colors.orange,
                                        ),
                                      ),
                                    ),

                                    MaterialButton(
                                      onPressed: () {},
                                      child: Text('ADD TO CART',
                                          style:
                                              TextStyle(color: Colors.white)),
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
                                  Text(
                                    'PREVIOUSE PAGE',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text('1'),
                                  Text(
                                    '/',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    '50',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    'NEXT PAGE',
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                    color: Colors.orange,
                                  )
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
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Text('POPULARITY',
                                        style: TextStyle(color: Colors.white)),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Divider(),
                                Text(
                                  'FILTER',
                                  style: TextStyle(color: Colors.white),
                                )
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
                                    padding: const EdgeInsets.only(
                                        top: 8, bottom: 8),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Recently Viewed'),
                                              Text(
                                                'SEE ALL',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.orange),
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: gazamDataList.length,
                                      itemBuilder: (context, index) {
                                        return Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.33,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.23,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 5),
                                                  child: Image.network(
                                                    gazamDataList[index]
                                                        .ImageUrl,
                                                    // width: 80,
                                                  ),
                                                ),
                                                Text(
                                                    gazamDataList[index].title),
                                                Row(
                                                  children: [
                                                    Text(
                                                      'N',
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                        gazamDataList[index]
                                                            .price,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
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
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Groceries Online In Nigeria',
                                  style: TextStyle(fontSize: 16)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  'Do You need to get some dailty use item for yourself and your family Discouver groceries in nigeria on njumia . we '),
                            )
                          ],
                        )),
                      )
                      //
                    ],
                  ),
                ),
              ),

              // yaha par model data gridView me show kia he

              // Container(
              //                 width: MediaQuery.of(context).size.width,
              //                 height: MediaQuery.of(context).size.height * 0.04,

              //                 child: Row(
              //                   children: [

              // Container(
              //   child: Column(children: [
              //       Icon(Icons.arrow_back_ios,color: Colors.grey,size: 12,),
              //                     Text('PREVIOUS PAGE',style:TextStyle(color: Colors.grey)),
              //   ],),
              // ),
              // Container(
              //   child: Column(children: [
              //       Icon(Icons.arrow_back_ios,color: Colors.grey,size: 12,),
              //                     Text('PREVIOUS PAGE',style:TextStyle(color: Colors.grey)),
              //   ],),
              // ),
              //                   ],
              //                 ),
              //               )
            ],
          ),
        ));
  }
}
