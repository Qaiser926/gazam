import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jumia/commonFolder/modelDataClass.dart';

class JumiaFoodHomePage extends StatefulWidget {

  @override
  _JumiaFoodHomePageState createState() => _JumiaFoodHomePageState();
}

class _JumiaFoodHomePageState extends State<JumiaFoodHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
 appBar: AppBar(
        title: Text('Daily Deals'),
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
      body:Container(
        child: ListView(
          children: [
            SizedBox(height: 6,),
            // carosel slider
            Card(
              elevation: 0.6,
              // width: MediaQuery.of(context).size.width,
              child: // carousel slider
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // color: Colors.blue[100],
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8, right: 8),
                            child: Text('Refer & Earn'),
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


          ],
        ),
        )
    );
  }
}