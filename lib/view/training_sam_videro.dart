import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url/model/viderolist.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/view/training.dart';
import 'package:url/view/viderocontroll.dart';
import 'package:video_player/video_player.dart';

import '../controller/videocontroller.dart';

class Same_Free_videro extends StatelessWidget {
  Same_Free_videro({required this.videroItem});
  final VideoPlayerControllerDemo controller =
      Get.put(VideoPlayerControllerDemo());
  final VideroItem videroItem;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final higth = MediaQuery.sizeOf(context).height;
    controller.initializeVideo(videroItem.urlVideo);
    return Scaffold(
      appBar: AppBar(
        title: Text(videroItem.name),
        leading: IconButton(
            onPressed: () async {
              controller.stopVideo();
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5, color: Colors.grey.withOpacity(0.5))
                    ]),
                width: width,
                height: higth * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: <Widget>[
                        SizedBox(
                          height: higth * 0.4,
                          width: width,
                          child: AspectRatio(
                            aspectRatio:
                                controller.videoController.value.aspectRatio,
                            child: VideoPlayer(controller.videoController),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                controller.videoController.value.isInitialized
                                    ? controller.formatDuration(controller
                                        .videoController.value.position)
                                    : '00:00:00',
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () async {
                                        controller.playVideo();
                                      },
                                      icon: Icon(Icons.play_arrow_rounded)),
                                  IconButton(
                                      onPressed: () async {
                                        controller.stopVideo();
                                      },
                                      icon: Icon(Icons.stop)),
                                ],
                              ),
                              Slider(
                                value: controller.videoSliderValue.value,
                                onChanged: controller.onVideoSliderChanged,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(videroItem.name,
                          style: gettextstyltital(context)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 4),
                      child: Text(videroItem.tital,
                          style: gettextstylblackdesription(context)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'The Same Video',
                style: gettextstylebluebold(context),
              ),
            ),
            GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: (1 / 1),
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
                                  onTap: () async {
                                    controller.stopVideo();
                                    Get.to(VideoPlayerItemDemo(
                                      videroItem: viderourl[index],
                                    ));
                                  },
                                  child: Container(
                                    height: higth * 0.1,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 4,
                                              color:
                                                  Colors.grey.withOpacity(0.5))
                                        ],
                                        borderRadius: BorderRadius.circular(10),
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
          ],
        ),
      ),
    );
  }
}
