import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  File? fileimage;
  List<File> multiImage = [];
  bool isMultiImage = false;

  /// It uses Camera for pick Image
  void get pickImageFromCamara => _pickImageFromCamara();

  /// It uses Gallary for pick Image
  void get pickImageFromGallary => _pickImageFromGallery();

  /// It uses Gallary for pick Multi Image
  void get pickMultiImageFromGallary => _pickMultiImageFromGallary();

  void _pickImageFromGallery() async {
    isMultiImage = false;
    ImagePicker pickImage = ImagePicker();
    XFile? image = await pickImage.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    } else {
      fileimage = File(image.path);
    }
    refresh();
  }

  void _pickImageFromCamara() async {
    isMultiImage = false;
    ImagePicker pickImage = ImagePicker();
    XFile? image = await pickImage.pickImage(source: ImageSource.camera);
    if (image == null) {
      return;
    } else {
      fileimage = File(image.path);
    }
    refresh();
  }

  void _pickMultiImageFromGallary() async {
    multiImage.clear();
    isMultiImage = true;
    ImagePicker pickImage = ImagePicker();
    List<XFile> images = await pickImage.pickMultiImage();

    if (images.isEmpty) {
      return;
    } else {
      for (var xImage in images) {
        multiImage.add(File(xImage.path));
      }
    }
    refresh();
  }
}
