import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns items to the top
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 10),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 39, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello,",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Rijan",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 100),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications_on_rounded),
              iconSize: 35,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.settings,),
              iconSize: 35,),
            ),
          )
        ],
      ),
    );
  }
}
