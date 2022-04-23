import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/ui/online_willie/checkout_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const ProviderScope(child: MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Analysis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3c184d),
        ),
        scaffoldBackgroundColor: const Color(0xFF3c184d),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF4A1F5F),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        textTheme: GoogleFonts.gabrielaTextTheme(),
      ),
      home: const CheckoutScreen(),
    );
  }
}
