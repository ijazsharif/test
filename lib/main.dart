import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/ui/crypto_invest_screen.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
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
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.gabrielaTextTheme(),
      ),
      home: const CryptoInvestScreen(),
    );
  }
}
