import 'package:dating_app/styleguide/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpaqueImage extends StatelessWidget{
  final imgUrl;

  const OpaqueImage({ @required this.imgUrl}) ;

  @override
  Widget build(BuildContext context) {
   return Stack(
     children: [ 
       Image.asset(
         imgUrl,
         width: double.maxFinite,
         height: double.maxFinite,
         fit: BoxFit.fill,
       ),
       Container(
         color: primaryColorOpacity.withOpacity(0.85),
       ),

       
    ],
   );
  }
}