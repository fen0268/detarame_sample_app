import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/merchandise.dart';

part 'merchandise_service.g.dart';

// fvm dart run build_runner watch

/// 管理者操作
// 参考: https://riverpod.dev/docs/essentials/side_effects
@riverpod
class MerchandiseListNotifier extends _$MerchandiseListNotifier {
  @override
  Future<List<ReadMerchandise>> build() async {
    final query = MerchandiseQuery();
    return query.fetchDocuments(
      queryBuilder: (query) => query.orderBy(
        'createdAt',
        descending: true,
      ),
    );
  }

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
    ref.invalidateSelf();
    await future;
  }

  Future<void> editMerchandise(
    String merchandiseId, {
    String? name,
    String? nameEn,
    String? description,
    String? descriptionEn,
    int? price,
  }) async {
    await query.update(
      merchandiseId: merchandiseId,
      updateMerchandise: UpdateMerchandise(
        name: name,
        nameEn: nameEn,
        description: description,
        descriptionEn: descriptionEn,
        price: price,
      ),
    );
    ref.invalidateSelf();
    await future;
  }

  Future<void> updateStockStatus(
    String merchandiseId, {
    required bool isStock,
  }) async {
    await query.update(
      merchandiseId: merchandiseId,
      updateMerchandise: UpdateMerchandise(
        isStock: isStock,
      ),
    );
    ref.invalidateSelf();
    await future;
  }

  Future<void> deleteMerchandise(
    String merchandiseId,
  ) async {
    await query.delete(
      merchandiseId: merchandiseId,
    );
    ref.invalidateSelf();
    await future;
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
