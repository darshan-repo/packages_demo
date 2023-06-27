import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerGetxController extends GetxController {
  File? fileVideo;

  late VideoPlayerController controller;

  /// It uses Gallary for pick Image
  void get pickVideoFromGallary => _pickVideoFromGallery();

  void _pickVideoFromGallery() async {
    ImagePicker pickedVideo = ImagePicker();
    XFile? gallaryVideo =
        await pickedVideo.pickVideo(source: ImageSource.gallery);
    if (gallaryVideo == null) {
      return;
    } else {
      fileVideo = File(gallaryVideo.path);
    }
    refresh();
  }

  @override
  void onInit() {
    assignVideo();
    super.onInit();
  }

  void assignVideo() {
    controller = fileVideo == null
        ? VideoPlayerController.network('')
        : VideoPlayerController.file(fileVideo!);
  }
}
