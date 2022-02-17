import 'package:flutter/material.dart';

class SearchBarPage extends StatefulWidget {

  @override
  _SearchBarPageState createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daily Deals'),
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
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height*0.1,
        child: Card(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                   onTap: () {
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back)),
              ),
              
              Container(
                width: MediaQuery.of(context).size.width*0.75,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    hintText: 'Search product, brand and categories'
                  ),
                ),
              ),
              Divider(),
                Padding(
                padding: const EdgeInsets.only(right: 5,left: 5),
                child: Icon(Icons.search),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}