import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:url/model/populer_shop.dart';
import 'package:url/responsive/textstlye.dart';
import '../widget/product.dart';

class Category_Screen1 extends StatelessWidget {
  const Category_Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
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
                selectionType: SelectionType.single,
                chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                dropdownHeight: 300,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: MultiSelectDropDown<int>(
                onOptionSelected: (List<ValueItem> selectedOptions) {},
                options: const [
                  ValueItem(label: 'Toyota', value: 1),
                  ValueItem(label: 'BMW', value: 2)
                ],
                selectionType: SelectionType.single,
                chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                dropdownHeight: 300,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Company',
                    style: gettextstylebluebold(context),
                  ),
                  Text(
                    'Seen All ',
                    style: gettextstylebluebold(context),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
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
                  }),
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
          ],
        ),
      ),
    );
  }
}
