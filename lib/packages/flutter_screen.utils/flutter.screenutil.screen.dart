import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:packages_demo/libs.dart';

class FlutterScreenutilScreen extends StatelessWidget {
  const FlutterScreenutilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Flutter Screenutil'),
        body: Center(
          child: Container(
            height: 0.4.sh,
            width: 0.8.sw,
            color: Colors.red[200],
            alignment: Alignment.center,
            child: Text(
              'Flutter',
              style: TextStyle(fontSize: 50.sp),
            ),
          ),
        ),
      ),
    );
  }
}
