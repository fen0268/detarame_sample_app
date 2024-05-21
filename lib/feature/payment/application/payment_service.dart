import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/purchase_data.dart';
import '../domain/transition_url.dart';

part 'payment_service.g.dart';

@riverpod
class PaymentService extends _$PaymentService {
  @override
  void build() {}

  String generateRandomId() {
    final random = Random();
    // 100000000 〜 999999999
    final firstRandom = random.nextInt(900000000) + 100000000;
    // 10000 〜 99999
    final secondRandom = random.nextInt(90000) + 10000;

    return '$firstRandom$secondRandom';
  }

  // https://us-central1-sampledetarameapp.cloudfunctions.net/generatePayPayLink
  Future<String> generatePayPayLink() async {
    final url = Uri.parse(
      'https://us-central1-sampledetarameapp.cloudfunctions.net/generatePayPayLink',
    );

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'purchaseData': PurchaseData(
          merchantPaymentId: generateRandomId(),
          productName: 'ホゲ',
          productEnName: 'hoge',
          description: 'hoge huga piyo',
          price: 122,
        ),
      }),
    );

    if (response.statusCode == 200) {
      final responseData = TransitionUrl.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
      return responseData.transitionUrl;
    } else {
      throw Exception('Failed to generate PayPay link');
    }
  }
}
