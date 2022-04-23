import 'package:flutter/material.dart';

class PackageInfo {
  final String name;
  final String value;

  PackageInfo({
    required this.name,
    required this.value,
  });
}

final _packages = [
  PackageInfo(name: 'Package Name', value: '€99'),
  PackageInfo(name: 'Package Name', value: '€199'),
  PackageInfo(name: 'Package Name', value: '€299'),
  PackageInfo(name: 'Package Name', value: '€299'),
  PackageInfo(name: 'Package Name', value: '€499'),
  PackageInfo(name: 'Package Name', value: '€499'),
];

class PaymentAndPackagesScreen extends StatefulWidget {
  const PaymentAndPackagesScreen({Key? key}) : super(key: key);

  @override
  State<PaymentAndPackagesScreen> createState() =>
      _PaymentAndPackagesScreenState();
}

class _PaymentAndPackagesScreenState extends State<PaymentAndPackagesScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment and Packages'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select your package',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white,
                  ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                  itemCount: _packages.length,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  shrinkWrap: true,
                  itemBuilder: (context, ind) {
                    return GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF613378),
                          boxShadow: selectedIndex == ind
                              ? const [
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 3,
                                    spreadRadius: 2,
                                    offset: Offset(0, 0),
                                  ),
                                ]
                              : null,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Package Name',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                ),
                                Text(
                                  _packages[ind].value,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'No. of reminder',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                                Text(
                                  ' | No. of messages',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                                Text(
                                  ' | No. of contacts',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          selectedIndex = ind;
                        });
                      },
                    );
                  }),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFFFC107),
              ),
              child: Text(
                'Proceed to Checkout',
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
