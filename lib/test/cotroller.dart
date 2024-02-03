import 'package:get/get.dart';

class FilterController extends GetxController {
  var selectedFilters = <String>[].obs;

  void addFilter(String filter) {
    if (!selectedFilters.contains(filter)) {
      selectedFilters.add(filter);
    }
  }

  void removeFilter(String filter) {
    selectedFilters.remove(filter);
  }

  List<String> applyFilters(List<String> products) {
    if (selectedFilters.isEmpty) {
      return products; // Return all products if no filters are selected
    }

    return products.where((product) {
      return selectedFilters.any((filter) => product.contains(filter));
    }).toList();
  }
}
