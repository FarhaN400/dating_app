import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileInfoBigCard extends StatelessWidget{
  final String firstText , secondText;
  final Widget icons;

  const ProfileInfoBigCard({super.key, required this.firstText, required this.secondText,required this.icons});
  @override
  Widget build(BuildContext context) {
   return Card(
     margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
     elevation: 4,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
     child: Padding(
       padding: const EdgeInsets.only(left: 16,top: 16,bottom: 24,right: 16),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            Align(
              alignment: Alignment.topRight,
              child: icons,
            ),
            Text(
              firstText,
              style: titleStyle,
            ),
           Text(
             secondText,
             style: subTitleStyle,
           ),

         ],
       ),
     ),
   );
  }

}