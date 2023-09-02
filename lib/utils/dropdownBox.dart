import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostello/consts.dart';
import 'package:ostello/utils/primaryText.dart';

class ReusableDropdownBox extends StatefulWidget {
  const ReusableDropdownBox({super.key});

  @override
  State<ReusableDropdownBox> createState() => _ReusableDropdownBoxState();
}

class _ReusableDropdownBoxState extends State<ReusableDropdownBox> {
  String? selectedValue;
  bool valueSelected = false; // Initialize the variable with an empty string
  List<String> items = [
    "Relevance",
    "Distance",
    "Price",
    "Rating",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 35,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,),
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: (){},
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        border: Border.all(color: kPrimaryColor, width: 2)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        gap(width: 3,),
                        PrimaryText(
                          text: 'Filters ',
                          size: 14,
                          fontWeight: FontWeight.w400,
                          color: kPrimaryColor,
                        ),
                        Icon(
                          CupertinoIcons.slider_horizontal_3,
                          color: kPrimaryColor,size: 20,
                        ), gap(width: 3,),

                      ],
                    ),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 100,
                  minWidth: 80,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isDense: true,
                    isExpanded: true,
                    hint: const Row(
                      children: [
                        SizedBox(
                          width: 4,
                        ),
                        PrimaryText(
                          text: 'Sort',
                          size: 14,
                          fontWeight: FontWeight.w400,
                          color: kPrimaryColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Row(
                        children: [
                          Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                color: kPrimaryColor,
                                width: 2,
                              ),
                            ),
                            child: Visibility(
                              visible:
                              selectedValue == item, // Set visibility based on selection
                              child: const Padding(
                                padding: EdgeInsets.all(2),
                                child: CircleAvatar(
                                  backgroundColor: kPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          FittedBox( // Use FittedBox to auto-size text
                            fit: BoxFit.scaleDown,
                            child: PrimaryText(
                              text: item,
                              size: 14,
                              fontWeight: selectedValue == item
                                  ? FontWeight.bold
                                  : FontWeight.w400, // Set bold for selected value
                              color: selectedValue == item
                                  ? Colors.black
                                  : Colors.black, // Set color for selected value
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                        valueSelected = true;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 50,
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: kPrimaryColor,width: 2
                        ),
                        color: valueSelected ? kPrimaryColor : Colors.white,
                      ),
                      elevation: 0,
                    ),
                    iconStyleData: IconStyleData(
                      icon: valueSelected
                          ? const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 0,
                      )
                          : const Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      iconSize: 14,
                      iconEnabledColor: kPrimaryColor,
                      iconDisabledColor: Colors.grey,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 200,
                      padding: null,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: kPrimaryColor, width: 2),
                        color: Colors.white,
                      ),
                      elevation: 0,
                      offset: const Offset(-20, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all(6),
                        thumbVisibility: MaterialStateProperty.all(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
                    ),
                    selectedItemBuilder: (BuildContext context) {
                      return items.map<Widget>((String item) {
                        return PrimaryText(
                          text: item,
                          size: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        );
                      }).toList();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: (){},
                  child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kPrimaryColor,
                        border: Border.all(color: kPrimaryColor, width: 2)),
                    child: Center(
                      child: PrimaryText(
                        text: '<2 Km',
                        size: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: (){},
                child: Container(
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      border: Border.all(color: kPrimaryColor, width: 2)),
                  child:  Center(
                    child: PrimaryText(
                      text: 'JEE',
                      size: 14,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: (){},
                  child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        border: Border.all(color: kPrimaryColor, width: 2)),
                    child: Center(
                      child: PrimaryText(
                        text: 'Offers',
                        size: 14,
                        fontWeight: FontWeight.w400,
                        color: kPrimaryColor,
                      ),
                    ),
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
