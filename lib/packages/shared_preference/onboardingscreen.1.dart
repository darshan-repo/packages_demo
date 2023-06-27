import 'package:packages_demo/controllers/shared.preferences.controller.dart';
import 'package:packages_demo/libs.dart';

class OnBoarding1Screen extends StatelessWidget {
  const OnBoarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'On Boarding 1'),
        body: const Center(
          child: Text('On Boarding 1'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            SharedPref.setIsLogin = true;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const SharedPreferencesScreen(),
              ),
            );
          },
          child: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
