import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url/responsive/textstlye.dart';
import '../widget/button.dart';

class ProductGarage extends StatelessWidget {
  const ProductGarage({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(actions: [
        CircleAvatar(
            foregroundColor: Colors.white,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ))),
        const SizedBox(
          width: 10,
        ),
        CircleAvatar(
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))),
        const SizedBox(
          width: 10,
        )
      ]),
      body: SingleChildScrollView(
        child: Column(children: [
          ImageSlideshow(
            indicatorColor: Colors.white,
            onPageChanged: (value) {
              debugPrint('Page changed: $value');
            },
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Image.asset(
                'lib/img/prs1.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'lib/img/prs2.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'lib/img/prs3.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'lib/img/prs4.jpg',
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            height: height * 0.27,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.blue[400]),
            child: Column(children: [
              SizedBox(
                height: height * 0.17,
                child: Row(
                  children: [
                    Container(
                      width: width * 0.25,
                      height: width * 0.25,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(width * 0.15)),
                      child: const Center(
                        child: Text('Logo shop'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name Garage',
                          style: gettextstylewhitebold(context),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'About Garage :',
                            style: gettextstylewhite(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Location Garage :',
                            style: gettextstylewhite(context),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.thumb_up_off_alt_rounded,
                            color: Colors.white,
                            size: 25,
                          )),
                      Text(
                        'Count Like',
                        style: gettextstylewhitesmaill(context),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.thumb_down_alt_rounded,
                            color: Colors.white,
                            size: 25,
                          )),
                      Text(
                        'Count Like',
                        style: gettextstylewhitesmaill(context),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.comment_rounded,
                            color: Colors.white,
                            size: 25,
                          )),
                      Text(
                        'Report',
                        style: gettextstylewhitesmaill(context),
                      )
                    ],
                  )
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: (1 / 0.7),
                clipBehavior: Clip.antiAlias,
                children: List.generate(2, (index) {
                  return GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                color: Colors.grey.withOpacity(0.5))
                          ],
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height * 0.21,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text('IMG'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                'Caption',
                                style: gettextstylewhite(context),
                              ),
                            ),
                          ]),
                    ),
                  );
                })),
          )
        ]),
      ),
      bottomNavigationBar: ButtonBarTheme(
          data: ButtonBarThemeData(),
          child: Container(
            height: height * 0.07,
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.white, blurRadius: 4, offset: Offset(0, 4))
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonProduct(
                    backgrounColors: Colors.blue,
                    bordercolos: Colors.blue,
                    colorstext: Colors.white,
                    name: 'Telegram'),
                ButtonProduct(
                    backgrounColors: Colors.white,
                    bordercolos: Colors.pink,
                    colorstext: Colors.pink,
                    name: 'Chate'),
                ButtonProduct(
                    backgrounColors: Colors.green,
                    bordercolos: Colors.green,
                    colorstext: Colors.white,
                    name: 'Call'),
              ],
            ),
          )),
    );
  }
}
