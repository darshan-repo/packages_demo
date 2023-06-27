import 'package:file_picker/file_picker.dart';
import 'package:packages_demo/libs.dart';

class FilePickerController extends GetxController {
  PlatformFile? pickedfile;
  // double? fileSize;
  // String? extension;
  // String? path;
  // Uint8List? fileBytes;

  /// It uses File for pick File
  void get selectFile => _selectFile();

  Future _selectFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc'],
    );
    if (result == null) {
      return;
    }

    pickedfile = result.files.first;
    // fileBytes = pickedfile!.bytes;
    // extension = pickedfile!.extension;
    // path = pickedfile!.path;
    // fileSize = pickedfile!.size * 0.000001;
    refresh();
  }
}
