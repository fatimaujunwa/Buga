import 'package:bugaa/util/textdimension.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';





class CustomDropDown extends StatefulWidget {
  CustomDropDown({Key? key, required this.controller,
  required this.hint,required this.text, required this.value, required this.item
, this.width=350,this.height=40
  }) : super(key: key);
  final TextEditingController controller;
  late String value;
  late List item;
  final String text;
  final double height;

  final double width;
  final String hint;
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String dropdownvalue = 'Select Bank';
  var items = [
    'Select Bank',
    'NEDBANK_LIMITED',
    'VBS',
    'FNB',
    'INVESTEC_LIMITED',
    'ABSA',
    'STANDARD_BANK'
  ];
  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.text,style: TextDimensions.style12400black ),

          Container(
              padding: EdgeInsets.only(left: 10.w),
              height: widget.height.h,
              width: widget.width.w,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(4.r),
            border: Border.all(color: AppColor.blackTwo.withOpacity(0.6))
              ),

              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  icon: Icon(Icons.keyboard_arrow_down,color: AppColor.blackTwo.withOpacity(0.6),),
                  hint: Text(
                   widget.hint,
                    style: TextDimensions.style12400grey,

                  ),
                  items: widget.item
                      .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                        item,
                      // style: TextDimensions.style12400grey,

                    ),
                  ))
                      .toList(),
                  value: dropdownvalue,
                  onChanged: (String? newValue) {
                    setState(() {
                      widget.value = newValue!;
                      widget.controller.text=dropdownvalue;
                    });
                  },
                  buttonHeight: 40,
                  buttonWidth: 140,
                  itemHeight: 40,
                ),
              )),
        ],
      );
  }
}

