import 'package:lottie/lottie.dart';
import 'package:packages_demo/libs.dart';

class LottieScreen extends StatelessWidget {
  const LottieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Lottie'),
        body: Center(
          child: Lottie.asset(
            'assets/lotties/hello.json',
            height: 500,
            width: 500,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
