// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchandise.dart';

// **************************************************************************
// Generator: FlutterFireGen
// **************************************************************************

class ReadMerchandise {
  const ReadMerchandise({
    required this.name,
    required this.nameEn,
    required this.description,
    required this.price,
    required this.isStock,
    required this.createdAt,
    required this.updatedAt,
    required this.merchandiseId,
    required this.path,
    required this.merchandiseReference,
  });

  final String name;

  final String nameEn;

  final String description;

  final int price;

  final bool isStock;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String merchandiseId;

  final String path;

  final DocumentReference<ReadMerchandise> merchandiseReference;

  factory ReadMerchandise.fromJson(Map<String, dynamic> json) {
    final extendedJson = <String, dynamic>{
      ...json,
    };
    return ReadMerchandise(
      name: extendedJson['name'] as String,
      nameEn: extendedJson['nameEn'] as String,
      description: extendedJson['description'] as String,
      price: extendedJson['price'] as int,
      isStock: extendedJson['isStock'] as bool? ?? false,
      createdAt: (extendedJson['createdAt'] as Timestamp?)?.toDate(),
      updatedAt: (extendedJson['updatedAt'] as Timestamp?)?.toDate(),
      merchandiseId: extendedJson['merchandiseId'] as String,
      path: extendedJson['path'] as String,
      merchandiseReference: extendedJson['merchandiseReference']
          as DocumentReference<ReadMerchandise>,
    );
  }

  factory ReadMerchandise.fromDocumentSnapshot(DocumentSnapshot ds) {
    final data = ds.data()! as Map<String, dynamic>;
    return ReadMerchandise.fromJson(<String, dynamic>{
      ...data,
      'merchandiseId': ds.id,
      'path': ds.reference.path,
      'merchandiseReference': ds.reference.parent.doc(ds.id).withConverter(
            fromFirestore: (ds, _) => ReadMerchandise.fromDocumentSnapshot(ds),
            toFirestore: (obj, _) => throw UnimplementedError(),
          ),
    });
  }

  ReadMerchandise copyWith({
    String? name,
    String? nameEn,
    String? description,
    int? price,
    bool? isStock,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? merchandiseId,
    String? path,
    DocumentReference<ReadMerchandise>? merchandiseReference,
  }) {
    return ReadMerchandise(
      name: name ?? this.name,
      nameEn: nameEn ?? this.nameEn,
      description: description ?? this.description,
      price: price ?? this.price,
      isStock: isStock ?? this.isStock,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      merchandiseId: merchandiseId ?? this.merchandiseId,
      path: path ?? this.path,
      merchandiseReference: merchandiseReference ?? this.merchandiseReference,
    );
  }
}

/// Represents the data structure for creating a new merchandise document in Cloud Firestore.
///
/// This class is used to define the necessary data for creating a new merchandise document.
/// `@alwaysUseFieldValueServerTimestampWhenCreating` annotated fields are
/// automatically set to the server's timestamp.
class CreateMerchandise {
  const CreateMerchandise({
    required this.name,
    required this.nameEn,
    required this.description,
    required this.price,
    this.isStock,
  });

  final String name;

  final String nameEn;

  final String description;

  final int price;

  final bool? isStock;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'name': name,
      'nameEn': nameEn,
      'description': description,
      'price': price,
      'isStock': isStock ?? true,
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    };
    final jsonPostProcessors = <({String key, dynamic value})>[];
    return {
      ...json,
      ...Map.fromEntries(jsonPostProcessors
          .map((record) => MapEntry(record.key, record.value))),
    };
  }
}

/// Represents the data structure for updating a merchandise document in Cloud Firestore.
///
/// This class provides a way to specify which fields of a merchandise document should
/// be updated. Fields set to `null` will not be updated. It also automatically
/// sets the `@alwaysUseFieldValueServerTimestampWhenUpdating` annotated fields
/// to the server's timestamp upon updating.
class UpdateMerchandise {
  const UpdateMerchandise({
    this.name,
    this.nameEn,
    this.description,
    this.price,
    this.isStock,
    this.createdAt,
  });

