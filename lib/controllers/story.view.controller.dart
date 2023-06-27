import 'package:packages_demo/libs.dart';
import 'package:story_view/story_view.dart';

class StoryViewController extends GetxController {
  static StoryController controller = StoryController();
  List<StoryItem> storyItems = [
    StoryItem.text(title: 'Story View', backgroundColor: Colors.white),
    StoryItem.pageImage(
      url:
          'https://upload.wikimedia.org/wikipedia/commons/a/aa/Amazon_logo.jpg',
      controller: controller,
    ),
    StoryItem.inlineImage(
      imageFit: BoxFit.fill,
      url:
          'https://upload.wikimedia.org/wikipedia/commons/a/aa/Amazon_logo.jpg',
      controller: controller,
    ),
    StoryItem.inlineProviderImage(
      const AssetImage('assets/images/select_photo.jpg'),
    ),
    StoryItem.pageProviderImage(
      const AssetImage('assets/images/select_photo.jpg'),
    ),
  ].obs;
}
