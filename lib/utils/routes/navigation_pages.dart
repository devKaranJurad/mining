import 'package:get/get.dart';
import 'package:untitled3/screen/splash.dart';
import 'package:untitled3/utils/routes/routes_strings.dart';

class GetPages {
  static List<GetPage> getPages = [
    GetPage(
      name: RoutesConstants.splashScreen,
      page: () => const SplashScreen(),
    ),
/*    GetPage(
      name: RoutesConstants.bottomNavigatorBar,
      page: () => const BottomNavigatorBar(),
    ),*/
  ];
}
