import 'package:flutter/cupertino.dart';

class RoundedImage extends StatelessWidget{
   final String imgPath;
   final Size size;

  const RoundedImage({Key? key,required this.imgPath,this.size= const Size.fromWidth(120)});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imgPath,
        width: size.width,
        height: size.width,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}