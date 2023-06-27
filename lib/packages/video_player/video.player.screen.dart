import 'package:packages_demo/controllers/video.player.controller.dart';
import 'package:packages_demo/libs.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatelessWidget {
  VideoPlayerScreen({super.key});
  final VideoPlayerGetxController videoPlayerGetxController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Video Player'),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GetBuilder<VideoPlayerGetxController>(
            builder: (controller) => Column(
              children: [
                controller.fileVideo != null
                    ? AspectRatio(
                        aspectRatio: controller.controller.value.aspectRatio,
                        child: VideoPlayer(controller.controller),
                      )
                    : Container(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconbutton(onPressed: () {}, icon: Icons.camera_alt),
                    iconbutton(
                        onPressed: () {
                          controller.pickVideoFromGallary;
                          controller.assignVideo();
                        },
                        icon: Icons.image),
                    iconbutton(onPressed: () {}, icon: Icons.collections),
                  ],
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            videoPlayerGetxController.controller.value.isPlaying
                ? videoPlayerGetxController.controller.pause()
                : videoPlayerGetxController.controller.play();
          },
          child: Icon(
            videoPlayerGetxController.controller.value.isPlaying
                ? Icons.pause
                : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  Widget iconbutton({
    required void Function()? onPressed,
    IconData? icon,
  }) =>
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
        height: MediaQuery.of(context).size.height * 0.50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xFFEF9A9A)),
            image: DecorationImage(image: image)),
      );
}
