import 'package:flutter_svg/flutter_svg.dart';
import 'package:packages_demo/libs.dart';

class FLutterSVGScreen extends StatelessWidget {
  const FLutterSVGScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Flutter SVG'),
        body: Center(
          child: SvgPicture.asset(
            'assets/svg_images/jocker.svg',
            height: 200,
            width: 200,
            colorFilter: const ColorFilter.mode(Colors.red, BlendMode.color),
            semanticsLabel: 'A red up arrow',
          ),
        ),
      ),
    );
  }
}
