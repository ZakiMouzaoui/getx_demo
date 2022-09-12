import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class IconTextWidget extends StatelessWidget {
  const IconTextWidget({Key? key,
    required this.iconColor,
    required this.firstText,
    required this.secondText,
    required this.icon
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(50)
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 25,
          ),
        ),
        SizedBox(width: 5,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(firstText,style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),),
            Text(secondText,style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold
            ),)
          ],
        )
      ],
    );
  }
}
