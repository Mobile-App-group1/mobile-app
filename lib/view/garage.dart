import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:url/responsive/textstlye.dart';

import '../test/video.dart';

class GarageScreen extends StatelessWidget {
  const GarageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            )),
        const SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            )),
        const SizedBox(
          width: 10,
        )
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MultiSelectDropDown<int>(
                onOptionSelected: (List<ValueItem> selectedOptions) {},
                options: const [
                  ValueItem(label: 'Phnum Penh', value: 1),
                  ValueItem(label: 'Takev', value: 2),
                  ValueItem(label: 'Modolkiri', value: 4),
                ],
                hint: 'Contry',
                selectionType: SelectionType.single,
                chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                dropdownHeight: 300,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MultiSelectDropDown<int>(
                onOptionSelected: (List<ValueItem> selectedOptions) {},
                options: const [
                  ValueItem(label: 'Phnum Penh', value: 1),
                  ValueItem(label: 'Takev', value: 2),
                  ValueItem(label: 'Modolkiri', value: 4),
                ],
                hint: 'Khan',
                selectionType: SelectionType.single,
                chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                dropdownHeight: 300,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
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
                      onTap: () async => Get.to(ProductGarage()),
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
                  })),
            )
          ],
        ),
      ),
    );
  }
}
