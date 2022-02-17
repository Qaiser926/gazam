

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:jumia/homeScreenPage/jumiaStoreCridit/loginwithEmail.dart';
import 'package:jumia/theme/color.dart';

class AccessWithPhonePage extends StatelessWidget {
       final requiredValidator = RequiredValidator(errorText: 'this field is required');  
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
            Text('What is your Phone number',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child:
                  Text('Type your email to login or create a Jumia account.'),
            ),
            SizedBox(
              height: 20,
            ),
            // phone number editor with country code
   InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: TextStyle(color: Colors.black),
              initialValue: number,
              textFieldController: controller,
              formatInput: false,
              keyboardType:
                  TextInputType.numberWithOptions(signed: true, decimal: true),
              inputBorder: OutlineInputBorder(),
              onSaved: (PhoneNumber number) {
                print('On Saved: $number');
              },
            ),
         
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(minWidth: double.infinity,onPressed: (){},child: Text('Access',style:TextStyle(color: Colors.white)),color: Colors.orange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: InkWell(
                 onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => loginWithEmail(),));
                },
                child: Text('Access with email address',style:TextStyle(color: Colors.orange))),
            ),
            SizedBox(height: 20,),
            Image.asset('images/jumialogo.png',width: 120,),
          ],
        ),
        
        ),
        );
  }
}
