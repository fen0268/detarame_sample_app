import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterfire_gen_annotation/flutterfire_gen_annotation.dart';

part 'merchandise.flutterfire_gen.dart';

// 参考: https://zenn.dev/kosukesaigusa/articles/flutterfire_gen

@FirestoreDocument(path: 'merchandise/{merchandiseId}')
class Merchandise {
  Merchandise({
    required this.name,
    required this.nameEn,
    required this.description,
    required this.price,
    required this.isStock,
    required this.createdAt,
    required this.updatedAt,
  });

  // 商品名
  final String name;

  // 英語名
  final String nameEn;

  // 商品説明
  final String description;

  // 価格
  final int price;

  // 在庫数有無
  @ReadDefault(false)
  @CreateDefault(true)
  final bool isStock;

  // 画像
  // Storage に保存した画像のパス
  // final String image;

  // 作成日
  @alwaysUseFieldValueServerTimestampWhenCreating
  final DateTime? createdAt;

  // 更新日
  @alwaysUseFieldValueServerTimestampWhenCreating
  @alwaysUseFieldValueServerTimestampWhenUpdating
  final DateTime? updatedAt;
}
