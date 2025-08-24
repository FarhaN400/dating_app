import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuperLikeMePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: GestureDetector(
         onTap: (){
           Navigator.of(context).pop();
         },
         child: Icon(Icons.arrow_back,),
       ),
       title: Align(alignment: Alignment.topRight,child: Text("Select",style: TextStyle(color: Colors.red,fontSize: 17),)),
     ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Padding(
           padding: const EdgeInsets.all(16),
           child: Text(
             "Super Liked Me",style: headingTextStyle.copyWith(color: Colors.black),
           ),
         ),
         Card(
           elevation: 4,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(16)
           ),
           margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
           child: Padding(
             padding: const EdgeInsets.symmetric(vertical: 8.0),
             child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: "Search Friend",
                hintStyle: subTitleStyle.copyWith(color: hintTextColor)
              ),
             ),

           ),
         ),
         Padding(
           padding: const EdgeInsets.all(16),
           child: Row(
             children: [
               Text("Super Likes",style: subTitleStyle.copyWith(color: Colors.black),),
               SizedBox(width: 16,),
               Container(
                 width: 25,
                 height: 25,
                 child: Center(child: Text("5",style: subTitleStyle.copyWith(color: Colors.white),)),
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: primaryColor,
                 ),
               ),
               Spacer(),
               Text("1hr",style: subTitleStyle.copyWith(color: Colors.black),)
             ],
           ),
         ),
         Expanded(
           child: ListView.builder(
             itemBuilder: (context,index) {
               return Card(
                 elevation: 2,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                 margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                 child: ListTile(
                   trailing: SizedBox(
                     width: 75,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         Expanded(
                           child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.circle,size: 10,color: Colors.green,),
                                SizedBox(width: 7,),
                                Text("Online",style: TextStyle(color: Colors.green),)
                              ],
                            ),
                         ),
                         Expanded(
                           child: Icon(Icons.star,color: blueColor,),
                         ),
                       ],
                     ),
                   ),
                   title: Text(
                       "Anne"
                   ),
                   subtitle: Row(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                        Image.asset(
                          "assets/icons/location_pin.png",
                          width: 15,
                          height: 15,
                          color: Colors.black,
                        ),
                       Text("34 Kilometer",style: whiteSubHeadingTextStyle.copyWith(color: Colors.black,fontSize: 14),)
                     ],
                   ),
                   leading: ClipOval(
                     child: Image.asset(
                       'assets/image/anne.jpeg',
                       width: 50,
                       height: 50,
                     ),
                   ),
                 ),
               );
             },
             itemCount: 10,
           ),
         ),
       ],
     )
   );
  }
}