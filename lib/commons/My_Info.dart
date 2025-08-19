import 'package:dating_app/commons/radial_progress.dart';
import 'package:dating_app/commons/rounded_image.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget{
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadialProgress(
              width: 4,
              child: RoundedImage(
                imgPath : "assets/image/anne.jpeg",
                size: Size.fromWidth(120.0),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Anne Grene ,",
                  style: whiteNameTextStyle,
                ),
                Text(
                  "24",
                  style: whiteSubHeadingTextStyle,
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                    "assets/icons/location_pin.png",
                  width: 20.0,
                  color: Colors.white,
                ),

                Text(
                  " 34 Kilometer",
                  style: whiteSubHeadingTextStyle,
                ),
              ],
            )
          ],
        ),
      );
  }

}