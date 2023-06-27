import 'package:packages_demo/controllers/story.view.controller.dart';
import 'package:packages_demo/libs.dart';
import 'package:story_view/story_view.dart';

class StoryViewScreen extends StatelessWidget {
  StoryViewScreen({super.key});
  final StoryViewController storyViewController = StoryViewController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Story View'),
        body: StoryView(
          indicatorColor: Colors.grey,
          controller: StoryViewController.controller,
          storyItems: storyViewController.storyItems,
        ),
      ),
    );
  }
}
