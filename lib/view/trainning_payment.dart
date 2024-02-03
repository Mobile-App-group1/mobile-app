import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url/controller/call.dart';
import 'package:url/widget/button.dart';

class Training_Cours_Pay extends StatelessWidget {
  Training_Cours_Pay({super.key});
  var controller = Get.put(CallerController());

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () async {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: height * 0.4,
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 4)],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.2,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: const Center(
                      child: Text('IMG'),
                    ),
                  ),
                  Text('Date time'),
                  Text('Desription :'),
                ],
              ),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: ButtonBarTheme(
          data: ButtonBarThemeData(),
          child: Container(
            height: height * 0.08,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      20,
                    ),
                    topRight: Radius.circular(20)),
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 4, color: Colors.grey)]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    controller.launchCaller();
                  },
                  child: ButtonProduct(
                      backgrounColors: Colors.pink,
                      bordercolos: Colors.pink,
                      colorstext: Colors.white,
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
