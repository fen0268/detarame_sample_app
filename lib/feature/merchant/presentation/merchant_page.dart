import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MerchantPage extends ConsumerStatefulWidget {
  const MerchantPage({super.key});

  static const path = '/merchant';

  MerchantPageState createConsumerState() => MerchantPageState();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => MerchantPageState();
}

class MerchantPageState extends ConsumerState<MerchantPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
