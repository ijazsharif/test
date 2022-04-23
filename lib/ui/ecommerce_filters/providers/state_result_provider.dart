import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/ui/ecommerce_filters/models/shop_results.dart';

final shopResultProvider = FutureProvider<List<ShopResult>>(
  (ref) {
    Future.delayed(const Duration(seconds: 3), () {});

    return [
      ShopResult(
        name: '2021 Apple 16-inch MacBook Pro',
        price: '800',
        isSoldOut: false,
        vendor: 'Apple',
        img:
            'https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241_960_720.jpg',
      ),
      ShopResult(
        name: '2021 Apple 16-inch MacBook Pro',
        price: '800',
        isSoldOut: false,
        vendor: 'Apple',
        img:
            'https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241_960_720.jpg',
      ),
      ShopResult(
        name: '2021 Apple 16-inch MacBook Pro',
        price: '800',
        isSoldOut: false,
        vendor: 'Apple',
        img:
            'https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241_960_720.jpg',
      ),
      ShopResult(
        name: '2021 Apple 16-inch MacBook Pro',
        price: '800',
        isSoldOut: false,
        vendor: 'Apple',
        img:
            'https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241_960_720.jpg',
      ),
      ShopResult(
        name: '2021 Apple 16-inch MacBook Pro',
        price: '800',
        isSoldOut: true,
        vendor: 'Apple',
        img:
            'https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241_960_720.jpg',
      ),
      ShopResult(
        name: '2021 Apple 16-inch MacBook Pro',
        price: '800',
        isSoldOut: false,
        vendor: 'Apple',
        img:
            'https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241_960_720.jpg',
      ),
      ShopResult(
        name: '2021 Apple 16-inch MacBook Pro',
        price: '800',
        isSoldOut: false,
        vendor: 'Apple',
        img:
            'https://cdn.pixabay.com/photo/2016/03/27/07/12/apple-1282241_960_720.jpg',
      ),
    ];
  },
);
