

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jumia/AllPages/DEAL_OF_DAY/detailhomePage.dart';
import 'package:jumia/AllPages/Row4rth/allvoucherHomepage.dart';
import 'package:jumia/AllPages/Row4rth/googleplayHomePage.dart';
import 'package:jumia/AllPages/Row4rth/itunesHomePage.dart';
import 'package:jumia/AllPages/Row4rth/microsoftHomePage.dart';
import 'package:jumia/AllPages/bettingRow/betwayHomePage.dart';
import 'package:jumia/AllPages/firstRow/airTimeHomePage.dart';
import 'package:jumia/AllPages/firstRow/electricityHomePage.dart';
import 'package:jumia/AllPages/firstRow/internationalpayment.dart';
import 'package:jumia/AllPages/rowFifth/donateHomePage.dart';
import 'package:jumia/AllPages/rowFifth/investHomePage.dart';
import 'package:jumia/AllPages/rowFifth/jumiaprimeHomePage.dart';
import 'package:jumia/AllPages/secondRow/bettingHomePage.dart';
import 'package:jumia/AllPages/secondRow/flightHomePage.dart';
import 'package:jumia/AllPages/secondRow/governmentHomePage.dart';
import 'package:jumia/AllPages/secondRow/loanHomePage.dart';
import 'package:jumia/AllPages/shopOnJumia/FreeDelivery/freeDeliveryHomePage.dart';
import 'package:jumia/AllPages/shopOnJumia/dailyDealHome/dailDealHomePage.dart';
import 'package:jumia/AllPages/shopOnJumia/fashionPage/fashionHomepage.dart';
import 'package:jumia/AllPages/shopOnJumia/flashSaleHomePage.dart';
import 'package:jumia/AllPages/shopOnJumia/phone_and_tablet/phoneTabletHomePage.dart';
import 'package:jumia/AllPages/shopOnJumia/supermarketHomePage.dart';
import 'package:jumia/AllPages/shopOnJumia/tvs_and_electronic/tvElectronicHomePage.dart';
import 'package:jumia/AllPages/sixthRow/playStationHomePage.dart';
import 'package:jumia/AllPages/thirdRow/dstveHomepage.dart';
import 'package:jumia/AllPages/thirdRow/gotvHomepage.dart';
import 'package:jumia/AllPages/thirdRow/montageHomePage.dart';
import 'package:jumia/AllPages/thirdRow/showmaxHomePage.dart';
import 'package:jumia/AllPages/thirdRow/startTimeHomePage.dart';
import 'package:jumia/commonFolder/dataClass.dart';
import 'package:jumia/commonFolder/modelDataClass.dart';
import 'package:jumia/homeScreenPage/jumiaStoreCridit/accesswithphone.dart';
import 'package:jumia/homeScreenPage/jumiaStoreCridit/loginwithEmail.dart';

import 'AllPages/firstRow/dataHomePage.dart';
import 'AllPages/secondRow/busbookHOmePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          'images/jumialogo.png',
          width: 90,
        ),
      ),
      body: Container(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,

          
          children: [
            Container(
              color: Colors.blue[600],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        children: [
                          // Image.asset('images/seebalacelogo.jpg',color: Colors.white,width: 40,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => loginWithEmail(),));
                            },
                            child: Text('Gazam Store Credit',style: TextStyle(color: Colors.white),)),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                        onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => loginWithEmail(),));
                            },
                      child: Text('SIGN IN',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13),)),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:gazamDataList.length,
                itemBuilder: (context,index){
                return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 0.5,
                  child: Container(
                  width: MediaQuery.of(context).size.width*0.85,
              height: MediaQuery.of(context).size.height * 0.28,
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(15)),
                  child: Image.network(gazamDataList[index].ImageUrl),
                ),
                );
              })
              
            ),
            // row first
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Card(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      children: [

                       firstRow_itemModel('Airtime', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => MainHomeMTNPage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Data', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DataHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Electricity', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => ElectricityHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Internet', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => MainHomeMTNPage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('International Payment', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => InternationTopUp()));
                       }, Icons.mobile_off),
                      ],
                    ),
                  ),
                ),
              ),
            ),
           // row second
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Card(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      children: [
                       firstRow_itemModel('Loans', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => LoanHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Bus Book', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => BusBookingHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Flights', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => FlightHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Betting', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => BettingHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Governmenet', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => GovernmentHomePage()));
                       }, Icons.mobile_off),
                      ],
                    ),
                  ),
                ),
              ),
            ),
           
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('TV SUBSCRIPTIONS - N50 CASHBACK, USE CODE TVNGN50',style: TextStyle(fontSize: 12,color: Colors.blue,letterSpacing: 1),),
           ),
             
             // row three
               Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Card(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      children: [
                       firstRow_itemModel('DSTV', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DstvHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('GOTV', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => GotvHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('SHOWMAX', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => ShowMaxHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('StartTimes', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => StartTimeHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Montage', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => MontageHomePage()));
                       }, Icons.mobile_off),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('VOUCHER CODES, COUPLE & LICENSE KEYS',style: TextStyle(fontSize: 12,color:Colors.blue,letterSpacing: 1),),
            ),

// row four
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Card(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      children: [
                       firstRow_itemModel('iTunes', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => ItunesHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Google play', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => GooglePlayHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Microsoft', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => MicrosoftHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('All Vouch', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => AllvoucherHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       
                      ],
                    ),
                  ),
                ),
              ),
            ),
          
           
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('LIFESTYLE OFFERINGS',style: TextStyle(fontSize: 12,color:Colors.blue,letterSpacing: 1),),
            ),


                      Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('GAM15',style: TextStyle(fontSize: 12,color:Colors.blue,letterSpacing: 1),),
            ),