  final String? name;

  final String? nameEn;

  final String? description;

  final int? price;

  final bool? isStock;

  final DateTime? createdAt;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      if (name != null) 'name': name,
      if (nameEn != null) 'nameEn': nameEn,
      if (description != null) 'description': description,
      if (price != null) 'price': price,
      if (isStock != null) 'isStock': isStock,
      if (createdAt != null)
        'createdAt': createdAt == null ? null : Timestamp.fromDate(createdAt!),
      'updatedAt': FieldValue.serverTimestamp(),
    };
    final jsonPostProcessors = <({String key, dynamic value})>[];
    return {
      ...json,
      ...Map.fromEntries(jsonPostProcessors
          .map((record) => MapEntry(record.key, record.value))),
    };
  }
}

/// Represents the data structure for deleting a merchandise document in Cloud Firestore.
class DeleteMerchandise {}

/// Reference to the 'merchandise' collection with a converter for [ReadMerchandise].
/// This allows for type-safe read operations from Firestore, converting
/// Firestore documents to [ReadMerchandise] objects.
final readMerchandiseCollectionReference = FirebaseFirestore.instance
    .collection('merchandise')
    .withConverter<ReadMerchandise>(
      fromFirestore: (ds, _) => ReadMerchandise.fromDocumentSnapshot(ds),
      toFirestore: (_, __) => throw UnimplementedError(),
    );

/// Creates a [DocumentReference] for a specific Merchandise document.
DocumentReference<ReadMerchandise> readMerchandiseDocumentReference({
  required String merchandiseId,
}) =>
    readMerchandiseCollectionReference.doc(merchandiseId);

/// Reference to the 'merchandise' collection with a converter for [CreateMerchandise].
/// This enables type-safe create operations in Firestore, converting
/// [CreateMerchandise] objects to Firestore document data.
final createMerchandiseCollectionReference = FirebaseFirestore.instance
    .collection('merchandise')
    .withConverter<CreateMerchandise>(
      fromFirestore: (_, __) => throw UnimplementedError(),
      toFirestore: (obj, _) => obj.toJson(),
    );

/// Creates a [DocumentReference] for a specific Merchandise document.
DocumentReference<CreateMerchandise> createMerchandiseDocumentReference({
  required String merchandiseId,
}) =>
    createMerchandiseCollectionReference.doc(merchandiseId);

/// Reference to the 'merchandise' collection with a converter for [UpdateMerchandise].
/// This allows for type-safe update operations in Firestore, converting
/// [UpdateMerchandise] objects to Firestore document data.
final updateMerchandiseCollectionReference = FirebaseFirestore.instance
    .collection('merchandise')
    .withConverter<UpdateMerchandise>(
      fromFirestore: (_, __) => throw UnimplementedError(),
      toFirestore: (obj, _) => obj.toJson(),
    );

/// Creates a [DocumentReference] for a specific Merchandise document.
DocumentReference<UpdateMerchandise> updateMerchandiseDocumentReference({
  required String merchandiseId,
}) =>
    updateMerchandiseCollectionReference.doc(merchandiseId);

/// Reference to the 'merchandise' collection with a converter for [DeleteMerchandise].
/// This reference is used specifically for delete operations and does not
/// support reading or writing data to Firestore.
final deleteMerchandiseCollectionReference = FirebaseFirestore.instance
    .collection('merchandise')
    .withConverter<DeleteMerchandise>(
      fromFirestore: (_, __) => throw UnimplementedError(),
      toFirestore: (_, __) => throw UnimplementedError(),
    );

/// Creates a [DocumentReference] for a specific Merchandise document.
DocumentReference<DeleteMerchandise> deleteMerchandiseDocumentReference({
  required String merchandiseId,
}) =>
    deleteMerchandiseCollectionReference.doc(merchandiseId);

