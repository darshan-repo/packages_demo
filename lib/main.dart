import 'package:country_picker/country_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:packages_demo/controllers/shared.preferences.controller.dart';
import 'package:packages_demo/libs.dart';
import 'package:packages_demo/packages/shared_preference/onboardingscreen.1.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitController.init;
  await SharedPref.init;
  runApp(const PackagesDemo());
}

class PackagesDemo extends StatelessWidget {
  const PackagesDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      builder: (context, child) => GetMaterialApp(
        supportedLocales: const [
          Locale('ar'),
          Locale('en'),
          Locale('es'),
          Locale('de'),
          Locale('fr'),
          Locale('el'),
          Locale('et'),
          Locale('nb'),
          Locale('nn'),
          Locale('pl'),
          Locale('pt'),
          Locale('ru'),
          Locale('hi'),
          Locale('ne'),
          Locale('uk'),
          Locale('hr'),
          Locale('tr'),
          Locale('lv'),
          Locale('lt'),
          Locale('ku'),
          Locale('nl'),
          Locale('it'),
          Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
          Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
        ],
        localizationsDelegates: const [
          CountryLocalizations.delegate,
        ],
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowIndicator();
            return true;
          },
          child: ListView.builder(
            itemCount: navigationData.length,
            itemBuilder: (context, index) => listTile(
              context,
              navigator: (_) => navigationData[index]['navigation'],
              index: '${index + 1}',
              title: navigationData[index]['btnName'],
            ),
          ),
        ),
      ),
    );
  }

  Widget listTile(
    BuildContext context, {
    String index = '',
    String title = '',
    required Widget Function(BuildContext) navigator,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: navigator,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: ListTile(
          shape: const StadiumBorder(
            side: BorderSide(
              strokeAlign: 5,
              width: 1.2,
            ),
          ),
          tileColor: Colors.red[200],
          leading: Text(
            index,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }

  List<Map> navigationData = [
    {
      'btnName': 'cupertino_icons',
      'navigation': const CupertinoIconScreen(),
    },
    {
      'btnName': 'image_picker',
      'navigation': ImagePickerScreen(),
    },
    {
      'btnName': 'video_player',
      'navigation': VideoPlayerScreen(),
    },
    {
      'btnName': 'shared_preferences',
      'navigation': SharedPref.getIsLogin == true
          ? const SharedPreferencesScreen()
          : const OnBoarding1Screen(),
    },
    {
      'btnName': 'flutter_svg',
      'navigation': const FLutterSVGScreen(),
    },
    {
      'btnName': 'permission_handler',
      'navigation': PermissionHandlerScreen(),
    },
    {
      'btnName': 'google_fonts',
      'navigation': const GoogleFomtsScreen(),
    },
    {
      'btnName': 'fluttertoast',
      'navigation': const FlutterToastScreen(),
    },
    {
      'btnName': 'webview_flutter',
      'navigation': WebViewFlutterScreen(),
    },
    {
      'btnName': 'file_picker',
      'navigation': const FilePickerScreen(),
    },
    {
      'btnName': 'url_launcher',
      'navigation': URLLauncherScreen(),
    },
    {
      'btnName': 'carousel_slider',
      'navigation': CarouselSliderScreen(),
    },
    {
      'btnName': 'lottie',
      'navigation': const LottieScreen(),
    },
    {
      'btnName': 'convex_bottom_bar',
      'navigation': const ConvexBottomBarScreen(),
    },
    {
      'btnName': 'country_picker',
      'navigation': CountryPickerScreen(),
    },
    {
      'btnName': 'share_plus',
      'navigation': const SharePlusScreen(),
    },
    {
      'btnName': 'intl_phone_field',
      'navigation': const IntlPhoneFieldScreen(),
    },
    {
      'btnName': 'dropdown_button2',
      'navigation': const DropdownButton2Screen(),
    },
    {
      'btnName': 'flutter_rating_bar',
      'navigation': const FlutterRatingBarScreen(),
    },
    {
      'btnName': 'awesome_dialog',
      'navigation': const AwesomeDialogScreen(),
    },
    {
      'btnName': 'date_time_picker',
      'navigation': const DateTimePickerScreen(),
    },
    {
      'btnName': 'google_maps_flutter',
      'navigation': const GoogleMapsFlutterScreen(),
    },
    {
      'btnName': 'pinput',
      'navigation': const PinputScreen(),
    },
    {
      'btnName': 'flutter_screenutil',
      'navigation': const FlutterScreenutilScreen(),
    },
    {
      'btnName': 'cached_network_image',
      'navigation': const CashedNetworkImageScreen(),
    },
    {
      'btnName': 'flutter_slidable',
      'navigation': const FlutterSlidableScreen(),
    },
    {
      'btnName': 'flutter_staggered_animations',
      'navigation': const FlutterStaggeredAnimationScreen(),
    },
    {
      'btnName': 'google_sign_in',
      'navigation': const GoogleSignInScreen(),
    },
    {
      'btnName': 'pay',
      'navigation': const PayScreen(),
    },
    {
      'btnName': 'connectivity_plus',
      'navigation': const ConnectivityPlusScreen(),
    },
    {
      'btnName': 'geolocator',
      'navigation': const GeolocatorScreen(),
    },
    {
      'btnName': 'geocode',
      'navigation': const GoecodeScreen(),
    },
    {
      'btnName': 'geocoding',
      'navigation': const GeocodingScreen(),
    },
    {
      'btnName': 'story_view',
      'navigation': StoryViewScreen(),
    },
  ];
}
