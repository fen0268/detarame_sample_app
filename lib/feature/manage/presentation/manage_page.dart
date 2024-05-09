import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ManagePage extends ConsumerStatefulWidget {
  const ManagePage({super.key});

  static const path = 'manage';

  ManagePageState createConsumerState() => ManagePageState();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => ManagePageState();
}

class ManagePageState extends ConsumerState<ManagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Manage')),
      body: const Center(child: Text('')),
    );
  }
}

// detarameSo://merchandise/manage
