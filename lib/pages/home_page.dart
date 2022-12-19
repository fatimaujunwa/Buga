import 'package:bugaa/util/app_colors.dart';
import 'package:bugaa/util/textdimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    List text = [
      'Get A Quote',
      'Deliver A Package',
      'Track An Order',
      'Book A Vehicle',
      'Add A Wallet'
    ];
    List img = [
      'images/document-text.png',
      'images/box.png',
      'images/location.png',
      'images/truck.png',
      'images/wallet-2.png'
    ];
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xfffafafa),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home_outlined,
                      color: Color(0xffd62828),
                      size: 24,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Color(0xffAAAAAA),
                      size: 24,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.check_box_outline_blank_sharp,
                      color: Color(0xffd62828),
                      size: 24,
                    )
                  : const Icon(
                      Icons.check_box_outline_blank_sharp,
                      color: Color(0xffAAAAAA),
                      size: 24,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.wallet_outlined,
                      color: Color(0xffd62828),
                      size: 24,
                    )
                  : const Icon(
                      Icons.wallet_outlined,
                      color: Color(0xffAAAAAA),
                      size: 24,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.location_on_outlined,
                      color: Color(0xffd62828),
                      size: 24,
                    )
                  : const Icon(
                      Icons.location_on_outlined,
                      color: Color(0xffAAAAAA),
                      size: 24,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: pageIndex == 4
                  ? const Icon(
                      Icons.settings,
                      color: Color(0xffd62828),
                      size: 24,
                    )
                  : const Icon(
                      Icons.settings,
                      color: Color(0xffAAAAAA),
                      size: 24,
                    ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 56.h, left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 16.r,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sept. 29, 2022',
                      style: TextDimensions.style10400,
                    ),
                    Text(
                      'Hi, Caramel!',
                      style: TextDimensions.style12500,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),

            Container(
              height: 40.h,
              child: TextField(
                decoration: InputDecoration(
                    hintStyle: TextDimensions.style12300black,
                    hintText: 'Enter tracking number',
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColor.blackTwo,
                    ),
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'How Can We Help You Today?',
              style: TextDimensions.style18600,
            ),
            SizedBox(
              height: 16.h,
            ),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (_, i) {
                    return Container(
                      padding: EdgeInsets.only(left: 11.5.w, top: 8.h),
                      height: 96.h,
                      decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Containerwidget(
                        text: text[i],
                        img: img[i],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 16.h,
                    );
                  },
                  itemCount: 5),
            )

            // ListView(children: [
            //
            // ],)
          ],
        ),
      ),
    );
  }
}

class Containerwidget extends StatelessWidget {
  const Containerwidget({Key? key, required this.text, required this.img})
      : super(key: key);
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          img,
          height: 40.h,
          width: 40.w,
        ),
        SizedBox(
          width: 16.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  text,
                  style: TextDimensions.style16500black,
                ),
                // Expanded(child: Container()),
                Icon(Icons.arrow_forward,color:AppColor.navyBlue ,)
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Find out the estimted price for you to send a package \njust by inputing the approximate weight of package(s), \nlocations, and so on.',
              style: TextDimensions.style10400,
            ),
          ],
        )
      ],
    );
  }
}
