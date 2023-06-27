import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:packages_demo/libs.dart';

class FlutterRatingBarScreen extends StatelessWidget {
  const FlutterRatingBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Flutter Rating Bar'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                RatingBarIndicator(
                  rating: 2.50,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 50.0,
                ),
                const SizedBox(height: 20),
                RatingBar.builder(
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, index) {
                    // switch (index) {
                    //   case 0:
                    //     return const Icon(
                    //       Icons.sentiment_very_dissatisfied,
                    //       color: Colors.red,
                    //     );
                    //   case 1:
                    //     return const Icon(
                    //       Icons.sentiment_dissatisfied,
                    //       color: Colors.redAccent,
                    //     );
                    //   case 2:
                    //     return const Icon(
                    //       Icons.sentiment_neutral,
                    //       color: Colors.amber,
                    //     );
                    //   case 3:
                    //     return const Icon(
                    //       Icons.sentiment_satisfied,
                    //       color: Colors.lightGreen,
                    //     );
                    //   case 4:
                    return const Icon(
                      Icons.sentiment_very_satisfied,
                      color: Colors.green,
                    );
                    // }
                  },
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(height: 10),
                RatingBar(
                  initialRating: 3,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  ratingWidget: RatingWidget(
                      full: const Icon(Icons.tag_faces),
                      half: const Icon(Icons.tag_faces_rounded),
                      empty: const Icon(Icons.tag_faces_sharp)),
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(height: 10),
                RatingBar.builder(
                  allowHalfRating: true,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
