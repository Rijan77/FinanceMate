import 'package:finance_mate/pages/RegistrationPage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Image.asset("lib/assets/Logo_2.png",
                height: screenHeight*0.24,),
              ),
            ),
            const SizedBox(height: 100,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                  )
                ),
              ),
            ),

            const SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                obscureText: !_isPasswordVisible,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  }, icon: Icon(
                    _isPasswordVisible ? Icons.visibility: Icons.visibility_off,
                  )),
                  border: const OutlineInputBorder(
                  )
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding:  EdgeInsets.only(left:screenHeight*0.24),
              child: const Text("Forgot Password?",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black54
              ),
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
                child: Text("Login", style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
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
            SizedBox(height: screenHeight*0.06,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?', style: TextStyle(
                  fontSize: screenHeight * 0.022,
                  fontWeight: FontWeight.w500
                ),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Registrationpage()));
                }, child: Text("Sign up",
                    style: TextStyle(color: Colors.blueAccent, fontSize: screenHeight*0.023, fontWeight: FontWeight.w600)))
              ],
            )


          ],
        ),
      ),
    );
  }
}
