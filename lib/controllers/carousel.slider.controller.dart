import 'package:packages_demo/libs.dart';

class CarouselSliderController extends GetxController {
  RxInt indexs = 0.obs;
  RxList<Map> data = [
    {'index': '1', 'color': Colors.deepPurple},
    {'index': '2', 'color': Colors.red},
    {'index': '3', 'color': Colors.green},
    {'index': '4', 'color': Colors.blue},
    {'index': '5', 'color': Colors.pink},
    {'index': '6', 'color': Colors.yellow},
  ].obs;
}
