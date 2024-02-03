import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:url/responsive/textstlye.dart';

import 'product.dart';

class ProductShop extends StatelessWidget {
  const ProductShop({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400], actions: [
        Container(
            width: width * 0.1,
            height: width * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.05),
                border: Border.all(width: 1, color: Colors.white)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ))),
        const SizedBox(
          width: 10,
        ),
        Container(
            width: width * 0.1,
            height: width * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.05),
                border: Border.all(width: 1, color: Colors.white)),
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
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.blue[400]),
            child: Column(children: [
              Container(
                height: height * 0.17,
                child: Row(
                  children: [
                    Container(
                      width: width * 0.3,
                      height: width * 0.4,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(width * 0.15)),
                      child: Center(
                        child: Text('Logo shop'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name Shop',
                          style: gettextstylewhitebold(context),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Contact :',
                            style: gettextstylewhite(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Fb Page :',
                            style: gettextstylewhite(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Website :',
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
                            size: 20,
                          )),
                      Text(
                        'Count Like',
                        style: gettextstylewhite(context),
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
                            size: 20,
                          )),
                      Text(
                        'Count Like',
                        style: gettextstylewhite(context),
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
                            size: 20,
                          )),
                      Text(
                        'Report',
                        style: gettextstylewhite(context),
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
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: (1 / 1.68),
                clipBehavior: Clip.antiAlias,
                children: List.generate(10, (index) {
                  return GestureDetector(
                    onTap: () async => Get.to(ProductData()),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: width * 0.3,
                                  height: width * 0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text('IMG'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              color: Colors.grey[50],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Text(
                                    'AUTO CARE CO.,LIMITED - Steel Radial Truck tire,Passenger Car tir',
                                    style: gettextstylwhiteimg(context),
                                  )),
                                  Text(
                                    'Brand',
                                    style: gettextstylegret(context),
                                  ),
                                  Text(
                                    'Price',
                                    style: gettextstylered(context),
                                  )
                                ],
                              ),
                            )
                          ]),
                    ),
                  );
                })),
          )
        ]),
      ),
    );
  }
}
