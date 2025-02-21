import 'package:nafarat/data/models/trip_info_model.dart';
import 'package:nafarat/src/auth/login_or_rigister/login_or_rigister.dart';
import 'package:nafarat/src/card_page/money_transfering.dart';
import 'package:nafarat/src/home_page/trip_detailes/trip_detailes.dart';
import 'package:nafarat/src/shared_pages/qr_code_generator/qr_code_generator.dart';
import 'package:nafarat/src/shared_pages/sending_complain/sending_complain.dart';
import 'package:nafarat/src/veichles_page/all_available_drivers/all_available_drivers.dart';
import 'package:nafarat/src/veichles_page/selected_car_info/selected_car_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../data/models/vehicle_violations.dart';
import '../src/auth/otp/otp.dart';
import '../src/auth/register/register.dart';
import '../src/card_page/card_page.dart';
import '../src/create_account/create_account_type/create_account_type.dart';
import '../src/create_account/enter_holder_or_owner_info_page/enter_holder_or_owner_info_page.dart';
import '../src/create_account/enter_personal_picture/enter_personal_picture.dart';
import '../src/create_account/keep_going/keep_going.dart';
import '../src/create_account/owner_car_info.dart/owner_car_info.dart';
import '../src/create_account/qr_code/create_qr_code.dart';
import '../src/create_account/where_do_you_want_to_work/where_do_you_want_to_work.dart';
import '../src/entry_point.dart';
import '../src/home_page/fee_detailes/fee_detailes.dart';
import '../src/home_page/fees_on_car/fees_on_car.dart';
import '../src/home_page/financial_transcations/financial_transcations.dart';
import '../src/home_page/garage_rating/garage_rating.dart';
import '../src/home_page/home_page.dart';
import '../src/home_page/profile/profile.dart';
import '../src/home_page/trips/trips.dart';
import '../src/path_page/path_page.dart';
import '../src/shared_pages/notifications/notifications.dart';
import '../src/splash/splash_page.dart';
import '../src/veichles_page/all_veichles/all_veichles.dart';
import '../src/veichles_page/vehicles_page.dart';

final Provider<GoRouter> routerProvider = Provider((ref) => router);

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

