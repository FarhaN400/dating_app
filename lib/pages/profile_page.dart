import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../commons/My_Info.dart';
import '../commons/opaque_image.dart';
import '../commons/profile_big_card.dart';

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Column(
           children: [
             Expanded(
               flex: 4,
               child: Stack(
                   children: [
                     OpaqueImage(
                       imgUrl: "assets/image/anne.jpeg",
                     ),
                     SafeArea(
                       child: Padding(
                         padding: const EdgeInsets.all(16),
                         child: Column(
                           children: [
                             Align(
                               alignment: Alignment.centerLeft,
                               child: Text("My Profile",textAlign: TextAlign.left,style: headingTextStyle,),
                             ),
                             MyInfo(),
                           ],
                         ) ,
                       ),
                     ),
                   ],
               ),
             ),
             Expanded(
               flex: 5,
               child: Container(
                 color: Colors.white,
                 child: Table(
                   children: [
                     TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "13",
                            secondText: "New Matches",
                          ),
                        ],
                     ),
                     TableRow(),
                     TableRow(),
                   ],
                 ),
               ),
             ),
           ],
         ),
       ],
     ),
   );
  }

}