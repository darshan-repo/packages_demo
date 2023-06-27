import 'package:packages_demo/controllers/file.picker.controller.dart';
import 'package:packages_demo/libs.dart';

class FilePickerScreen extends StatelessWidget {
  const FilePickerScreen({super.key});
  static final FilePickerController filePickerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'File Picker'),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              container(
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    Icon(
                      Icons.file_copy_outlined,
                      color: Colors.red[200],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    GetBuilder<FilePickerController>(
                      builder: (controller) => Expanded(
                        child: filePickerController.pickedfile == null
                            ? const Text(
                                'Pick File',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              )
                            : Text(
                                controller.pickedfile!.name.toString(),
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        filePickerController.selectFile;
                      },
                      icon: Icon(
                        Icons.file_upload,
                        color: Colors.red[200],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              GetBuilder<FilePickerController>(
                builder: (controller) => filePickerController.pickedfile == null
                    ? const SizedBox()
                    : container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text(text: controller.pickedfile!.name.toString()),
                            Divider(color: Colors.red[200]),
                            text(
                                text:
                                    'Size : ${(controller.pickedfile!.size * 0.000001).toStringAsFixed(2)} MB'),
                            const Divider(),
                            text(
                                text:
                                    'Extension : ${controller.pickedfile!.extension}'),
                            const Divider(),
                            text(text: 'Path : ${controller.pickedfile!.path}')
                          ],
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget container({Widget? child}) => Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.red[50],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromRGBO(239, 154, 154, 1)),
        ),
        child: Card(
          color: Colors.red[50],
          elevation: 0,
          borderOnForeground: true,
          child: child,
        ),
      );

  Widget text({String text = ''}) => Text(
        text,
        style: const TextStyle(fontSize: 16),
      );
}
