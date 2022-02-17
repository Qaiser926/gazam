
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:jumia/theme/color.dart';

import 'accesswithphone.dart';

class loginWithEmail extends StatelessWidget {
       final requiredValidator = RequiredValidator(errorText: 'this field is required');  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor:Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: JColor.backgroundColor,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Container(
            child: Column(
          children: [
            Center(child: Image.asset('images/starlogo.jpg', width: 120)),
            Text('What is your email address?',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child:
                  Text('Type your email to login or create a Jumia account.'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,left:10,right:10),
              child: TextFormField(
                 validator: requiredValidator,
                  cursorColor: Colors.red,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.red,
                    ),
                    labelText: 'Email',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  ),
                    // validator: EmailValidator(errorText: 'enter a valid email address')  
         ),

                  
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text('Type your email to login or Create an account',style:TextStyle(fontSize: 12,color: Colors.red)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(minWidth: double.infinity,onPressed: (){},child: Text('Access',style:TextStyle(color: Colors.white)),color: Colors.orange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccessWithPhonePage(),));
                },
                child: Text('Access with Phone number',style:TextStyle(color: Colors.orange))),
            ),
          ],
        ),
        
        ),
        );
  }
}
