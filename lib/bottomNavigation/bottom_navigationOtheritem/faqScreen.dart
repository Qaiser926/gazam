import 'package:flutter/material.dart';
var data = {
  "01/01/2018": [
    ["CocaCola", "\$ 5"],
    ["Dominos Pizza", "\$ 50"],
  ],

  "04/01/2018": [
    ["Appy Fizz", "\$ 10"],
    ["Galaxy S9+", "\$ 700"],
    ["Apple iPhone X", "\$ 999"],
  ],
};

List<String> dataKeys = data.keys.toList();

String getFullDate(String date) {
  List<String> dateSplit = date.split('/');
  List<String> months = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"];
  return "${dateSplit[0]} ${months[int.parse(dateSplit[1]) - 1]} ${dateSplit[2]}";
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> _buildList(int keyIndex) {
    List<Widget> list = [];

    for (int i = 0; i < data[dataKeys[keyIndex]].length; i++) {
      list.add(
          new Row(
            children: <Widget>[
              new CircleAvatar(
                child: new Icon(Icons.verified_user),
                radius: 20.0,
              ),
              // new Text(data[dataKeys[keyIndex]][i][0])
            ],
          )
      );
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Expense Monitor"),
        ),
        body: new Container (
            child: new ListView.builder(
                itemCount: dataKeys.length,
                itemBuilder: (BuildContext context, int keyIndex) {
                  return new Card(
                    child: new ExpansionTile(
                        title: new Text(getFullDate(dataKeys[keyIndex])),
                        children: <Widget>[
                          new Column(
                              children: _buildList(keyIndex)
                          )
                        ]
                    ),
                  );
                }
            )
        )
    );
  }
}