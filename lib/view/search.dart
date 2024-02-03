import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:url/responsive/textstlye.dart';

class Search_product extends StatelessWidget {
  const Search_product({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Search Product',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
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
              hint: 'Brand',
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
                ValueItem(label: 'Phnum Penh', value: 1),
                ValueItem(label: 'Takev', value: 2),
                ValueItem(label: 'Modolkiri', value: 4),
              ],
              hint: 'Model',
              selectionType: SelectionType.single,
              chipConfig: const ChipConfig(wrapType: WrapType.wrap),
              dropdownHeight: 300,
              optionTextStyle: const TextStyle(fontSize: 16),
              selectedOptionIcon: const Icon(Icons.check_circle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: MultiSelectDropDown<int>(
              onOptionSelected: (List<ValueItem> selectedOptions) {},
              options: const [
                ValueItem(label: 'Phnum Penh', value: 1),
                ValueItem(label: 'Takev', value: 2),
                ValueItem(label: 'Modolkiri', value: 4),
              ],
              hint: 'Year',
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
                ValueItem(label: 'Phnum Penh', value: 1),
                ValueItem(label: 'Takev', value: 2),
                ValueItem(label: 'Modolkiri', value: 4),
              ],
              hint: 'Category',
              selectionType: SelectionType.single,
              chipConfig: const ChipConfig(wrapType: WrapType.wrap),
              dropdownHeight: 300,
              optionTextStyle: const TextStyle(fontSize: 16),
              selectedOptionIcon: const Icon(Icons.check_circle),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: MultiSelectDropDown<int>(
              onOptionSelected: (List<ValueItem> selectedOptions) {},
              options: const [
                ValueItem(label: 'Phnum Penh', value: 1),
                ValueItem(label: 'Takev', value: 2),
                ValueItem(label: 'Modolkiri', value: 4),
              ],
              hint: 'Part',
              selectionType: SelectionType.single,
              chipConfig: const ChipConfig(wrapType: WrapType.wrap),
              dropdownHeight: 300,
              optionTextStyle: const TextStyle(fontSize: 16),
              selectedOptionIcon: const Icon(Icons.check_circle),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: width * 0.4,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Search',
                        style: gettextstylewhitesmaill(context),
                      ))))
        ]),
      ),
    );
  }
}
