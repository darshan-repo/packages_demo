import 'package:lottie/lottie.dart';
import 'package:packages_demo/libs.dart';
import 'package:packages_demo/main.dart';

class SharedPreferencesScreen extends StatelessWidget {
  const SharedPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(
            leading: IconButton(
              onPressed: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => HomePage(),
                //   ),
                // );
                Get.to(HomePage());
              },
              icon: const Icon(Icons.arrow_back),
            ),
            titleText: 'Shared Preference'),
        body: Center(
          child: Lottie.asset('assets/lotties/hello.json'),
        ),
      ),
    );
  }
}