// row five
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Card(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      children: [
                       firstRow_itemModel('Jumia Prime', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => GazamPrim()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Donate', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DonatHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Invest', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => InvestHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Groceries', (){
                        //  Navigator.push(context, MaterialPageRoute(builder: (context) => MainHomeMTNPage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                         Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('15% CASHBACK ON GAMING , USE CODE:',style: TextStyle(fontSize: 12,color:Colors.blue,letterSpacing: 1),),
            ),
             
                      ],
                    ),
                  ),
                ),
              ),
            ),
          // row six

                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Card(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      children: [
                       firstRow_itemModel('PlayStation', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => PlayStationHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('PUBG', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => PlayStationHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       
                      ],
                    ),
                  ),
                ),
              ),
            ),
    
                       
                      Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('BETTING',style: TextStyle(fontSize: 12,color:Colors.blue,letterSpacing: 1),),
            ),
            // row seven
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Card(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      children: [
                       firstRow_itemModel(' Betway', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => RowsevenBetingHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Bet9ja', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => RowsevenBetingHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('1xBet', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => RowsevenBetingHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('BetKing', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => RowsevenBetingHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('AccessBET', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => RowsevenBetingHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                      
           
                      ],
                    ),
                  ),
                ),
              ),
            ),
          
          
                      
                         Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('SHOP ON JUMIA',style: TextStyle(fontSize: 12,color:Colors.blue,letterSpacing: 1),),
            ),
            // row eigth
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.13,
                child: Card(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      
                      children: [
                       firstRow_itemModel('Flash Sale ', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => FlashSaleHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Supermarket', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SupermarketHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Daily Deals', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => DailyDealHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Free Delivery', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => FreeDeliveryHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Fashion', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => FashionHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('Phone & Tablet', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneTabletHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                       firstRow_itemModel('TVS & Electronics', (){ 
                         Navigator.push(context, MaterialPageRoute(builder: (context) => TvElectronicHomePage()));
                       }, Icons.mobile_off),
                       SizedBox(
                         width:30 ,
                       ),
                     
                    
                       
                      ],
                    ),
                  ),
                ),
              ),
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'DEAL OF THE DAY',
                        style: TextStyle(color: Colors.blue, letterSpacing: 1),
                      ),
                    )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DailyDealHomePage(),));
                        },
                        child: Text('SEE MORE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.orange,letterSpacing: 1),)),
                    )
              ],
            ),
              
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
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.23,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailHomePage(
                                    fetchData: gazamDataList[index],
                                  )));
                        },
                        child: Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              Image.network(gazamDataList[index].ImageUrl),
                              Divider(),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(gazamDataList[index].title,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500)),
                                  )),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text('N ',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue)),
                                  ),
                                  Text(
                                    gazamDataList[index].price,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text('N ',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.grey)),
                                  ),
                                  Text(gazamDataList[index].discount,
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey)),
                                ],
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('AMAZING DEALS',style: TextStyle(fontSize:12,color: Colors.blue,letterSpacing: 1),),
            ),
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
             )
          
          ],
        ),
      ),
    );
    
  }

  Padding firstRow_itemModel(String title,Function onprss, IconData icon,) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: InkWell(
        onTap: onprss,
        child: Column(
          children: [
            // Text('slider'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 11),
            )
          ],
        ),
      ),
    );
  }
  // Widget buildAnimatedText(String text)=>
  //     Container(
  //       height: 40,
  //       width: double.infinity,
  //       color: Colors.amber,
  //       // decoration: BoxDecoration(
  //       //   color: Colors.amber,
  //       //   borderRadius: BorderRadius.circular(10),
  //       // ),
  //       child: Marquee(
  //         text:text,
  //         style: TextStyle(fontSize: 20,color: Colors.red,
  //           fontWeight: FontWeight.bold,
  //         ),
  //         blankSpace: 100,
  //         velocity: 30,
  //         pauseAfterRound: Duration(seconds: 2),
  //       ),
  //     );
       Padding _rowDatawithMarteeText(String title,Function onprss, IconData icon,String animatedText) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: InkWell(
        onTap: onprss,
        child: Column(
          children: [
            // buildAnimatedText(animatedText),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 11),
            )
          ],
        ),
      ),
    );
}}


//  _rowDatawithMarteeText('Airtime', () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => MainHomeMTNPage()));
//                           }, Icons.mobile_off, 'CASHBACK 4% '),
//                           SizedBox(
//                             width: 30,
//                           ),
//                           _rowDatawithMarteeText('Data', () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => DataHomePage()));
//                           }, Icons.mobile_off, '4%CASHBACK '),
//                           SizedBox(
//                             width: 30,
//                           ),
//                           _rowDatawithMarteeText(
//                               'Electricity', () {}, Icons.mobile_off, 'NO FEE'),
//                           SizedBox(
//                             width: 30,
//                           ),
//                           _rowDatawithMarteeText('Internet', () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => MainHomeMTNPage()));
//                           }, Icons.mobile_off, 'NO FEE'),
//                           SizedBox(
//                             width: 30,
//                           ),
//                           _rowDatawithMarteeText('International Payment', () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => MainHomeMTNPage()));
//                           }, Icons.mobile_off, '20% CASHBACK'),