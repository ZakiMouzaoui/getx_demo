import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controllers/img_controller.dart';
import 'package:getx_app/widgets/icon_text.dart';

import '../models/detail.dart';
import 'content_page.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);
  final args = Get.arguments as Detail;
  final imgController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.blue[100],
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                color: Colors.white10,
              ))
            ],
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.home_outlined,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(args.img),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              args.name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Winner",
                              style: TextStyle(color: Colors.amber),
                            )
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
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: Get.size.width,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(-4, 4),
                                blurRadius: 7,
                                color: Colors.grey.withOpacity(0.4))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            args.title,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            args.text,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            height: 5,
                            thickness: 1,
                            color: Colors.black12,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconTextWidget(
                                  iconColor: Colors.blue[300]!,
                                  firstText: args.name,
                                  secondText: "Deadline",
                                  icon: Icons.watch_later),
                              IconTextWidget(
                                  iconColor: Colors.red[400]!,
                                  firstText: args.prize,
                                  secondText: "Prize",
                                  icon: Icons.monetization_on),
                              IconTextWidget(
                                  iconColor: Colors.yellow[600]!,
                                  firstText: "Top level",
                                  secondText: "Entry",
                                  icon: Icons.star)
                            ],
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Top Participants",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "(11)",
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // ROW OF AVATARS
                  GetBuilder<ImageController>(
                    builder: (_) => SizedBox(
                      width: double.infinity,
                      child: Stack(
                        children: const [
                          Positioned(
                            child: CircleAvatar(
                              backgroundImage: AssetImage("img/images1.jpeg"),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("img/images2.jpeg"),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("img/images3.jpeg"),
                            ),
                          ),
                          Positioned(
                            left: 90,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("img/images4.jpeg"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.amber),
                        child: const Center(
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Add to favourite",
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(20)),
                        height: Get.size.width / 2 - 30,
                        width: Get.size.width / 2 - 30,
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: AssetImage("img/background.jpg"),
                                fit: BoxFit.cover)),
                        height: Get.size.width / 2 - 30,
                        width: Get.size.width / 2 - 30,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
