import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:url/model/subscription.dart';
import 'package:url/responsive/textstlye.dart';

class Subscription_Screen extends StatelessWidget {
  const Subscription_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final hight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[50],
          leading: IconButton(
              onPressed: () async {
                Navigator.pop(context);
              },
              icon: SimpleShadow(
                child: Icon(Icons.arrow_back, color: Colors.black),
                opacity: 0.6, // Default: 0.5
                color: Colors.white, // Default: Black
                offset: Offset(5, 5), // Default: Offset(2, 2)
                sigma: 7, // Default: 2
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28),
          child: GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: (1 / 0.7),
              clipBehavior: Clip.antiAlias,
              children: List.generate(subscription.length, (index) {
                return GestureDetector(
                  child: Container(
                    height: hight,
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
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: width * 0.3,
                          height: MediaQuery.sizeOf(context).height / 1 / 6,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(300)),
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                subscription[index].Category,
                                style: TextStyle(
                                    color: Colors.blue[400],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: width * 0.4,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    subscription[index].price + 'Month',
                                    style: gettextstylewhitebold(context),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        for (int i = 0;
                                            i <
                                                subscription[index]
                                                    .nameOfmenu
                                                    .length;
                                            i++)
                                          SizedBox(
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.add_task_rounded,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  subscription[index]
                                                      .nameOfmenu[i],
                                                  style: gettextstylewhite(
                                                      context),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: width * 0.7,
                                  height: hight * 0.059,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      'Subscribe Now',
                                      style: gettextstylewhite(context),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ]),
                  ),
                );
              })),
        ));
  }
}
