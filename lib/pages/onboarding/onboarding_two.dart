import 'package:flutter/cupertino.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return
      // Container(
      //   padding: EdgeInsets.only(left: 10.w),
      //   height: 58.0.h,
      //   width: 350.w,
      //   decoration: BoxDecoration(
      //     borderRadius: new BorderRadius.circular(12.r),
      //
      //   ),
      //
      //   child: DropdownButtonHideUnderline(
      //     child: DropdownButton2(
      //       hint: Text(
      //         'Select Item',
      //
      //       ),
      //       items: items
      //           .map((item) => DropdownMenuItem<String>(
      //         value: item,
      //         child: Text(
      //           item,
      //
      //         ),
      //       ))
      //           .toList(),
      //       value: dropdownvalue,
      //       onChanged: (String? newValue) {
      //         setState(() {
      //           dropdownvalue = newValue!;
      //           gender.text=dropdownvalue;
      //         });
      //       },
      //       buttonHeight: 40,
      //       buttonWidth: 140,
      //       itemHeight: 40,
      //     ),
      //   )),
  }
}
