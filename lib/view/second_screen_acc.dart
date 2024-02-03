import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:url/model/bgsecound.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/view/signin.dart';

class SecondScreenACC extends StatelessWidget {
  const SecondScreenACC({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final higth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (ResponsiveBreakpoints.of(context).isTablet ||
                ResponsiveBreakpoints.of(context).isDesktop)
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width * 0.6,
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(width: 1, color: Colors.white)),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UserName',
                              style: gettextstylewhite(context),
                            ),
                            GestureDetector(
                              onTap: () async => Get.to(Singin_Screen()),
                              child: Container(
                                width: width * 0.3,
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.white),
                                    borderRadius: BorderRadius.circular(17.25)),
                                child: Center(
                                  child: Text(
                                    'Sign In',
                                    style: gettextstylewhite(context),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            else
              Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    height: higth * 0.15,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Colors.grey.withOpacity(0.5),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: higth * 0.05,
                                height: higth * 0.05,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(width * 0.2),
                                    border: Border.all(
                                        width: 1, color: Colors.blue.shade400)),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.blue[400],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'UserName',
                                    style: gettextstylblack(context),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async => Get.to(Singin_Screen()),
                                  child: Container(
                                    width: width * 0.3,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 4,
                                              color:
                                                  Colors.grey.withOpacity(0.5))
                                        ],
                                        border: Border.all(
                                            width: 1, color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(17.25)),
                                    child: Center(
                                      child: Text(
                                        'Sign In',
                                        style: gettextstylewhite(context),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.remove_circle,
                              color: Colors.black,
                              size: 30,
                            ))
                      ],
                    ),
                  )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width,
                color: Colors.white,
                height: 1,
              ),
            ),
            if (ResponsiveBreakpoints.of(context).isMobile)
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: (1 / 1.5),
                    clipBehavior: Clip.antiAlias,
                    children: List.generate(4, (index) {
                      return Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                                color: Colors.grey.withOpacity(0.5))
                          ],
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(bgsc[index].icon,
                                  size: width * 0.2, color: Colors.white),
                              Text(
                                bgsc[index].name,
                                style: gettextstylewhite(context),
                              )
                            ]),
                      );
                    })),
              )
            else
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: (1 / 1.1),
                    clipBehavior: Clip.antiAlias,
                    children: List.generate(4, (index) {
                      return Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                color: Colors.white.withOpacity(0.5))
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
                                style: gettextstylewhitebold(context),
                              )
                            ]),
                      );
                    })),
              )
          ],
        ),
      ),
    );
  }
}