/// Reference to the 'merchandise' collection group with a converter for [ReadMerchandise].
/// This allows for type-safe read operations from Firestore, converting
/// Firestore documents from various paths in the 'merchandise' collection group
/// into [ReadMerchandise] objects. It facilitates unified handling of 'merchandise' documents
/// scattered across different locations in Firestore, ensuring consistent
/// data structure and manipulation.
final readMerchandiseCollectionGroupReference = FirebaseFirestore.instance
    .collectionGroup('merchandise')
    .withConverter<ReadMerchandise>(
      fromFirestore: (ds, _) => ReadMerchandise.fromDocumentSnapshot(ds),
      toFirestore: (_, __) => throw UnimplementedError(),
    );

/// A sealed class that serves as a base for representing batch write operations in Firestore.
///
/// This class is the abstract base for subclasses that define specific types
/// of batch operations, such as creating, updating, or deleting merchandise documents.
/// It is used as a part of a type hierarchy for batch operations and is not
/// intended for direct instantiation. Instead, it establishes a common
/// interface and structure for various types of batch write operations.
///
/// The use of a sealed class here ensures type safety and polymorphic handling
/// of different batch operation types, while allowing specific implementations
/// in the subclasses.
sealed class BatchWriteMerchandise {
  const BatchWriteMerchandise();
}

/// Represents a batch operation for creating a merchandise document in Firestore.
///
/// This class is used as part of a batch write to Firestore, specifically for
/// creating new merchandise documents. It encapsulates the ID of the new merchandise document
/// and the data required for creation.
final class BatchCreateMerchandise extends BatchWriteMerchandise {
  const BatchCreateMerchandise({
    required this.merchandiseId,
    required this.createMerchandise,
  });

  final String merchandiseId;

  final CreateMerchandise createMerchandise;
}

/// Represents a batch operation for updating an existing merchandise document in Firestore.
///
/// This class is utilized in a batch write process to Firestore, allowing for
/// the update of existing merchandise documents. It includes the merchandise document's ID
/// and the data for the update.
final class BatchUpdateMerchandise extends BatchWriteMerchandise {
  const BatchUpdateMerchandise({
    required this.merchandiseId,
    required this.updateMerchandise,
  });

  final String merchandiseId;

  final UpdateMerchandise updateMerchandise;
}

// Represents a batch operation for deleting a merchandise document in Firestore.
///
/// Used in a batch write to Firestore for deleting a merchandise document. This class
/// only requires the ID of the merchandise document to be deleted, as no additional
/// data is needed for deletion.
final class BatchDeleteMerchandise extends BatchWriteMerchandise {
  const BatchDeleteMerchandise({
    required this.merchandiseId,
  });

  final String merchandiseId;
}

/// A service class for managing merchandise documents in the database.
///
/// This class provides methods to perform CRUD (Create, Read, Update, Delete)
/// operations on merchandise documents, along with additional utilities like counting
/// documents, and calculating sum and average values for specific fields.
///
/// It includes methods to:
///
/// - Fetch single or multiple [ReadMerchandise] documents ([fetchDocuments], [fetchDocument]).
/// - Subscribe to real-time updates of single or multiple [ReadMerchandise] documents ([subscribeDocuments], [subscribeDocument]).
/// - Count documents based on queries ([count]).
/// - Calculate sum ([getSum]) and average ([getAverage]) of specific fields across documents.
/// - Add ([add]), set ([set]), update ([update]), and delete ([delete]) merchandise documents.
///
/// The class uses Firebase Firestore as the backend, assuming [ReadMerchandise],
/// [CreateMerchandise], [UpdateMerchandise] are models representing the data.
///
/// Usage:
///
/// - To fetch or subscribe to merchandise documents, or to count them, use the corresponding fetch, subscribe, and count methods.
/// - To modify merchandise documents, use the methods for adding, setting, updating, or deleting.
/// - To perform aggregate calculations like sum and average, use [getSum] and [getAverage].
///
/// This class abstracts the complexities of direct Firestore usage and provides
/// a straightforward API for merchandise document operations.
class MerchandiseQuery {
  /// Fetches a list of [ReadMerchandise] documents from Cloud Firestore.
  ///
  /// This method retrieves documents based on the provided query and sorts them
  /// if a [compare] function is given. You can customize the query by using the
  /// [queryBuilder] and control the source of the documents with [options].
  /// The [asCollectionGroup] parameter determines whether to fetch documents
  /// from the 'merchandise' collection directly (false) or as a collection group across
  /// different Firestore paths (true).
  ///
  /// Parameters:
  ///
  /// - [options] Optional [GetOptions] to define the source of the documents (server, cache).
  /// - [queryBuilder] Optional function to build and customize the Firestore query.
  /// - [compare] Optional function to sort the ReadMerchandise documents.
  /// - [asCollectionGroup] Fetch the 'merchandise' as a collection group if true.
  ///
  /// Returns a list of [ReadMerchandise] documents.
  Future<List<ReadMerchandise>> fetchDocuments({
    GetOptions? options,
    Query<ReadMerchandise>? Function(Query<ReadMerchandise> query)?
        queryBuilder,
    int Function(ReadMerchandise lhs, ReadMerchandise rhs)? compare,
    bool asCollectionGroup = false,
  }) async {
    Query<ReadMerchandise> query = asCollectionGroup
        ? readMerchandiseCollectionGroupReference
        : readMerchandiseCollectionReference;
    if (queryBuilder != null) {
      query = queryBuilder(query)!;
    }
    final qs = await query.get(options);
    final result = qs.docs.map((qds) => qds.data()).toList();
    if (compare != null) {
      result.sort(compare);
    }
    return result;
  }

