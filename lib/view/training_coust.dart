import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/view/trainning_payment.dart';

class Training_course extends StatelessWidget {
  const Training_course({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: (1 / 1 / 0.7),
          clipBehavior: Clip.antiAlias,
          children: List.generate(5, (index) {
            return GestureDetector(
              onTap: () async {
                Get.to(Training_Cours_Pay());
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 4, color: Colors.grey.withOpacity(0.5))
                    ]),
                child: Center(
                    child: Text(
                  'IMG',
                  style: gettextstylewhitebold(context),
                )),
              ),
            );
          })),
    );
  }
}
