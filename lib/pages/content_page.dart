import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_app/controllers/detail_controller.dart';
import 'package:getx_app/pages/detail_page.dart';

import '../models/detail.dart';
class ContentPage extends StatelessWidget {
  ContentPage({Key? key}) : super(key: key);

  final detailController = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    final pageViewController = PageController(viewportFraction: 0.95);
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
          color: Colors.blue[100],
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("img/background.jpg"),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                              "James Smith",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Winner",style: TextStyle(
                            color: Colors.amber
                          ),)
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      Icon(
                        Icons.notifications,
                        color: Colors.blue[300],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  children: [
                    const Text(
                      "Popular Contest",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                    Expanded(child: Container()),
                    const Text("Show all",style: TextStyle(
                      color: Colors.amber
                    ),),
                    const SizedBox(width: 5,),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 200,
                  width: 700,
                  child: GetBuilder<DetailController>(
                    builder: (_) => PageView.builder(
                            controller: pageViewController,
                            itemCount: detailController.details.length,
                            itemBuilder: (_,index) => GestureDetector(
                              onTap: (){
                                Get.to(()=>DetailPage(),
                                  arguments: Detail(
                                    name: detailController.details[index]["name"],
                                    title: detailController.details[index]["title"],
                                    text: detailController.details[index]["text"],
                                    img: detailController.details[index]["img"],
                                    prize: detailController.details[index]["prize"]
                                  )
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: index.isEven ? Colors.lightBlue[300] : Colors.deepPurple[300]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(detailController.details[index]["title"],style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                    ),),
                                    const SizedBox(height: 10,),
                                    Text(
                                      detailController.details[index]["text"],
                                      style: const TextStyle(
                                        color: Colors.white70,
                                        fontSize: 15,

                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    const Divider(
                                      height: 5,
                                      thickness: 1,
                                      color: Colors.black12,
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: [
                                        for(int i=0; i<4; i++)
                                          CircleAvatar(
                                            backgroundImage: AssetImage(detailController.details[i]["img"]),
                                          )

                                      ],
                                    )
                                  ],
                                )
                              ),
                            )
                        ),
                    ),
                  ),
                const SizedBox(height: 40,),
                Row(
                  children: [
                    const Text(
                      "Recent Contest",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                    Expanded(child: Container()),
                    const Text("Show all",style: TextStyle(
                        color: Colors.amber
                    ),),
                    const SizedBox(width: 5,),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                GetBuilder<DetailController>(
                  builder:(_) => ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: detailController.recent.length,
                      itemBuilder: (_,index) => Container(
                        margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(detailController.recent[index]["img"]),
                              ),
                              const SizedBox(width: 10,),
                              SizedBox(
                                width: 130,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(detailController.recent[index]["status"],style: const TextStyle(
                                        color: Colors.amber,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    const SizedBox(height: 5,),
                                    Text(
                                      detailController.recent[index]["text"],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                      ),
                                    ),
                                    const SizedBox(height: 5,),

                                  ],
                                ),
                              ),

                            ],
                          ),
                      ),
                    ),
                  ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
