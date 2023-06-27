import 'package:packages_demo/libs.dart';

PreferredSizeWidget appBar({required String titleText, Widget? leading}) {
  return AppBar(
    leading: leading,
    title: Text(titleText),
    centerTitle: true,
    backgroundColor: Colors.red[200],
    elevation: 0,
  );
}