  /// Subscribes to a stream of [ReadMerchandise] documents from Cloud Firestore.
  ///
  /// This method returns a stream of [ReadMerchandise] documents, which updates in
  /// real-time based on the database changes. You can customize the query using
  /// [queryBuilder]. The documents can be sorted using the [compare] function.
  /// The [asCollectionGroup] parameter determines whether to query the 'merchandise'
  /// collection directly (false) or as a collection group across different
  /// Firestore paths (true).
  ///
  /// Parameters:
  ///
  /// - [queryBuilder] Optional function to build and customize the Firestore query.
  /// - [compare] Optional function to sort the ReadMerchandise documents.
  /// - [includeMetadataChanges] Include metadata changes in the stream.
  /// - [excludePendingWrites] Exclude documents with pending writes from the stream.
  /// - [asCollectionGroup] Query the 'merchandise' as a collection group if true.
  Stream<List<ReadMerchandise>> subscribeDocuments({
    Query<ReadMerchandise>? Function(Query<ReadMerchandise> query)?
        queryBuilder,
    int Function(ReadMerchandise lhs, ReadMerchandise rhs)? compare,
    bool includeMetadataChanges = false,
    bool excludePendingWrites = false,
    bool asCollectionGroup = false,
  }) {
    Query<ReadMerchandise> query = asCollectionGroup
        ? readMerchandiseCollectionGroupReference
        : readMerchandiseCollectionReference;
    if (queryBuilder != null) {
      query = queryBuilder(query)!;
    }
    var streamQs =
        query.snapshots(includeMetadataChanges: includeMetadataChanges);
    if (excludePendingWrites) {
      streamQs = streamQs.where((qs) => !qs.metadata.hasPendingWrites);
    }
    return streamQs.map((qs) {
      final result = qs.docs.map((qds) => qds.data()).toList();
      if (compare != null) {
        result.sort(compare);
      }
      return result;
    });
  }

  /// Counts the number of merchandise documents in Cloud Firestore.
  ///
  /// This method returns the count of documents based on the provided query.
  /// You can customize the query by using the [queryBuilder].
  /// The [asCollectionGroup] parameter determines whether to count documents
  /// in the 'merchandise' collection directly (false) or across various Firestore
  /// paths as a collection group (true). The [source] parameter allows you to
  /// specify whether to count documents from the server or the local cache.
  ///
  /// Parameters:
  ///
  /// - [queryBuilder] Optional function to build and customize the Firestore query.
  /// - [source] Source of the count, either from the server or local cache.
  /// - [asCollectionGroup] Count the 'merchandise' as a collection group if true.
  ///
  /// Returns the count of documents as an integer.
  Future<int?> count({
    Query<ReadMerchandise>? Function(Query<ReadMerchandise> query)?
        queryBuilder,
    AggregateSource source = AggregateSource.server,
    bool asCollectionGroup = false,
  }) async {
    Query<ReadMerchandise> query = asCollectionGroup
        ? readMerchandiseCollectionGroupReference
        : readMerchandiseCollectionReference;
    if (queryBuilder != null) {
      query = queryBuilder(query)!;
    }
    final aggregateQuery = await query.count();
    final aggregateQs = await aggregateQuery.get(source: source);
    return aggregateQs.count;
  }

