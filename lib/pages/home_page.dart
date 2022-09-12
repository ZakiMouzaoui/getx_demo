import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'content_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.size.height,
        width: Get.size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/background.jpg"),
            fit: BoxFit.fitWidth
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.size.height/1.8,),
            Text(
                "Pick Your Favourite",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Contests",
              style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 30,),
            Text(
                "We make great work design happen with our great",
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),
            ),
            Text("community designer",style: TextStyle(
                color: Colors.white.withOpacity(0.5),
              fontSize: 15,
                fontWeight: FontWeight.w500
            ),
            ),
            SizedBox(height: 30,),

            Container(
              width: Get.size.width/2,
              child: ElevatedButton(onPressed: (){
                Get.to(()=>ContentPage());
              },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.amber),
                    padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.symmetric(horizontal: 40,vertical: 20)),
                    shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )),
                  ),
                  child: Text("Get started")
              ),
            )
          ],
        ),
      ),
    );
  }
}
