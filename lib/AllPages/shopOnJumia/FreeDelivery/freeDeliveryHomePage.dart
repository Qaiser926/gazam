import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jumia/commonFolder/modelDataClass.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FreeDeliveryHomePage extends StatefulWidget {
  @override
  _FreeDeliveryHomePageState createState() => _FreeDeliveryHomePageState();
}

class _FreeDeliveryHomePageState extends State<FreeDeliveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Free Delivery'),
        centerTitle: true,
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
        child: ListView(
          children: [
            Container(
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome To',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              'images/jumialogo.png',
                              width: 60,
                            ),
                            Text(
                                'Jumia Prime member benefit from unlimited free and fast delivery on all'),
                            Row(
                              children: [
                                _NSimble(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Text('333 per monterh'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Image.network(
                        'https://media.istockphoto.com/photos/free-shipping-picture-id183322339',
                        width: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              // height: MediaQuery.of(context).size.height * 0.28,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                child: Column(
                  children: [
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
          
            main_blackcontainer('Unilever','SEE ALL'),
            
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
                 SizedBox(
              // height: MediaQuery.of(context).size.height * 0.28,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                child: Column(
                  children: [
                    // data show on row from model
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ListView.builder(
                          // shrinkWrap: true,
                          // physics:ScrollPhysics(),
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: gazamDataList.length,
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
          

main_blackcontainer('Nivea', 'SEE ALL'),

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
        
        
main_blackcontainer('DeFacto', 'SEE ALL'),


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
        
        
main_blackcontainer('Pernod Ricard', 'SEE ALL'),


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
                                      // Text(gazamDataList[index].title)
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
    child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('More Details',style: TextStyle(fontSize: 20),),
          )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("""Jumia Prime is a membership program offering free delivery on all Jumia Orders and all Jumia Food orders. Members enjoy access to extra discounts & Prime-only deals. Jumia Prime members save a lot! Free Delivery with Jumia: All Local Items, excluding Jumia Global Items and Bulky Products."""),
        ),
        
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
                   
      ],
    ),
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


        
          ],
        ),
      ),
    );
  }

  Container main_blackcontainer(String title, String seeall) {
    return Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,style: TextStyle(color: Colors.white),),
                  Text(
      seeall,
      style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold,color: Colors.white),
    )
                ],
              ),
            ),
          );
  }
}

Text _NSimble() => Text(
      'N',
      style: TextStyle(
          decoration: TextDecoration.lineThrough, fontWeight: FontWeight.bold),
    );