  /// Returns the sum of the values of the documents that match the query.
  ///
  /// This method returns the sum of the values of the documents that match the query.
  /// You can customize the query by using the [queryBuilder].
  /// The [asCollectionGroup] parameter determines whether to query the 'merchandise'
  /// collection directly (false) or as a collection group across different
  /// Firestore paths (true).
  ///
  /// Parameters:
  ///
  /// - [field] The field to sum over.
  /// - [queryBuilder] Optional function to build and customize the Firestore query.
  /// - [asCollectionGroup] Query the 'merchandise' as a collection group if true.
  ///
  /// Returns the sum of the values of the documents that match the query.
  Future<double?> getSum({
    required String field,
    Query<ReadMerchandise>? Function(Query<ReadMerchandise> query)?
        queryBuilder,
    AggregateSource source = AggregateSource.server,
    bool asCollectionGroup = false,
  }) async {
    Query<ReadMerchandise> query = asCollectionGroup
        ? readMerchandiseCollectionGroupReference
        : readMerchandiseCollectionReference;
    if (queryBuilder != null) {
      query = queryBuilder(query)!;
    }
    final aggregateQuery = await query.aggregate(sum(field));
    final aggregateQs = await aggregateQuery.get(source: source);
    return aggregateQs.getSum(field);
  }

  /// Returns the average of the values of the documents that match the query.
  ///
  /// This method returns the average of the values of the documents that match the query.
  /// You can customize the query by using the [queryBuilder].
  /// The [asCollectionGroup] parameter determines whether to query the 'merchandise'
  /// collection directly (false) or as a collection group across different
  /// Firestore paths (true).
  ///
  /// Parameters:
  ///
  /// - [field] The field to average over.
  /// - [queryBuilder] Optional function to build and customize the Firestore query.
  /// - [asCollectionGroup] Query the 'merchandise' as a collection group if true.
  ///
  /// Returns the average of the values of the documents that match the query.
  Future<double?> getAverage({
    required String field,
    Query<ReadMerchandise>? Function(Query<ReadMerchandise> query)?
        queryBuilder,
    AggregateSource source = AggregateSource.server,
    bool asCollectionGroup = false,
  }) async {
    Query<ReadMerchandise> query = asCollectionGroup
        ? readMerchandiseCollectionGroupReference
        : readMerchandiseCollectionReference;
    if (queryBuilder != null) {
      query = queryBuilder(query)!;
    }
    final aggregateQuery = await query.aggregate(average(field));
    final aggregateQs = await aggregateQuery.get(source: source);
    return aggregateQs.getAverage(field);
  }

  /// Fetches a single [ReadMerchandise] document from Cloud Firestore by its ID.
  ///
  /// This method retrieves a specific document using the provided [merchandiseId].
  /// You can control the data retrieval with [GetOptions].
  Future<ReadMerchandise?> fetchDocument({
    required String merchandiseId,
    GetOptions? options,
  }) async {
    final ds = await readMerchandiseDocumentReference(
      merchandiseId: merchandiseId,
    ).get(options);
    return ds.data();
  }

  /// Subscribes to a stream of a single [ReadMerchandise] document from Cloud Firestore by its ID.
  ///
  /// This method returns a stream of a single [ReadMerchandise] document, which updates in
  /// real-time based on the database changes. You can control the data retrieval with [GetOptions].
  Stream<ReadMerchandise?> subscribeDocument({
    required String merchandiseId,
    bool includeMetadataChanges = false,
    bool excludePendingWrites = false,
  }) {
    var streamDs = readMerchandiseDocumentReference(
      merchandiseId: merchandiseId,
    ).snapshots(includeMetadataChanges: includeMetadataChanges);
    if (excludePendingWrites) {
      streamDs = streamDs.where((ds) => !ds.metadata.hasPendingWrites);
    }
    return streamDs.map((ds) => ds.data());
  }

