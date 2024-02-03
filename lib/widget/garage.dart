
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url/responsive/textstlye.dart';

import 'productshop.dart';

class Garage extends StatelessWidget {
  const Garage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () async => Get.to(ProductShop()),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                child: const Center(
                  child: Text('Logo'),
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
                Text(
                  'Name Shop',
                  style: gettextstylewhite(context),
                ),
                Container(
                  height: height * 0.06,
                  child: Center(
                      child: Text(
                    'Khan Dount penh , Phnum Penh',
                    style: gettextstylwhite(context),
                  )),
                ),
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      const Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                        size: 15,
                      )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
