import 'package:packages_demo/libs.dart';

class DropDownButton2Controller extends GetxController {
  RxString? selectedValue;

  /// List of Items
  final RxList<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ].obs;
}
