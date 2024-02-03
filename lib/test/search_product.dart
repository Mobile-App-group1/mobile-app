import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cotroller.dart';

class FilterSearchPage extends StatelessWidget {
  final FilterController filterController = Get.put(FilterController());

  // Dummy list of products
  final List<String> allProducts = [
    'Product A - Brand1',
    'Product B - Brand2',
    'Product C - Brand3',
    'Product D - Brand4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Search'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _showFilterDialog(context);
            },
            child: Text('Select Filters'),
          ),
          SizedBox(height: 20),
          Obx(() {
            final filteredProducts = filterController.applyFilters(allProducts);
            return Expanded(
              child: ListView.builder(
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredProducts[index]),
                  );
                },
              ),
            );
          }),
        ],
      ),
    );
  }

  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Filters'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildFilterCheckbox('Brand1'),
              _buildFilterCheckbox('Brand2'),
              _buildFilterCheckbox('Brand3'),
              _buildFilterCheckbox('Brand4'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Apply'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFilterCheckbox(String filter) {
    return Obx(() {
      final isSelected = filterController.selectedFilters.contains(filter);
      return CheckboxListTile(
        title: Text(filter),
        value: isSelected,
        onChanged: (value) {
          if (value!) {
            filterController.addFilter(filter);
          } else {
            filterController.removeFilter(filter);
          }
        },
      );
    });
  }
}
