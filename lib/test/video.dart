import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url/responsive/textstlye.dart';

class ProductGarage extends StatefulWidget {
  ProductGarage({super.key});

  @override
  State<ProductGarage> createState() => _ProductGarageState();
}

class _ProductGarageState extends State<ProductGarage> {
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
            height: height * 0.30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.blue[400]),
            child: Column(children: [
              Container(
                height: height * 0.21,
                child: Row(
                  children: [
                    Container(
                      width: width * 0.3,
                      height: width * 0.3,
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
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Location :',
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
                          icon: Icon(
                            Icons.thumb_up_off_alt_rounded,
                            color: Colors.white,
                            size: 25,
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
                            size: 25,
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
                          icon: Icon(
                            Icons.comment_rounded,
                            color: Colors.white,
                            size: 30,
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
                crossAxisCount: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: (1 / 0.7),
                clipBehavior: Clip.antiAlias,
                children: List.generate(1, (index) {
                  return GestureDetector(
                    child: Container(
                      width: width,
                      height: height * 0.3,
                      color: Colors.amber,
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [],
                      ),
                    ),
                  );
                })),
          )
        ]),
      ),
    );
  }
}
