import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url/controller/call.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/widget/button.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductData extends StatelessWidget {
  ProductData({super.key});
  var controller = Get.put(CallerController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width,
              height: height * 0.25,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name Product :',
                    style: gettextstylebluebold(context),
                  ),
                  Text(
                    'Price :',
                    style: gettextstylered(context),
                  ),
                  Container(
                    height: height * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: width * 0.15,
                              height: width * 0.15,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.2),
                                  color: Colors.grey),
                              child: const Center(
                                child: Text('Logo'),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Name Shop',
                                  style: gettextstylebluelogo(context),
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      const Icon(
                                        Icons.star,
                                        color: Colors.red,
                                      )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Text(
                          'Visite Shop',
                          style: gettextstylered(context),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Brand :',
                      style: gettextstylegret(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Model :',
                      style: gettextstylegret(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Category',
                      style: gettextstylegret(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Part :',
                      style: gettextstylegret(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Year',
                      style: gettextstylegret(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Conditsion',
                      style: gettextstylegret(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Contact Number',
                      style: gettextstylegret(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'More Datalai',
                      style: gettextstylegret(context),
                    ),
                  ),
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
                  childAspectRatio: (1 / 1.7),
                  clipBehavior: Clip.antiAlias,
                  children: List.generate(4, (index) {
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
          ],
        ),
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
                GestureDetector(
                  onTap: () async {
                    controller.launchTelegramURL();
                  },
                  child: ButtonProduct(
                      backgrounColors: Colors.blue,
                      bordercolos: Colors.blue,
                      colorstext: Colors.white,
                      name: 'Telegram'),
                ),
                GestureDetector(
                  onTap: () async {
                    controller.launchFacebookURL();
                  },
                  child: ButtonProduct(
                      backgrounColors: Colors.white,
                      bordercolos: Colors.pink,
                      colorstext: Colors.pink,
                      name: 'Facebook'),
                ),
                GestureDetector(
                  onTap: () async {
                    controller.launchCaller();
                  },
                  child: ButtonProduct(
                      backgrounColors: Colors.green,
                      bordercolos: Colors.green,
                      colorstext: Colors.white,
                      name: 'Call'),
                ),
              ],
            ),
          )),
    );
  }
}
