import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:packages_demo/libs.dart';

class ConvexBottomBarScreen extends StatelessWidget {
  const ConvexBottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Convex Bottom Bar'),
        bottomNavigationBar: ConvexAppBar(
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: (index) {},
          // activeColor: Colors.red,
          // backgroundColor: Colors.red,
          // color: Colors.red,
          // cornerRadius: 20,
          // curve: Curves.easeIn,
          // curveSize: 200,
        ),
      ),
    );
  }
}
