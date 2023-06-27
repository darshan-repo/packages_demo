import 'package:google_fonts/google_fonts.dart';
import 'package:packages_demo/libs.dart';

class GoogleFomtsScreen extends StatelessWidget {
  const GoogleFomtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Google Fonts'),
        body: Center(
          child: Text(
            'This is Google Fonts',
            style: GoogleFonts.caesarDressing(
                textStyle: Theme.of(context).textTheme.bodyLarge),
          ),
        ),
      ),
    );
  }
}
