import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jumia/bottomNavigation/youScreen.dart';



class CountrySelection extends StatelessWidget {
  const CountrySelection({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Country Selection"),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text("CONTINUE",style: TextStyle(fontSize: 15),))
            ],
          ),
          leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),


        ),
        body:  MyStatefulWidget(),
      ),
    );
  }
}

enum SingingCharacter { nigeria, egypt,ghana,morocco,kenya,cotedlvoire,tunisia,uganda}

class MyStatefulWidget extends StatefulWidget {

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter _character = SingingCharacter.nigeria;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text("Tell us your location to customize your GazamPay experience"),
          ),
          Container(
            height: 330,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                blurRadius: 30,
                offset: Offset(3,3),
                color: Colors.black.withOpacity(0.2),
              )]

            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  RadioListTile<SingingCharacter>(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Nigeria'),
                        CircleAvatar(
                          child: Image.asset("images/gift.png"),
                        )
                      ],
                    ),

                    value: SingingCharacter.nigeria,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  RadioListTile<SingingCharacter>(
                    title:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Egypt'),
                        CircleAvatar(
                          child: Image.asset("images/gift.png"),
                        )
                      ],
                    ),

                    value: SingingCharacter.egypt,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  RadioListTile<SingingCharacter>(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ghana'),
                        CircleAvatar(
                          child: Image.asset("images/gift.png"),
                        )
                      ],
                    ),

                    value: SingingCharacter.ghana,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  RadioListTile<SingingCharacter>(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Morocco'),
                        CircleAvatar(
                          child: Image.asset("images/gift.png"),
                        )
                      ],
                    ),

                    value: SingingCharacter.morocco,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  RadioListTile<SingingCharacter>(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Kenya'),
                        CircleAvatar(
                          child: Image.asset("images/gift.png"),
                        )
                      ],
                    ),

                    value: SingingCharacter.kenya,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  RadioListTile<SingingCharacter>(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Coto d'lvoire"),
                        CircleAvatar(
                          child: Image.asset("images/gift.png"),
                        )
                      ],
                    ),

                    value: SingingCharacter.cotedlvoire,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  RadioListTile<SingingCharacter>(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tunisia'),
                        CircleAvatar(
                          child: Image.asset("images/gift.png"),
                        )
                      ],
                    ),

                    value: SingingCharacter.tunisia,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  RadioListTile<SingingCharacter>(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Uganga'),
                        CircleAvatar(
                          child: Image.asset("images/gift.png"),
                        )
                      ],
                    ),

                    value: SingingCharacter.uganda,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),

                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: FlatButton(
                height: 40,
                minWidth: double.infinity,
                color: Colors.blue,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>personalInfo()));
                },
                child: Text("CHANGE MY COUNTRY",
                  style: TextStyle(color: Colors.white,
                  ),
                )),
          )

        ],
      ),
    );
  }
}

