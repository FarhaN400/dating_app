import 'package:dating_app/commons/two_line_item.dart';
import 'package:dating_app/styleguide/colors.dart';
import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget{
  final String? firstString , secondString, imagePath ;
  final bool? hasImage;

  const ProfileInfoCard({super.key, this.firstString, this.secondString, this.hasImage , this.imagePath});

  @override
  Widget build(BuildContext context) {
   return Expanded(
     child: Card(
       elevation: 12,
       child: hasImage != null ? Center(
         child: Image.asset(
           imagePath!,
           color: primaryColor,
           width: 25,
           height: 25,
         ),
       ) : TwoLineItem(
         firstText: firstString,
         secondText: secondString,
       )
     ),
   );
  }

}
