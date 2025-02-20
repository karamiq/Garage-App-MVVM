import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nafarat/data/providers/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'app.dart';

//
const String appName = 'App';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();

  timeago.setLocaleMessages('ar', timeago.ArMessages()); // Add french messages

  // HttpOverrides.global = MyHttpOverrides();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWith((ref) => sharedPreferences),
      ],
      child: const App(),
    ),
  );
}
