import 'package:app/src/card_page/money_transfering.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../src/auth/login_or_rigister/login_or_rigister.dart';
import '../src/auth/otp/otp.dart';
import '../src/auth/register/register.dart';
import '../src/create_account/create_account_type/create_account_type.dart';
import '../src/create_account/enter_holder_or_owner_info_page/enter_holder_or_owner_info_page.dart';
import '../src/create_account/enter_personal_picture/enter_personal_picture.dart';
import '../src/create_account/keep_going/keep_going.dart';
import '../src/create_account/owner_car_info.dart/owner_car_info.dart';
import '../src/create_account/qr_code/create_qr_code.dart';
import '../src/create_account/where_do_you_want_to_work/where_do_you_want_to_work.dart';
import '../src/home_page/fee_detailes/fee_detailes.dart';
import '../src/home_page/fees_on_car/fees_on_car.dart';
import '../src/home_page/financial_transcations/financial_transcations.dart';
import '../src/home_page/garage_rating/garage_rating.dart';
import '../src/home_page/profile/profile.dart';
import '../src/home_page/trip_detailes/trip_detailes.dart';
import '../src/home_page/trips/trips.dart';
import '../src/shared_pages/notifications/notifications.dart';
import '../src/shared_pages/qr_code_generator/qr_code_generator.dart';
import '../src/shared_pages/sending_complain/sending_complain.dart';
import '../src/splash/splash_page.dart';
import '../src/taps_page/taps.dart';
import '../src/veichles_page/all_available_drivers/all_available_drivers.dart';
import '../src/veichles_page/all_veichles/all_veichles.dart';
import '../src/veichles_page/selected_car_info/selected_car_info.dart';

final Provider<GoRouter> routerProvider = Provider((ref) => router);

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: Routes.splashPage,
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(path: Routes.splashPage, builder: (context, state) => SplashPage()),
    GoRoute(path: Routes.tapsPage, builder: (context, state) => TapsPage()),
    GoRoute(
        path: Routes.loginOrRigisterPage,
        builder: (context, state) => LoginOrRigisterPage()),
    GoRoute(path: Routes.otpPage, builder: (context, state) => OtpPage()),
    GoRoute(path: Routes.registerPage, builder: (context, state) => RegisterPage()),
    GoRoute(
        path: Routes.createAccountTypePage,
        builder: (context, state) => CreateAccountTypePage()),
    GoRoute(
        path: Routes.enterHolderOrOwnerInfoPage,
        builder: (context, state) => EnterHolderOrOwnerInfoPage()),
    GoRoute(
        path: Routes.ownerCarInfoPage, builder: (context, state) => OwnerCarInfoPage()),
    GoRoute(
        path: Routes.enterPersonalPicturePage,
        builder: (context, state) => EnterPersonalPicturePage()),
    GoRoute(
        path: Routes.createQrCodePage, builder: (context, state) => CreateQrCodePage()),
    GoRoute(path: Routes.keepGoingPage, builder: (context, state) => KeepGoingPage()),
    GoRoute(
        path: Routes.whereDoYouWantToWorkPage,
        builder: (context, state) => WhereDoYouWantToWorkPage()),
    GoRoute(
        path: Routes.seeAllPage,
        builder: (context, state) => SeeAllMoneyTransferingPage()),
    GoRoute(
        path: Routes.qrCodeGeneratorPage,
        builder: (context, state) => QrCodeGEneratorPage()),
    GoRoute(
        path: Routes.notificationsPage, builder: (context, state) => NotificationsPage()),
    GoRoute(path: Routes.tripsPage, builder: (context, state) => TripsPage(), routes: [
      GoRoute(
          path: Routes.tripDetailesPage, builder: (context, state) => TripDetailesPage()),
    ]),
    GoRoute(
        path: Routes.feesOnCarPage,
        builder: (context, state) => FeesOnCarPage(),
        routes: [
          GoRoute(
              path: Routes.feeDetailesPage,
              builder: (context, state) => FeeDetailesPage()),
          GoRoute(
              path: Routes.sendingComplainPage,
              builder: (context, state) => SendingComplainPage()),
        ]),
    GoRoute(
        path: Routes.profilePage,
        builder: (context, state) => ProfilePage(),
        routes: [
          GoRoute(
              path: Routes.financialTranscationsPage,
              builder: (context, state) => FinancialTranscationsPage()),
          GoRoute(
              path: Routes.garageRatingPage,
              builder: (context, state) => GarageRatingPage()),
        ]),
    GoRoute(
        path: Routes.allAvailableDriversPage,
        builder: (context, state) => AllAvailableDriversPage()),
    GoRoute(path: Routes.allVeichlesPage, builder: (context, state) => AllVeichlesPage()),
    GoRoute(
        path: Routes.selectedCarInfoPage,
        builder: (context, state) => SelectedCarInfoPage()),
  ],
);

class Routes {
  //static const homePage = '/';
  static const splashPage = '/';
  static const tapsPage = '/taps_page';
  static const loginOrRigisterPage = '/login_or_rigister';
  static const otpPage = '/otp';
  static const registerPage = '/register';
  static const createAccountTypePage = '/create_account_type';
  static const enterHolderOrOwnerInfoPage = '/enter_holder_or_owner_info';
  static const ownerCarInfoPage = '/owner_car_info';
  static const enterPersonalPicturePage = '/enter_personal_picture';
  static const createQrCodePage = '/create_qr_code';
  static const keepGoingPage = '/keep_going_page';
  static const whereDoYouWantToWorkPage = '/where_do_you_want_to_work';
  static const qrCodeGeneratorPage = '/qr_code_generator';
  static const notificationsPage = '/notifications';
  static const tripsPage = '/trips_page';
  static const tripDetailesPage = '/trip_detailes';
  static const feesOnCarPage = '/fees_on_car';
  static const feeDetailesPage = '/fee_detailes';
  static const sendingComplainPage = '/sending_complain';
  static const profilePage = '/profile';
  static const financialTranscationsPage = '/financial_transcations';
  static const garageRatingPage = '/garage_rating';
  static const allAvailableDriversPage = '/all_available_drivers';
  static const allVeichlesPage = '/all_veichles';
  static const selectedCarInfoPage = '/selected_car_info';
  static const seeAllPage = '/see_all';
}
