import 'package:flutter/material.dart';
import 'package:jumia/AllPages/shopOnJumia/dailyDealHome/GotoHomePageButton.dart';
import 'package:jumia/AllPages/shopOnJumia/supermarketHomePage.dart';
import 'package:jumia/commonFolder/modelDataClass.dart';

class DailyDealHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[200],

      appBar: AppBar(
        title: Text('Daily Deal'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.cancel,color: Colors.white,)),
          )
        ],

      ),
      body: Container(
        

        width: MediaQuery.of(context).size.width,
        child: Column(

          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network('https://media.istockphoto.com/photos/binocular-picture-id889090462',width: 80,),
            ),
             SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('No Result found'),
            ),
             SizedBox(
              height: 20,
            ),
            Text("Unforunately we couldn'tS find any product."),
             SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              onPressed: (){

Navigator.push(context, MaterialPageRoute(builder: (context) => GoToHomePageButton()));

              }, child: Text('GO TO HOMEPAGE',style:TextStyle(color:Colors.white))),
        
         SizedBox(
              height: 25,
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
}