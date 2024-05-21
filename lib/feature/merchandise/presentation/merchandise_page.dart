import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../config/logger.dart';
import '../../manage/presentation/manage_page.dart';
import '../../payment/application/payment_service.dart';

class MerchandisePage extends ConsumerStatefulWidget {
  const MerchandisePage({super.key});

  static const path = '/merchandise';

  MerchandisePageState createConsumerState() => MerchandisePageState();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MerchandisePageState();
}

class MerchandisePageState extends ConsumerState<MerchandisePage> {
  Future<void> transitionSite(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Merchandise'),
        actions: [
          IconButton(
            icon: const Icon(Icons.manage_accounts),
            onPressed: () {
              context.go('${MerchandisePage.path}/${ManagePage.path}');
            },
          ),
        ],
      ),
      body: ElevatedButton(
        onPressed: () async {
          final link = await ref
              .read(paymentServiceProvider.notifier)
              .generatePayPayLink();
          logger.i(link);
          await transitionSite(link);
        },
        child: const Text('Go to Manage Page'),
      ),
    );
  }
}
