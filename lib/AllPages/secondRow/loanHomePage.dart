import 'package:flutter/material.dart';
import 'package:jumia/homeScreenPage/jumiaStoreCridit/loginwithEmail.dart';

class LoanHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Loans'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){},
                child: Text('CONTINUE')),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'WOULD YOU LIKE TO APPLY FOR A LOAN?',
                  style: TextStyle(color: Colors.blue, letterSpacing: 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Get a loan'),
                        Radio(
                          value: 1,
                          groupValue: 1,
                          activeColor: Colors.blue,
                          onChanged: (val){
                            
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                color: Colors.grey.withOpacity(0.1),
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.privacy_tip_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Click here',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                          ' to access the most requently asked que.',
                          style: TextStyle(color: Colors.grey)),
                    ),
                  
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'JUMIAPAY AUTHENTICATON',
                      style: TextStyle(color: Colors.blue, letterSpacing: 1),
                    ),
                ),
              ),
              Container(
                 width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.grey.withOpacity(0.1),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('You have to login in order ot authorize your email to be shared with this service provide',style: TextStyle(fontSize: 15,color: Colors.black,height: 1.5,letterSpacing: 0.6),),
                        ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>loginWithEmail()));
                        }, child: Text('LOGIN TO CONTINUE',style: TextStyle(fontSize: 15,height: 1.5,letterSpacing: 0.6),)))
                      ],
                    ),

                  ),
                 
                ],),
              ),

               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: MaterialButton(onPressed: (){},child: Text('CONTINUE',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1)),color: Colors.blue,minWidth: double.infinity,),
               )
            ],
          ),
        ));
  }
}
