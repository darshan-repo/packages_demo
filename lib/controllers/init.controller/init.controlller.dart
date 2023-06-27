import 'package:get/get.dart';
import 'package:packages_demo/controllers/carousel.slider.controller.dart';
import 'package:packages_demo/controllers/country.picker.controller.dart';
import 'package:packages_demo/controllers/drop.down.button2.controller.dart';
import 'package:packages_demo/controllers/file.picker.controller.dart';
import 'package:packages_demo/controllers/image.picker.controller.dart';
import 'package:packages_demo/controllers/permission.handler.controller.dart';
import 'package:packages_demo/controllers/story.view.controller.dart';
import 'package:packages_demo/controllers/url.launcher.controller.dart';
import 'package:packages_demo/controllers/video.player.controller.dart';
import 'package:packages_demo/controllers/webview.flutter.controller.dart';

class InitController {
  static void get init {
    Get.lazyPut(() => ImagePickerController(), fenix: true);
    Get.lazyPut(() => VideoPlayerGetxController(), fenix: true);
    Get.lazyPut(() => FilePickerController(), fenix: true);
    Get.lazyPut(() => DropDownButton2Controller(), fenix: true);
    Get.lazyPut(() => CarouselSliderController(), fenix: true);
    Get.lazyPut(() => URLLauncherController(), fenix: true);
    Get.lazyPut(() => PermissionHandlerController(), fenix: true);
    Get.lazyPut(() => StoryViewController(), fenix: true);
    Get.lazyPut(() => WebViewFlutterController(), fenix: true);
    Get.lazyPut(() => CountryPickerController(), fenix: true);
  }
}