  /// Adds a merchandise document to Cloud Firestore.
  ///
  /// This method creates a new document in Cloud Firestore using the provided
  /// [createMerchandise] data.
  Future<DocumentReference<CreateMerchandise>> add({
    required CreateMerchandise createMerchandise,
  }) =>
      createMerchandiseCollectionReference.add(createMerchandise);

  /// Sets a merchandise document to Cloud Firestore.
  ///
  /// This method creates a new document in Cloud Firestore using the provided
  /// [createMerchandise] data.
  Future<void> set({
    required String merchandiseId,
    required CreateMerchandise createMerchandise,
    SetOptions? options,
  }) =>
      createMerchandiseDocumentReference(
        merchandiseId: merchandiseId,
      ).set(createMerchandise, options);

  /// Updates a merchandise document in Cloud Firestore.
  ///
  /// This method partially updates the document identified by [merchandiseId] with the
  /// provided [updateMerchandise] data.
  /// The update is based on the structure defined in `UpdateMerchandise.toJson()`.
  Future<void> update({
    required String merchandiseId,
    required UpdateMerchandise updateMerchandise,
  }) =>
      updateMerchandiseDocumentReference(
        merchandiseId: merchandiseId,
      ).update(updateMerchandise.toJson());

  /// Deletes a merchandise document from Cloud Firestore.
  ///
  /// This method deletes an existing document identified by [merchandiseId].
  Future<void> delete({
    required String merchandiseId,
  }) =>
      deleteMerchandiseDocumentReference(
        merchandiseId: merchandiseId,
      ).delete();

  /// Performs a batch write operation in Firestore using a list of [BatchWriteMerchandise] tasks.
  ///
  /// This function allows for executing multiple Firestore write operations (create, update, delete)
  /// as a single batch. This ensures that all operations either complete successfully or fail
  /// without applying any changes, providing atomicity.
  ///
  /// Parameters:
  ///
  /// - [batchWriteTasks] A list of [BatchWriteMerchandise] objects, each representing a specific
  /// write operation (create, update, or delete) for Merchandise documents.
  ///
  /// The function iterates over each task in [batchWriteTasks] and performs the corresponding
  /// Firestore operation. This includes:
  ///
  /// - Creating new documents for tasks of type [BatchCreateMerchandise].
  /// - Updating existing documents for tasks of type [BatchUpdateMerchandise].
  /// - Deleting documents for tasks of type [BatchDeleteMerchandise].
  ///
  /// Returns a `Future<void>` that completes when the batch operation is committed successfully.
  ///
  /// Throws:
  ///
  /// - Firestore exceptions if the batch commit fails or if there are issues with the individual
  /// operations within the batch.
  Future<void> batchWrite(List<BatchWriteMerchandise> batchWriteTasks) {
    final batch = FirebaseFirestore.instance.batch();
    for (final task in batchWriteTasks) {
      switch (task) {
        case BatchCreateMerchandise(
            merchandiseId: final merchandiseId,
            createMerchandise: final createMerchandise,
          ):
          batch.set(
            createMerchandiseDocumentReference(
              merchandiseId: merchandiseId,
            ),
            createMerchandise,
          );
        case BatchUpdateMerchandise(
            merchandiseId: final merchandiseId,
            updateMerchandise: final updateMerchandise,
          ):
          batch.update(
            updateMerchandiseDocumentReference(
              merchandiseId: merchandiseId,
            ),
            updateMerchandise.toJson(),
          );
        case BatchDeleteMerchandise(merchandiseId: final merchandiseId):
          batch.delete(deleteMerchandiseDocumentReference(
            merchandiseId: merchandiseId,
          ));
      }
    }
    return batch.commit();
  }
}
