import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'post_status_record.g.dart';

abstract class PostStatusRecord
    implements Built<PostStatusRecord, PostStatusRecordBuilder> {
  static Serializer<PostStatusRecord> get serializer =>
      _$postStatusRecordSerializer;

  String? get namaKegiatan;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PostStatusRecordBuilder builder) =>
      builder..namaKegiatan = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('postStatus')
          : FirebaseFirestore.instance.collectionGroup('postStatus');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('postStatus').doc();

  static Stream<PostStatusRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostStatusRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostStatusRecord._();
  factory PostStatusRecord([void Function(PostStatusRecordBuilder) updates]) =
      _$PostStatusRecord;

  static PostStatusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostStatusRecordData({
  String? namaKegiatan,
}) {
  final firestoreData = serializers.toFirestore(
    PostStatusRecord.serializer,
    PostStatusRecord(
      (p) => p..namaKegiatan = namaKegiatan,
    ),
  );

  return firestoreData;
}
