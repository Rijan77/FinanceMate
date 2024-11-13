import 'package:finance_mate/pages/LoginPage.dart';
import 'package:flutter/material.dart';

class Registrationpage extends StatefulWidget {
  const Registrationpage({super.key});

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
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
              child: SizedBox(
                height: screenHeight*0.15,
                width: double.infinity,
                // color: Colors.black26,
                child: Row(
                    children: [
                  Image.asset("lib/assets/Logo_3.png", height: 100, width: 100,),
                     Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Text(" Get Started with \n   Finance Mate", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        // fontFamily:'rijan',
                        // letterSpacing: 1.0,
                                           ),),
                     )
                    ]),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: screenHeight*0.82,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
              ),
                child:
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Enter your name",
                        prefixIcon: Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1A3D6F), width: 2.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2.0)
                        )
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Enter your email",
                        prefixIcon: Icon(Icons.email_outlined),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1A3D6F), width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 2.0)
                        )
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextField(
                      obscureText: !_isPasswordVisible,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        labelText: "Enter password",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          }, icon: Icon(
                            _isPasswordVisible? Icons.visibility:Icons.visibility_off,
                          )),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1A3D6F), width: 2.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2.0)
                          )
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextField(
                      obscureText: !_isConfirmPasswordVisible,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        labelText: "Confirm password",
                          prefixIcon: const Icon(Icons.system_security_update_good),
                          suffixIcon: IconButton(onPressed: (){
                            setState(() {
                              _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                            });
                          }, icon: Icon( _isConfirmPasswordVisible ? Icons.visibility: Icons.visibility_off,)),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff1A3D6F), width: 2.0),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2.0)
                          )
                      ),
                    ),

                    const SizedBox(height: 40,),

                    Container(
                      height: screenHeight*0.068,
                      width: screenWidth*0.85,
                      decoration: BoxDecoration(
                          color: const Color(0xff1A3D6F),
                          borderRadius: BorderRadius.circular(10)
                      ),

                      child: const Center(
                        child: Text("Sign up", style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w800
                        ),),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text("OR", style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15
                    ),),
                    const SizedBox(height: 10,),
                    Container(
                      height: screenHeight*0.068,
                      width: screenWidth*0.85,
                      // color: Color(0xff3FA9F5),
                      decoration: BoxDecoration(
                          color: const Color(0xff3FA9F5),
                          borderRadius: BorderRadius.circular(10)
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset("lib/assets/google.png", height: 35, width: 35,),
                        ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text("Continue with Google", style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800
                            ),),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?', style: TextStyle(
                            fontSize: screenHeight * 0.022,
                            fontWeight: FontWeight.w500
                        ),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
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
