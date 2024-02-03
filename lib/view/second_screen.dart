import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:url/model/bgsecound.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/view/dtc.dart';
import 'package:url/view/garage.dart';
import 'package:url/view/second_screen_acc.dart';
import 'package:url/view/shop.dart';
import 'package:url/view/training.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final hight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundColor: Colors.blue[400],
              foregroundColor: Colors.white,
              child: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () async {
                    Get.to(SecondScreenACC());
                  })),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: LiteRollingSwitch(
              value: true,
              width: 150,
              textOn: 'English',
              textOff: 'Khmer',
              textOffColor: Colors.white,
              textOnColor: Colors.white,
              colorOn: Colors.blue.shade400,
              colorOff: Colors.blue.shade400,
              animationDuration: const Duration(milliseconds: 300),
              onChanged: (bool state) {
                print('turned ${(state) ? 'on' : 'off'}');
              },
              onDoubleTap: () {},
              onSwipe: () {},
              onTap: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(children: [
          SizedBox(
            height: 20,
          ),
          ImageSlideshow(
            indicatorColor: Colors.white,
            onPageChanged: (value) {
              debugPrint('Page changed: $value');
            },
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Image.asset(
                'lib/img/Artboard 1 (2).png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'lib/img/Artboard 5.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'lib/img/Artboard 6.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
          if (ResponsiveBreakpoints.of(context).isMobile)
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: List.generate(4, (index) {
                      return GestureDetector(
                        onTap: () async => Get.to(getScreen[index]),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  color: Colors.grey.withOpacity(0.5))
                            ],
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  bgsc[index].icon,
                                  size: width * 0.2,
                                  color: Colors.white,
                                ),
                                Text(
                                  bgsc[index].name,
                                  style: gettextstylewhite(context),
                                )
                              ]),
                        ),
                      );
                    })),
              ),
            )
          else
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: (1 / 0.8),
                    clipBehavior: Clip.antiAlias,
                    children: List.generate(4, (index) {
                      return GestureDetector(
                        onTap: () async => Get.to(getScreen[index]),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  color: Colors.grey.withOpacity(0.5))
                            ],
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  bgsc[index].icon,
                                  size: width * 0.1,
                                  color: Colors.white,
                                ),
                                Text(
                                  bgsc[index].name,
                                  style: gettextstylewhite(context),
                                )
                              ]),
                        ),
                      );
                    })),
              ),
            )
        ])),
      ),
    );
  }
}

List<Widget> getScreen = [
  ShopScreen(),
  GarageScreen(),
  DTCScreen(),
  RoutesPage()
];
