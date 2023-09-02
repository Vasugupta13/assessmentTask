import 'package:flutter/material.dart';
import 'package:ostello/consts.dart';
import 'package:ostello/utils/primaryText.dart';

class ReusableMainCard extends StatelessWidget {
  const ReusableMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: 175,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1.5,
              blurRadius: 1,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
          color: kCardColor,
          borderRadius: BorderRadius.circular(16)
      ),child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(kMainImage),
              Image.asset(kGradient),
              Positioned(
                  top: height * 0.14,
                  child:  const Row(
                    children: [
                      Icon(Icons.location_on,size: 10,color: Colors.white,),
                      PrimaryText(text: "Kalkaji , New Delhi", size: 10, fontWeight: FontWeight.w600, color: Colors.white),
                    ],
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PrimaryText(text: 'Metro Coaching\nCenter', size: 17, fontWeight: FontWeight.bold, color: kPrimaryTextColor,textAlign: TextAlign.left,),
              const gap(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kStarColor
                    ),child: const Center(
                    child: Icon(
                      Icons.star_rounded,color: Colors.white,size: 12,
                    ),
                  ),
                  ),
                  const PrimaryText(text: '  4.3   ', size: 12, fontWeight: FontWeight.w500, color: kSecondaryTextColor),
                  const CircleAvatar(
                    backgroundColor: Colors.black,maxRadius: 2,
                  ),
                  const PrimaryText(text: '   3 kms away', size: 12, fontWeight: FontWeight.w500, color: kSecondaryTextColor),
                ],
              ),
              const gap(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: kPrimaryColor.withOpacity(0.5),
                            width: 1.5
                        )
                    ),child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 3, 15, 2),
                    child: PrimaryText(text: 'PHYSICS', size: 10, fontWeight: FontWeight.w600, color: kPrimaryColor),
                  ),
                  ),
                  const gap(width:12,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: kPrimaryColor.withOpacity(0.5),
                            width: 1.5
                        )
                    ),child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 3, 15, 2),
                    child: PrimaryText(text: 'MATHS', size: 10, fontWeight: FontWeight.w600, color: kPrimaryColor),
                  ),
                  ),
                ],
              ),
              const gap(
                height: 7,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: kPrimaryColor.withOpacity(0.5),
                            width: 1.5
                        )
                    ),child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 3, 15, 2),
                    child: PrimaryText(text: 'CHEMISTRY', size: 10, fontWeight: FontWeight.w600, color: kPrimaryColor),
                  ),
                  ),
                  const gap(width:14,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: kPrimaryColor.withOpacity(0.5),
                            width: 1.5
                        )
                    ),child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 3, 15, 2),
                    child: PrimaryText(text: 'JEE', size: 10, fontWeight: FontWeight.w600, color: kPrimaryColor),
                  ),
                  ),
                ],
              ),
              const gap(
                height: 7,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kPrimaryColor,
                    border: Border.all(
                        color: kPrimaryColor.withOpacity(0.5),
                        width: 1.5
                    )
                ),child: const Padding(
                padding: EdgeInsets.fromLTRB(15, 3, 15, 2),
                child: PrimaryText(text: '20% OFF', size: 10, fontWeight: FontWeight.w600, color: Colors.white),
              ),
              ),
            ],
          ),
        )
      ],
    ),
    );
  }
}
