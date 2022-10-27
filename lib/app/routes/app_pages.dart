import 'package:get/get.dart';

import 'package:spotify/app/modules/choose_mode/bindings/choose_mode_binding.dart';
import 'package:spotify/app/modules/choose_mode/views/choose_mode_view.dart';
import 'package:spotify/app/modules/get_started/bindings/get_started_binding.dart';
import 'package:spotify/app/modules/get_started/views/get_started_view.dart';
import 'package:spotify/app/modules/home/bindings/home_binding.dart';
import 'package:spotify/app/modules/home/views/home_view.dart';
import 'package:spotify/app/modules/introduction/bindings/introduction_binding.dart';
import 'package:spotify/app/modules/introduction/views/introduction_view.dart';
import 'package:spotify/app/modules/login/bindings/login_binding.dart';
import 'package:spotify/app/modules/login/views/login_view.dart';
import 'package:spotify/app/modules/player/bindings/player_binding.dart';
import 'package:spotify/app/modules/player/views/player_view.dart';
import 'package:spotify/app/modules/register/bindings/register_binding.dart';
import 'package:spotify/app/modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.GET_STARTED,
      page: () => GetStartedView(),
      binding: GetStartedBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.CHOOSE_MODE,
      page: () => ChooseModeView(),
      binding: ChooseModeBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => IntroductionView(),
      binding: IntroductionBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.PLAYER,
      page: () => PlayerView(),
      binding: PlayerBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
  ];
}
