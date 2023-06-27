import 'package:packages_demo/libs.dart';

class FlutterStaggeredAnimationScreen extends StatelessWidget {
  const FlutterStaggeredAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Flutter Staggered Animation'),
      ),
    );
  }
}
