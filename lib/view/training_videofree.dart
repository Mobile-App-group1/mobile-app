import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url/model/viderolist.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/view/viderocontroll.dart';

class FreeVidero extends StatelessWidget {
  const FreeVidero({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: (1 / 0.7),
            clipBehavior: Clip.antiAlias,
            children: List.generate(viderourl.length, (index) {
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
                                          color: Colors.grey.withOpacity(0.5))
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
      ),
    );
  }
}
