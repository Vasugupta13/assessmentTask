import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello/utils/ReusableMainCard.dart';
import 'package:ostello/utils/SearchBarComp.dart';
import 'package:ostello/utils/dropdownBox.dart';
import 'package:ostello/utils/primaryText.dart';
import 'package:ostello/consts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  gap(
                    width: width * 0.03,
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: kPrimaryColor),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            CupertinoIcons.back,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  gap(
                    width: width * 0.07,
                  ),
                  const PrimaryText(
                      text: 'For JEE-Mains',
                      size: 16,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryTextColor)
                ],
              ),
             const SearchBarComp(),
              const ReusableDropdownBox(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Container(
                  height: 205,
                    decoration: BoxDecoration(
                        color: kCardColor,
                        borderRadius: BorderRadius.circular(16)
                    ),child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                  children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: ReusableMainCard())
                  ],
                ),
                        Padding(
                          padding: EdgeInsets.only(left: 15,top: 10),
                          child: PrimaryText(text: '•  2 of your school students study here', size: 12, fontWeight: FontWeight.w400, color: kSecondaryTextColor),
                        )
                      ],
                    ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: ReusableMainCard(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Container(
                  height: 205,
                  decoration: BoxDecoration(
                      color: kCardColor,
                      borderRadius: BorderRadius.circular(16)
                  ),child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: ReusableMainCard())
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,top: 10),
                      child: PrimaryText(text: '•  2 of your school students study here', size: 12, fontWeight: FontWeight.w400, color: kSecondaryTextColor),
                    )
                  ],
                ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: ReusableMainCard(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(kAsk),
                    const PrimaryText(text: 'Having a tough time\nnavigating through your\ncareer roadmap?', size: 14, fontWeight: FontWeight.bold, color: Colors.black),
                    InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kPrimaryColor
                        ),child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                          child: PrimaryText(text: 'Ask Ostello', size: 12, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Container(
                  height: 205,
                  decoration: BoxDecoration(
                      color: kCardColor,
                      borderRadius: BorderRadius.circular(16)
                  ),child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: ReusableMainCard())
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,top: 10),
                      child: PrimaryText(text: '•  2 of your school students study here', size: 12, fontWeight: FontWeight.w400, color: kSecondaryTextColor),
                    )
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

