import 'package:dating_app/pages/super_likes_me.dart';
import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';
import '../commons/My_Info.dart';
import '../commons/opaque_image.dart';
import '../commons/profile_big_card.dart';
import '../commons/profile_info_card.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Stack(
                  children: [
                    OpaqueImage(imgUrl: "assets/image/anne.jpeg"),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "My Profile",
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "13",
                            secondText: "New Matches",
                            icons: Icon(Icons.star, color: blueColor, size: 32),
                          ),
                          ProfileInfoBigCard(
                            firstText: "21",
                            secondText: "Unmatched me",
                            icons: Image.asset(
                              "assets/icons/sad_smiley.png",
                              width: 32,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "264",
                            secondText: "All matches",
                            icons: Image.asset(
                              "assets/icons/checklist.png",
                              width: 32,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                            firstText: "42",
                            secondText: "Rematches",
                            icons: Icon(
                              Icons.refresh,
                              color: blueColor,
                              size: 32,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "404",
                            secondText: "Profile Visitor",
                            icons: Icon(
                              Icons.remove_red_eye_outlined,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SuperLikeMePage(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              firstText: "42",
                              secondText: "Super Liked",
                              icons: Icon(
                                Icons.favorite,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight * (4 / 9) - 80 / 2,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ProfileInfoCard(firstString: "54%", secondString: "Progress"),
                  SizedBox(width: 10),
                  ProfileInfoCard(
                    imagePath: "assets/icons/pulse.png",
                    hasImage: true,
                  ),
                  SizedBox(width: 10),
                  ProfileInfoCard(firstString: "152", secondString: "level"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
