import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/view/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'lib/img/bgfirstscreen.png',
              width: width * 0.4,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () async => Get.to(SecondScreen()),
              child: Text(
                'Tap To Enter',
                style: gettextstylebg(context),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
