import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url/responsive/textstlye.dart';
import 'package:url/view/training_videroplay_product.dart';

class Training_Playlist extends StatelessWidget {
  const Training_Playlist({super.key});

  @override
  Widget build(BuildContext context) {
    final higth = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: (1 / 1 / 0.7),
            clipBehavior: Clip.antiAlias,
            children: List.generate(5, (index) {
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4, color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            Get.to(Product_Playlist());
                          },
                          child: Container(
                            height: higth * 0.2,
                            color: Colors.blue[400],
                            child: Center(child: Text('IMG PROMOT')),
                          ),
                        ),
                        Container(
                          height: 2,
                          color: Colors.grey[50],
                        ),
                        Text(
                          'tital',
                          style: gettextstylewhite(context),
                        ),
                        Text(
                          'Disription',
                          style: gettextstylewhite(context),
                        ),
                        const Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Conut video'), Text('Price')],
                          ),
                        )
                      ]),
                ),
              );
            })),
      ),
    );
  }
}
