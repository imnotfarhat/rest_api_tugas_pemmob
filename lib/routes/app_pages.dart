import 'package:get/get.dart';
import 'package:rest_api/views/home_view.dart';
import 'package:rest_api/views/detail_view.dart';
import 'package:rest_api/controllers/home_controller.dart';
import 'package:rest_api/controllers/detail_controller.dart';
import 'app_routes.dart';

/// Kelas untuk mendefinisikan semua pages dan bindings
/// GetPage menghubungkan route dengan view dan controller
class AppPages {
  static const initial = AppRoutes.home;

  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeController>(() => HomeController());
      }),
    ),
    GetPage(
      name: AppRoutes.detail,
      page: () => const DetailView(),
      binding: BindingsBuilder(() {
        Get.lazyPut<DetailController>(() => DetailController());
      }),
    ),
  ];
}
