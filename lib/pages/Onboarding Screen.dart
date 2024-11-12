import 'package:finance_mate/pages/LoginPage.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.13,),
            child: Center(
              child: Image.asset("lib/assets/Logo_2.png",
              height: MediaQuery.of(context).size.height*0.25
              ),
            ),
          ),
          SizedBox(height: 80,),


          Container(
            height: MediaQuery.of(context).size.height*0.15,
            width: MediaQuery.of(context).size.width*0.7,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.black, width: 2),
            ),
            child: Center(
              child: Text("Take control of your finances with FinanceMate. Track spending, set budgets, and save smarter.",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
          SizedBox(height: 80,),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Loginpage();
              }));
            },
            child: Container(
              height: MediaQuery.of(context).size.height*0.068,
              width: MediaQuery.of(context).size.width*0.8,

              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(color: Colors.blueGrey)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Get Started",
                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold
                  ),

                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