// GoRouter configuration
final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: Routes.loginOrRigisterPage,
  navigatorKey: _rootNavigatorKey,
  // redirect: (context, state) async {
  //   final sharedPreferences = await SharedPreferences.getInstance();
  //   final authenticationRaw = sharedPreferences.getString(Preferences.authentication);
  //   if (authenticationRaw == null) {
  //     return Routes.loginOrRigisterPage;
  //   }
  //   return null;
  // },
  routes: [
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: Routes.loginOrRigisterPage,
      name: Routes.loginOrRigisterPage,
      builder: (context, state) => const LoginOrRigisterPage(),
    ),
    GoRoute(
        path: Routes.splashPage,
        name: Routes.splashPage,
        builder: (context, state) => SplashPage()),

    GoRoute(
        path: Routes.otpPage,
        name: Routes.otpPage,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>; // Retrieve extra data
          final phoneNumber = extra['phoneNumber'] as String;
          final isLogin = extra['isLogin'] as bool;

          return OtpPage(
            phoneNumber: phoneNumber,
            isLogin: isLogin,
          );
        }),
    GoRoute(
        path: Routes.registerPage,
        name: Routes.registerPage,
        builder: (context, state) => RegisterPage()),
    GoRoute(
        path: Routes.createAccountTypePage,
        name: Routes.createAccountTypePage,
        builder: (context, state) => CreateAccountTypePage()),
    GoRoute(
        path: Routes.enterHolderOrOwnerInfoPage,
        name: Routes.enterHolderOrOwnerInfoPage,
        builder: (context, state) {
          // final extra = state.extra as Map<String, dynamic>;
          return EnterHolderOrOwnerInfoPage();
        }),
    GoRoute(
        path: Routes.enterPersonalPicturePage,
        name: Routes.enterPersonalPicturePage,
        builder: (context, state) {
          // final extra = state.extra as Map<String, dynamic>;
          return EnterPersonalPicturePage();
        }),

    GoRoute(
        path: Routes.ownerCarInfoPage,
        name: Routes.ownerCarInfoPage,
        builder: (context, state) {
          // final extra = state.extra as Map<String, dynamic>;
          return OwnerCarInfoPage();
        }),
    GoRoute(
        path: Routes.createQrCodePage,
        name: Routes.createQrCodePage,
        builder: (context, state) {
          // final extra = state.extra as Map<String, dynamic>;
          return CreateQrCodePage();
        }),
    GoRoute(
        path: Routes.whereDoYouWantToWorkPage,
        name: Routes.whereDoYouWantToWorkPage,
        builder: (context, state) => WhereDoYouWantToWorkPage()),
    GoRoute(
        path: Routes.keepGoingPage,
        name: Routes.keepGoingPage,
        builder: (context, state) => KeepGoingPage()),

    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => TapsPage(child: child),
        routes: [
          GoRoute(
            path: Routes.home,
            name: Routes.home,
            builder: (context, state) => HomePage(),
          ),
          GoRoute(
            path: Routes.cardPage,
            name: Routes.cardPage,
            builder: (context, state) => CardPage(),
          ),
          GoRoute(
            path: Routes.pathPage,
            name: Routes.pathPage,
            builder: (context, state) => PathPage(),
          ),
          GoRoute(
            path: Routes.veichlesPage,
            name: Routes.veichlesPage,
            builder: (context, state) => VeichlesPage(),
          ),
        ]),

    GoRoute(
      path: Routes.tripsPage,
      name: Routes.tripsPage,
      builder: (context, state) => TripsPage(),
    ),
    GoRoute(
      path: Routes.feesOnCarPage,
      name: Routes.feesOnCarPage,
      builder: (context, state) => FeesOnCarPage(),
    ),
    GoRoute(
      path: Routes.tripDetailesPage,
      name: Routes.tripDetailesPage,
      builder: (context, state) {
        final extra = state.extra as TripInfo;
        return TripDetailesPage(trip: extra);
      },
    ),
    GoRoute(
      path: Routes.feeDetailesPage,
      name: Routes.feeDetailesPage,
      builder: (context, state) {
        final extra = state.extra as Violation;
        return FeeDetailesPage(vio: extra);
      },
    ),
    GoRoute(
      path: Routes.sendingComplainPage,
      name: Routes.sendingComplainPage,
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        return SendingComplainPage(
          isFromProfile: extra['isFromProfile'] as bool,
          debtStatementReceipt: extra['debtStatementReceipt'] as Violation?,
        );
      },
    ),
    GoRoute(
      path: Routes.profilePage,
      name: Routes.profilePage,
      builder: (context, state) => ProfilePage(),
    ),
    GoRoute(
      path: Routes.garageRatingPage,
      name: Routes.garageRatingPage,
      builder: (context, state) => GarageRatingPage(),
    ),
    GoRoute(
      path: Routes.financialTranscationsPage,
      name: Routes.financialTranscationsPage,
      builder: (context, state) => FinancialTranscationsPage(),
    ),
    GoRoute(
      path: Routes.qrCodeGeneratorPage,
      name: Routes.qrCodeGeneratorPage,
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;

        return QrCodeGEneratorPage(qrData: extra['qrData'], newCar: extra['newCar']);
      },
    ),

    GoRoute(
      path: Routes.seeAllPage,
      name: Routes.seeAllPage,
      builder: (context, state) => SeeAllMoneyTransferingPage(),
    ),
    GoRoute(
      path: Routes.allVeichlesPage,
      name: Routes.allVeichlesPage,
      builder: (context, state) => AllVeichlesPage(),
    ),
    GoRoute(
      path: Routes.allAvailableDriversPage,
      name: Routes.allAvailableDriversPage,
      builder: (context, state) => AllAvailableDriversPage(),
    ),
    GoRoute(
      path: Routes.selectedCarInfoPage,
      name: Routes.selectedCarInfoPage,
      builder: (context, state) => SelectedCarInfoPage(index: state.extra as int),
    ),
    GoRoute(
      path: Routes.notificationsPage,
      name: Routes.notificationsPage,
      builder: (context, state) => NotificationsPage(),
    ),
    // ShellRoute(
    //   navigatorKey: _shellNavigatorKey,
    //   builder: (BuildContext context, GoRouterState state, Widget child) {
    //     return PharmacyEntryPoint(child: child);
    //   },
    //   routes: <RouteBase>[
    //     GoRoute(
    //       parentNavigatorKey: _shellNavigatorKey,
    //         path: RoutesDocument.pharmacyHome,
    //         builder: (context, state) => const PharmacyHomePage(),
    //         routes: [
    //           GoRoute(
    //             path: RoutesDocument().productDetails(':id'),
    //             builder: (context, state) => ProductDetailsPage(
    //               id: Uri.decodeComponent(state.pathParameters['id']!),
    //             ),
    //           ),
    //         ]),
    //     GoRoute(
    //       path: RoutesDocument.pharmacyOrders,
    //       builder: (context, state) => const PharmacyOrdersPage(),
    //       parentNavigatorKey: _shellNavigatorKey,
    //     ),
    //     GoRoute(
    //       path: RoutesDocument.pharmacyCart,
    //       builder: (context, state) => const PharmacyCartPage(),
    //       parentNavigatorKey: _shellNavigatorKey,
    //     ),
    //     GoRoute(
    //       path: RoutesDocument.pharmacyAccount,
    //       builder: (context, state) => const PharmacyAccountPage(),
    //       parentNavigatorKey: _shellNavigatorKey,
    //     ),
    //   ],
    // ),
  ],
);

class Routes {
  const Routes._();
  static const String home = '/home_page';
  static const String splashPage = '/splash_page';
  static const String pathPage = '/path_page';
  static const String cardPage = '/card_page';
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
  static const veichlesPage = '/veichles_page';

  // // Product
  // static String productDetails(String id) => 'product-details/$id';
}

  // final encodedItemId = getEncodedComponent(item.id);
  // context.push(
  //     "${RoutesDocument.pharmacyHome}/${RoutesDocument.productDetails(encodedItemId)}");
