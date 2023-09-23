import 'package:packages_demo/controllers/image.picker.controller.dart';
import 'package:packages_demo/libs.dart';

// ignore: must_be_immutable
class ImagePickerScreen extends StatelessWidget {
  ImagePickerScreen({super.key});
  ImagePickerController imagePickerController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Image Picker'),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              GetBuilder<ImagePickerController>(
                builder: (controller) => controller.isMultiImage == false
                    ? container(context,
                        image: controller.fileimage != null
                            ? FileImage(controller.fileimage!) as ImageProvider
                            : const AssetImage(
                                'assets/images/select_photo.jpg'))
                    : Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                          ),
                          itemCount: controller.multiImage.length,
                          itemBuilder: (context, index) => container(
                            context,
                            image: controller.multiImage.isNotEmpty
                                ? FileImage(controller.multiImage[index])
                                    as ImageProvider
                                : const AssetImage(
                                    'assets/images/select_photo.jpg'),
                          ),
                        ),
                      ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconbutton(
                      onPressed: () {
                        imagePickerController.pickImageFromCamara;
                      },
                      icon: Icons.camera_alt),
                  iconbutton(
                      onPressed: () {
                        imagePickerController.pickImageFromGallary;
                      },
                      icon: Icons.image),
                  iconbutton(
                      onPressed: () {
                        imagePickerController.pickMultiImageFromGallary;
                      },
                      icon: Icons.collections),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconbutton({required void Function()? onPressed, IconData? icon}) =>
      CircleAvatar(
        maxRadius: 25,
        backgroundColor: Colors.red[200],
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
          iconSize: 30,
          color: Colors.white,
        ),
      );

  Widget container(
    BuildContext context, {
    required ImageProvider<Object> image,
  }) =>
      Container(
        height: MediaQuery.of(context).size.height * 0.70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFFEF9A9A)),
          image: DecorationImage(
            image: image,
            fit: BoxFit.fill,
          ),
        ),
      );
}
