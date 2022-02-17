import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jumia/AllPages/shopOnJumia/FreeDelivery/freeDeliveryHomePage.dart';
import 'package:jumia/AllPages/shopOnJumia/dailyDealHome/jumiaFood/jumiaFoodHomePage.dart';
import 'package:jumia/AllPages/shopOnJumia/dailyDealHome/searchBarPage.dart';
import 'package:jumia/AllPages/shopOnJumia/fashionPage/fashionHomepage.dart';
import 'package:jumia/AllPages/shopOnJumia/phone_and_tablet/phoneTabletHomePage.dart';
import 'package:jumia/commonFolder/modelDataClass.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../flashSaleHomePage.dart';


  Text seeAllButton() => Text(
        'SEE ALL',
        style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
      );

  Text _NSimble() => Text(
        'N',
        style: TextStyle(
            decoration: TextDecoration.lineThrough,
            fontWeight: FontWeight.bold),
      );


class GoToHomePageButton extends StatefulWidget {
  @override
  _GoToHomePageButtonState createState() => _GoToHomePageButtonState();
}

class _GoToHomePageButtonState extends State<GoToHomePageButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Daily Deals'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.cancel,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchBarPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height*0.05,
                  // child: ListTile(
                  //   leading: Icon(Icons.search),
                  //   title:
                  // )),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Icon(Icons.search),
                      ),
                      Text(
                        'Search product, brand and categories',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            // Card(
            //   elevation: 0.6,
            //   // width: MediaQuery.of(context).size.width,
            //   child: // carousel slider
            //       CarouselSlider(
            //     options: CarouselOptions(
            //       // height: 180.0,
            //       autoPlay: true,
            //       // enlargeCenterPage: true,
            //       aspectRatio: 16 / 7,
            //     ),
            //     items: gazamDataList.map((fileImage) {
            //       return Builder(
            //         builder: (BuildContext context) {
            //           return Container(
            //             margin: EdgeInsets.all(5.0),
            //             child: GestureDetector(
            //               child: Image.network(
            //                 fileImage.ImageUrl,
            //                 // width: 10000,
            //                 fit: BoxFit.cover,
            //               ),
            //               onTap: () {
            //                 // Navigator.of(context).push(MaterialPageRoute(
            //                 //     builder: (context) => DetailHomePage(
            //                 //           fetchData: gazamDataList[index],
            //                 //         )));
            //               },
            //             ),
            //           );
            //         },
            //       );
            //     }).toList(),
            //   ),
            // ),
              Container(
               child:Card(
                 child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children:[
                       Padding(
                         padding: const EdgeInsets.all(3),
                         child: Container(
                           width: MediaQuery.of(context).size.width*0.5,
                           child: InkWell(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => FlashSaleHomePage(),));
                             },
                             child: Image.network('https://media.istockphoto.com/photos/neon-flash-sale-banner-discount-product-advertising-marketing-banner-picture-id1204428300',width: 200,))),
                       ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                         width: MediaQuery.of(context).size.width*0.5,
                        child: InkWell(
                            onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => FreeDeliveryHomePage(),));
                             },
                          child: Image.network('https://media.istockphoto.com/photos/free-delivery-picture-id1299122664',width: 200,fit: BoxFit.fitHeight,))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                         width: MediaQuery.of(context).size.width*0.5,
                        child: InkWell(
                           onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneTabletHomePage(),));
                             },
                          child: Image.network('https://media.istockphoto.com/photos/mobile-kit-with-smartphone-headphones-and-chargers-picture-id1156397327',width: 200,fit: BoxFit.fitHeight,))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                         width: MediaQuery.of(context).size.width*0.5,
                        child: InkWell(
                           onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => FashionHomePage(),));
                             },
                          child: Image.network('https://images.unsplash.com/photo-1605859465655-84c45e14a0af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80',width: 200,fit: BoxFit.fitHeight,))),
                    ),
                     ]
                   ),
                 ),
               )
             ),
          
            // shop every thing in this container
            Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height*0.3,
              child: Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 6,
                            top: 6,
                          ),
                          child: Column(
                            children: [
                              Image.network(
                                'https://media.istockphoto.com/photos/free-shipping-picture-id183322339',
                                width: 60,
                              ),
                              Text(
                                'Free Delivery',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            top: 6,
                          ),
                          child: Column(
                            children: [
                              Image.network(
                                'https://media.istockphoto.com/photos/free-shipping-picture-id183322339',
                                width: 60,
                              ),
                              Text(
                                'Official Store',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            top: 6,
                          ),
                          child: Column(
                            children: [
                              Image.network(
                                'https://media.istockphoto.com/photos/free-shipping-picture-id183322339',
                                width: 60,
                              ),
                              Text(
                                'Borrow Money',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Padding(

                          padding: const EdgeInsets.only(
                            left: 8,
                            top: 6,
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => JumiaFoodHomePage(),));
                                },
                                child: Image.network(
                                  'https://media.istockphoto.com/photos/free-shipping-picture-id183322339',
                                  width: 60,
                                ),
                              ),
                              Text(
                                'Jumia Food',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 6,
                              top: 6,
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                  'https://media.istockphoto.com/photos/free-shipping-picture-id183322339',
                                  width: 60,
                                ),
                                Text(
                                  'Jumia Prime',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              top: 6,
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                  'https://media.istockphoto.com/photos/free-shipping-picture-id183322339',
                                  width: 60,
                                ),
                                Text(
                                  'Flash Sale',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              top: 6,
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                  'https://media.istockphoto.com/photos/free-shipping-picture-id183322339',
                                  width: 60,
                                ),
                                Text(
                                  'Accessories',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              top: 6,
                            ),
                            child: Column(
                              children: [
                                Image.network(
                                  'https://media.istockphoto.com/photos/free-shipping-picture-id183322339',
                                  width: 60,
                                ),
                                Text(
                                  'Phones',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

// red container
            Card(
              color: Colors.red,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Flash Sale',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'SEE ALL',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, bottom: 4),
                      child: Row(
                        children: [
                          Text('Time Left: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              )),
                          Text('23H:04m:00s',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

// horizantal container
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                child:
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
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.23,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: gazamDataList.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.26,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(gazamDataList[index].price,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                          // prograss bar
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 3),
                                                child: Text(
                                                  '20 items left',
                                                  style:
                                                      TextStyle(fontSize: 13),
                                                ),
                                              )),

                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 4),
                                              child: LinearPercentIndicator(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.3,
                                                lineHeight: 10.0,
                                                percent: 0.5,
                                                backgroundColor: Colors.grey,
                                                // linearStrokeCap: LinearStrokeCap.roundAll,
                                                linearStrokeCap:
                                                    LinearStrokeCap.roundAll,
                                                progressColor: Colors.orange,
                                              ),
                                            ),
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
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Don't Miss Out on these Offers!!!"),
                    ),
                    // data show on row from model
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                          // shrinkWrap: true,
                          // physics:ScrollPhysics(),
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image.network(
                                gazamDataList[index].ImageUrl,
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),

            // yaha par gridview me data show kia model see

            // top deal container
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Top Deal'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              )),
                          Container(
                            // width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height,
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                              ),
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Image.network(
                                            gazamDataList[index].ImageUrl),
                                      ),
                                      Text(gazamDataList[index].title),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text(
                                              'N',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text(
                                                gazamDataList[index].price),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text('-'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4, right: 4),
                                            child: Text(
                                              'N',
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(gazamDataList[index].price)
                                        ],
                                      ),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Shop from our Collection Now!'),
                          ),
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

            // 5000 store
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "N",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('5000 store'),
                          )
                        ],
                      ),
                    ),
                    // data show on row from model
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                          // shrinkWrap: true,
                          // physics:ScrollPhysics(),
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image.network(
                                gazamDataList[index].ImageUrl,
                              ),
                            );
                          }),
                    ),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Text('Top Categories'),
                                ),
                                Text(
                                  "N",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('5000 store'),
                                )
                              ],
                            ),
                          ),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Top Deal'),
                                Text(
                                  'SEE ALL',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                            ),
                            child: Row(
                              children: [_NSimble(), Text('500 Store')],
                            ),
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height,
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
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
                                      Text(gazamDataList[index].title),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          _NSimble(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 6, left: 6),
                                            child: Text(
                                                gazamDataList[index].price),
                                          ),
                                        ],
                                      ),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Top Categories (Treds)'),
                          ),
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
                                    Text('Top Deal'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text('Trends'),
                                  )),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Top Brends'),
                          ),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Top Categories (Official Store)'),
                          ),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Top Categories (Feel the Beat)'),
                          ),
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

            // yaha par gridview me data show kia model see is me discount b show ho raha
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Top Deal'),
                                Text(
                                  'SEE ALL',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                            ),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Feel the Beat')),
                          ),
                          Container(
                            // width: MediaQuery.of(context).size.width,
                            // height: MediaQuery.of(context).size.height,
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                              ),
                              itemCount: 4,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Stack(
                                          children: [
                                            Image.network(
                                                gazamDataList[index].ImageUrl),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10, right: 10),
                                                  child: Container(
                                                      width: 30,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3),
                                                          color: Colors
                                                              .orange[100]),
                                                      child: Center(
                                                          child: Text(
                                                        gazamDataList[index]
                                                            .percentageDiscount,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.orange),
                                                      ))),
                                                )),
                                          ],
                                        ),
                                      ),
                                      Text(gazamDataList[index].title),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          _NSimble(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 6, left: 6),
                                            child: Text(
                                                gazamDataList[index].price),
                                          ),
                                        ],
                                      ),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child:
                                    Text('Top Categories (Let Get Talking)')),
                          ),
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
                                    Text('Top Deal'),
                                    Text(
                                      'SEE ALL',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text('Let Get Talking'),
                                  )),
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

            // show only to item in this container
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Fast Delivery"),
                    ),
                    // data show on row from model
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                          // shrinkWrap: true,
                          // physics:ScrollPhysics(),
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Image.network(
                                gazamDataList[index].ImageUrl,
                              ),
                            );
                          }),
                    ),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Top Categories (Fast Delivery)'),
                          ),
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

            Container(
                child: Card(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Jumia : Online shoping in Nigeria -No 1 Shopping destination',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'gazam is oyour number one online shopoing site in Nigeria . we are an online store where you can purchease',
                    style: TextStyle(),
                  ),
                ),
              ]),
            ))
          ],
        ),
      ),
    );
  }
  }
