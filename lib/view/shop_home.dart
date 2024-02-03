import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:url/model/populer_shop.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/widget/product.dart';

class Home_Screen1 extends StatelessWidget {
  const Home_Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Shop',
                  style: gettextstylebluebold(context),
                ),
                Text(
                  'Seen All',
                  style: gettextstylebluebold(context),
                )
              ],
            ),
          ),
          SizedBox(
              height: height * 0.12,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pupularshop.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: width * 0.15,
                              height: width * 0.15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        pupularshop[index].img,
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(pupularshop[index].name,
                              style: gettextstylebluelogo(context))
                        ],
                      )
                    ]);
                  })),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Shop',
                  style: gettextstylebluebold(context),
                ),
                Text(
                  'Seen All',
                  style: gettextstylebluebold(context),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: (1 / 1.66),
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
                                  Container(
                                    height: height * 0.06,
                                    color: Colors.grey[400],
                                    child: Center(
                                        child: Text(
                                      'TITAL',
                                      style: gettextstylewhite(context),
                                    )),
                                  ),
                                  Text('Brand'),
                                  Text('Price')
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
