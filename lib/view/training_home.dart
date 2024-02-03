import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:url/controller/videocontroller.dart';
import 'package:url/model/viderolist.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/view/training_videofree.dart';
import 'package:url/view/viderocontroll.dart';

class Traing_Home extends StatelessWidget {
  Traing_Home({super.key});
  final VideoPlayerControllerDemo controller =
      Get.put(VideoPlayerControllerDemo());
  @override
  Widget build(BuildContext context) {
    final widht = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlideshow(
              indicatorColor: Colors.white,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                SizedBox(
                  child: Image.asset(
                    'lib/img/Artboard 1 (2).png',
                    fit: BoxFit.cover,
                  ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Video couse',
                    style: gettextstylebluebold(context),
                  ),
                  GestureDetector(
                    onTap: () async => Get.to(FreeVidero()),
                    child: Text(
                      'Free Video',
                      style: gettextstyleblueboldunderline(context),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: (1 / 0.7),
                  clipBehavior: Clip.antiAlias,
                  children: List.generate(3, (index) {
                    return GestureDetector(
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(VideoPlayerItemDemo(
                                        videroItem: viderourl[index],
                                      ));
                                    },
                                    child: Container(
                                      height: height * 0.2,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 4,
                                                color: Colors.grey
                                                    .withOpacity(0.5))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                viderourl[index].img,
                                              ),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8.0,
                                ),
                                child: Text(
                                  viderourl[index].name,
                                  style: gettextstylewhite(context),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  viderourl[index].tital + ' ${index}',
                                  style: gettextstylewhitesmaill(context),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
