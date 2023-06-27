import 'package:fluttertoast/fluttertoast.dart';
import 'package:packages_demo/libs.dart';

class FlutterToastScreen extends StatelessWidget {
  const FlutterToastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Flutter Toast'),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "This is Toast Message",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.red[200],
                textColor: Colors.black,
                fontSize: 20,
              );
            },
            color: Colors.red[200],
            child: const Text('Show Toast'),
          ),
        ),
      ),
    );
  }
}
