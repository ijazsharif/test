import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF613378),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Bank Name',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const Spacer(),
                    Text(
                      '4545 4545 4545 4545',
                      style: GoogleFonts.poppinsTextTheme(
                        const TextTheme(
                          headline6: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ).headline6?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      '12/22',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Card Holder',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Expanded(
              flex: 5,
              child: Placeholder(),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFFFC107),
              ),
              child: Text(
                'Pay Now',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: const Color(0xFF5D2E74),
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
