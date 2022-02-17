
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jumia/commonFolder/dataClass.dart';

import 'package:jumia/commonFolder/modelDataClass.dart';

class DetailHomePage extends StatefulWidget {
  final modelDataClass fetchData;

  DetailHomePage({
    Key key,
    this.fetchData,
  }) : super(key: key);

  @override
  State<DetailHomePage> createState() => _DetailHomePageState();
}

class _DetailHomePageState extends State<DetailHomePage> {
  final List<modelDataClass> gazamDataList = List.generate(
      GazamDataClass.itemName.length,
      (index) => modelDataClass(
            '${GazamDataClass.url[index]}',
            '${GazamDataClass.title[index]}',
            '${GazamDataClass.price[index]}',
            '${GazamDataClass.discount[index]}',
            '${GazamDataClass.des[index]}',
            '${GazamDataClass.subDes[index]}',
            '${GazamDataClass.verify[index]}',
            '${GazamDataClass.verifyRating[index]}',
            '${GazamDataClass.percentageDiscount[index]}',
            '${GazamDataClass.promotionDetial[index]}',
            '${GazamDataClass.iconData[index]}',
            '${GazamDataClass.gazamDetail[index]}',
            '${GazamDataClass.prodectDetailDescription[index]}',
            '${GazamDataClass.selerInfoScore[index]}',
            '${GazamDataClass.orderFulfillmentRate[index]}',
            '${GazamDataClass.qualityScore[index]}',
            '${GazamDataClass.customerRat[index]}',
            '${GazamDataClass.comment[index]}',
            '${GazamDataClass.follower[index]}',
            '${GazamDataClass.dayWisedata[index]}',
    
            
          ));
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String selectedValue = null;
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(widget.fetchData.title),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.cancel),
                )),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Card(
                      elevation: 0.6,
                      child: Image.network(widget.fetchData.ImageUrl)),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Card(
                    elevation: 0.5,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.fetchData.des,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                                textAlign: TextAlign.justify,
                              ),
                            )),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 4),
                              child: Text(
                                'N',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              widget.fetchData.price,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(widget.fetchData.subDes),
                            )),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Row(
                              children: [
                                // rating bar
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  itemSize: 13,
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
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  widget.fetchData.verifyRating,
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text(
                                  ')',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                // favoriteButton
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: FavoriteButton(
                                    iconSize: 25,
                                    isFavorite: false,
                                    // iconDisabledColor: Colors.white,
                                    valueChanged: (_isFavorite) {
                                      // print('Is Favorite : $_isFavorite',);
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
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('PROMOTIONS',
                          style: TextStyle(color: Colors.grey)),
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // width: MediaQuery.of(context).size.widt,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  widget.fetchData.ImageUrl,
                                  width: 25,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 9),
                                child: Text(
                                  widget.fetchData.promotionDetial,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.blue),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // width: MediaQuery.of(context).size.widt,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  widget.fetchData.ImageUrl,
                                  width: 25,
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.85,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 9),
                                child: Text(
                                  widget.fetchData.promotionDetial,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.blueAccent),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'DELIVERY & RETURNS',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.455,
                  child: Card(
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                      child: Image.asset(
                                    'images/jumialogo.png',
                                    width: 60,
                                  )),
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      child: Text(
                                        widget.fetchData.gazamDetail,
                                        style: TextStyle(fontSize: 13),
                                      )),
                                ],
                              ),
                            )),
                        Divider(),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Choose your location'),
                            )),
                        // drop down list
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          width: double.infinity,
                          child: DropdownButton(
                            // Initial Value
                            value: dropdownvalue,

                            // Down Arrow Icon
                            icon: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                    '                                                                   '),
                                const Icon(Icons.keyboard_arrow_down),
                              ],
                            ),

                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownvalue = newValue;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          width: double.infinity,
                          child: DropdownButton(
                            // Initial Value
                            value: dropdownvalue,

                            // Down Arrow Icon
                            icon: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                    '                                                                   '),
                                const Icon(Icons.keyboard_arrow_down),
                              ],
                            ),

                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownvalue = newValue;
                              });
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.network(
                                widget.fetchData.ImageUrl,
                                width: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  child: Text(
                                    widget.fetchData.gazamDetail,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.network(
                                widget.fetchData.ImageUrl,
                                width: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  child: Text(widget.fetchData.gazamDetail),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'PRODUCT DETAILS',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  //  height: MediaQuery.of(context).size.height*0.2,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Description'),
                              Icon(
                                Icons.arrow_back_ios_new,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.fetchData.prodectDetailDescription,
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // show model data on listview
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Customer also viewed'),
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
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.23,
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
                                        ],
                                      ));
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'VERIEIED CUSTOMER FEEDBACK',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                // comment portion
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Product Rating & Review',
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 13,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.orange)),
                                  child: Row(
                                    children: [
                                      Text(widget.fetchData.follwer,
                                          style:
                                              TextStyle(color: Colors.orange)),
                                      Text(
                                        '/',
                                        style: TextStyle(color: Colors.orange),
                                      ),
                                      Text(widget.fetchData.follwer,
                                          style:
                                              TextStyle(color: Colors.orange)),
                                    ],
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(widget.fetchData.verifyRating),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        RatingBar.builder(
                          initialRating: 5,
                          minRating: 1,
                          itemSize: 11,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 3),
                          child: Text(widget.fetchData.comment),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 3),
                          child: Text(widget.fetchData.comment),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 3,right: 8,bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.fetchData.verify),
                              Text(widget.fetchData.comment),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          
// show data on model class 
             Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('you may also like'),
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
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.23,
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
                                        ],
                                      ));
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text('SELLER INFORMATION',style: TextStyle(color: Colors.grey),),
),
Container(
  width: MediaQuery.of(context).size.width,
  child: Card(
    child: Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
        padding: const EdgeInsets.only(left: 8,top: 8),
        child: Text('Jumia'),
      ),
      Divider(),
      Padding(
        padding: const EdgeInsets.only(left: 8,top: 3,bottom: 8),
        child: Text(widget.fetchData.selerInfoScore),
      ),
    ],),
  ),

),

Container(
  width: MediaQuery.of(context).size.width,
  child: Card(
   child: Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text('Report incorrect product information',style: TextStyle(color: Colors.blue),),
   ),
  ),

),
Container(
  width: MediaQuery.of(context).size.width,
  child: Card(
    child:Row(
      
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.phone,color: Colors.orange,),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: MaterialButton(
           
            onPressed: (){},color: Colors.orange,child:
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.shopping_cart,color: Colors.white,),
              Text('ADD TO CART',style: TextStyle(color: Colors.white,letterSpacing: 1),)
            ],
          ),),
        )
      ],
    )
  ),

),
          
// show data on model class 
             Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Sponsored products'),
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
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.23,
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
                                        ],
                                      ));
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

          
// show data on model class 
             Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Recently Viewed'),
                             Text('SEE ALL',style: TextStyle(fontSize: 11,color: Colors.orange,fontWeight: FontWeight.bold),),
                            ],
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
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.23,
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
                                        ],
                                      ));
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

             ],
            ),
          ),
        ));
  }
}
