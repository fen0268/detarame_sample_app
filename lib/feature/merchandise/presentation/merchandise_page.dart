import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MerchandisePage extends ConsumerStatefulWidget {
  const MerchandisePage ({super.key});

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
      ),
      body: const Center(
        child: Text('Merchandise Page'),
      ),
    );
  }
}
