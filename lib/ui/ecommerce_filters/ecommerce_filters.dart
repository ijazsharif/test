import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/payment_service.dart';

import 'models/shop_results.dart';
import 'providers/state_result_provider.dart';

class EcommerceFilters extends StatefulWidget {
  const EcommerceFilters({Key? key}) : super(key: key);

  @override
  State<EcommerceFilters> createState() => _EcommerceFiltersState();
}

class _EcommerceFiltersState extends State<EcommerceFilters> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Results for "Macbook"'),
        leading: const Icon(Icons.key),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.072,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.unfold_more),
                          Text('Sort by')
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Colors.grey[300]!,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.filter_list),
                          Text('Filter')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 0,
            color: Colors.grey,
          ),
          Expanded(
            child: Consumer(
              builder: (context, ref, _) {
                AsyncValue<List<ShopResult>> results =
                    ref.read(shopResultProvider);
                return results.when(
                  data: (data) {
                    return GridView.builder(
                      itemCount: results.asData?.value.length,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 5 / 6,
                      ),
                      itemBuilder: (context, index) => GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(data[index].img!),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Stack(
                                  children: [
                                    if (data[index].isSoldOut!)
                                      Positioned(
                                        left: 0,
                                        bottom: 0,
                                        right: 0,
                                        top: 0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                    if (data[index].isSoldOut!)
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: const Text(
                                            'Sold Out',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    Positioned(
                                      right: 2,
                                      top: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: data[index].isSoldOut ?? false
                                              ? const Icon(
                                                  Icons.notifications_outlined,
                                                )
                                              : const Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: data[index].vendor ?? '',
                                            ),
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: data[index].name ?? '',
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text('\$${data[index].price}'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onTap: () async {
                          await PaymentService.makePayment(
                            amount: '500',
                            currency: 'USC',
                          );
                        },
                      ),
                    );
                  },
                  error: (e, s) {
                    return Center(
                      child: Text('Error: ${e.toString()}'),
                    );
                  },
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
