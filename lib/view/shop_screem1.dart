import 'package:flutter/material.dart';

import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:url/widget/garage.dart';

class ShopScreen1 extends StatelessWidget {
  const ShopScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
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
                    return Garage();
                  })),
            )
          ],
        ),
      ),
    );
  }
}
