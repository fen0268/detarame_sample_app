import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../manage/presentation/manage_page.dart';

class MerchandisePage extends ConsumerStatefulWidget {
  const MerchandisePage({super.key});

  static const path = '/merchandise';

  MerchandisePageState createConsumerState() => MerchandisePageState();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MerchandisePageState();
}

class MerchandisePageState extends ConsumerState<MerchandisePage> {
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
      body: const Center(
        child: Text('Merchandise Page'),
      ),
    );
  }
}
