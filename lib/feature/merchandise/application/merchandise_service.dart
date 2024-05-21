import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/merchandise.dart';

part 'merchandise_service.g.dart';

// fvm dart run build_runner watch

@riverpod
class MerchandiseNotifier extends _$MerchandiseNotifier {
  @override
  void build() {}

  final query = MerchandiseQuery();

  Future<void> registerMerchandise(
    String name,
    String nameEn,
    String description,
    String descriptionEn,
    int price,
  ) async {
    await query.add(
      createMerchandise: CreateMerchandise(
        name: name,
        nameEn: nameEn,
        description: description,
        descriptionEn: descriptionEn,
        price: price,
      ),
    );
  }
}

@riverpod
Stream<List<ReadMerchandise>> streamFetchMerchandise(
  StreamFetchMerchandiseRef ref,
) async* {
  final query = MerchandiseQuery();
  yield await query.fetchDocuments(
    queryBuilder: (query) => query.orderBy(
      'createdAt',
      descending: true,
    ),
  );
}
