import 'package:packages_demo/libs.dart';

class SharePlusScreen extends StatelessWidget {
  const SharePlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Share plus'),
      ),
    );
  }
}
