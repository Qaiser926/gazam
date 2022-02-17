import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jumia/homeScreenPage/homePage.dart';
import 'package:jumia/theme/color.dart';

class JumiaPrimePage extends StatefulWidget {
  @override
  _JumiaPrimePageState createState() => _JumiaPrimePageState();
}

class _JumiaPrimePageState extends State<JumiaPrimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: JColor.backgroundColor,
        body: Container(
          
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top:8),
          child: Container(
             width: double.infinity,
              color: Colors.white,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FirstJumiaPrimeContainerPage(),));
              },
              child: Card(
                 
                  // height: MediaQuery.of(context).size.height*0.3,
            
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width:MediaQuery.of(context).size.width*0.4,    
                            height:MediaQuery.of(context).size.height*0.3,    
                                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Welcome to',
                                    style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.w500)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Row(
                                    children: [
                                      Text('JUMIA'),
                                      Text('PRIME',
                                          style: TextStyle(color: Colors.amber)),
                                    ],
                                  ),
                                ),
                                Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Text(
                                          'jumia prime member benefit from their jumia order',style:TextStyle(fontSize: 13)),
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(children:[
            
                                        Text('\$,',style:TextStyle(fontWeight: FontWeight.bold)),
                                        Text('333',style:TextStyle(fontWeight: FontWeight.bold)),
                                        Text(' per month',style:TextStyle(fontWeight: FontWeight.bold)),
                                      ]),
                                    )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width:MediaQuery.of(context).size.width*0.4,    
                            height:MediaQuery.of(context).size.height*0.3, 
                              child: Image.network(
                            'https://tse3.mm.bing.net/th?id=OIP.nXBslPUCxjh1k2hTV7JBHAHaEo&pid=Api&P=0&w=246&h=154',
                        fit: BoxFit.cover, )),
                        ),
                      )
                    ],
                  )),
            ),
          ),
        )
      ]),
    ));
  }
}
