import 'package:carousel_slider/carousel_slider.dart';
import 'package:packages_demo/controllers/carousel.slider.controller.dart';
import 'package:packages_demo/libs.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderScreen extends StatelessWidget {
  CarouselSliderScreen({super.key});

  final CarouselSliderController carouselSliderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(titleText: 'Carousel Slider'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Obx(
                () => CarouselSlider.builder(
                  options: CarouselOptions(
                    autoPlay: true,
                    onPageChanged: ((index, reason) {
                      carouselSliderController.indexs.value = index;
                    }),
                  ),
                  itemCount: carouselSliderController.data.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    height: 200,
                    // width: 200,
                    color: carouselSliderController.data[itemIndex]['color'],
                    alignment: Alignment.center,
                    child: Text(
                      carouselSliderController.data[itemIndex]['index'],
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Obx(
                  () => AnimatedSmoothIndicator(
                    activeIndex: carouselSliderController.indexs.value,
                    count: carouselSliderController.data.length,
                    effect: const WormEffect(type: WormType.thinUnderground),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
