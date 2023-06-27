import 'package:cached_network_image/cached_network_image.dart';
import 'package:packages_demo/libs.dart';

class CashedNetworkImageScreen extends StatelessWidget {
  const CashedNetworkImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Cashed Network Image'),
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            width: MediaQuery.of(context).size.height * 0.24,
            child: CachedNetworkImage(
              imageUrl:
                  'https://www.whatsappimages.in/wp-content/uploads/2021/07/Top-HD-sad-quotes-for-whatsapp-status-in-hindi-Pics-Images-Download-Free.gif',
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(
                  color: Colors.red[200],
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
