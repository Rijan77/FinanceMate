import 'package:flutter/material.dart';

class Registrationpage extends StatefulWidget {
  const Registrationpage({super.key});

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: screenHeight*0.15,
                width: double.infinity,
                // color: Colors.black26,
                child: Row(
                    children: [
                  Image.asset("lib/assets/Logo_3.png", height: 80, width: 100,),
                    Text("Welcome to registration\n              page", style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      fontFamily:'rijan'
                    ),)
                    ]),
              ),
            ),
            Container(
              height: screenHeight*0.82,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
              ),
                child:
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 10, right: 10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1A3D6F), width: 2.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2.0)
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1A3D6F), width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2.0)
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1A3D6F), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2.0)
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1A3D6F), width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2.0)
                          )
                      ),
                    ),

                    SizedBox(height: 40,),

                    Container(
                      height: screenHeight*0.07,
                      width: screenWidth*0.7,

                      decoration: BoxDecoration(
                          color: Color(0xff1A3D6F),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomRight: Radius.circular(50))
                      ),
                      
                      child: Center(
                        child: Text("Sign Up", style: TextStyle(
                          fontSize: 25,
                            color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontFamily: "rijan",
                          letterSpacing: 2.0,
                        ),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("OR"),
                    SizedBox(height: 10,),
                    Container(
                      height: screenHeight*0.068,
                      width: screenWidth*0.85,
                      // color: Color(0xff3FA9F5),
                      decoration: BoxDecoration(
                          color: Color(0xff3FA9F5),
                          borderRadius: BorderRadius.circular(10)
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset("lib/assets/google.png", height: 35, width: 35,),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Continue with Google", style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800
                            ),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?', style: TextStyle(
                            fontSize: screenHeight * 0.022,
                            fontWeight: FontWeight.w500
                        ),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Registrationpage()));
                        }, child: Text("Login",
                            style: TextStyle(color: Colors.blueAccent, fontSize: screenHeight*0.023, fontWeight: FontWeight.w600)))
                      ],
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      )

    );
  }
}
