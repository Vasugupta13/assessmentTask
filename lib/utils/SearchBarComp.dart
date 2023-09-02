import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostello/consts.dart';
import 'package:ostello/utils/primaryText.dart';

class SearchBarComp extends StatelessWidget {
  const SearchBarComp({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
      child: TextField(
        maxLines: 1,
        cursorColor: kPrimaryTextColor,
        style: const TextStyle(
            fontFamily: 'AvenirNextLTPro',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: kPrimaryTextColor),
        decoration: InputDecoration(
            suffixIconConstraints:
            const BoxConstraints(minHeight: 40, minWidth: 40),
            suffixIcon: Container(
              width: width * 0.195,
              child: Row(
                children: [
                  Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: const Icon(
                          CupertinoIcons.search,
                          color: kSearchIcon,
                          size: 30,
                        )),
                  ),
                  gap(
                    width: width * 0.015,
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    color: kSearchBarBorder,
                  ),
                  gap(
                    width: width * 0.015,
                  ),
                  Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: const Icon(
                          CupertinoIcons.mic,
                          color: kPrimaryColor,
                          size: 30,
                        )),
                  ),
                ],
              ),
            ),
            isCollapsed: true,
            contentPadding: const EdgeInsets.all(15),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search for UPSC Coaching',
            hintStyle: const TextStyle(
                fontFamily: 'AvenirNextLTPro',
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: kSecondaryTextColor),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
              const BorderSide(color: kSearchBarBorder, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: kPrimaryTextColor, width: 2))),
      ),
    );
  }
}
