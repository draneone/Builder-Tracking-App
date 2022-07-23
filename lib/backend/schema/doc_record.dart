import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'doc_record.g.dart';

abstract class DocRecord implements Built<DocRecord, DocRecordBuilder> {
  static Serializer<DocRecord> get serializer => _$docRecordSerializer;

  String? get name;

  String? get file;

  BuiltList<DocumentReference>? get groups;

  String? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DocRecordBuilder builder) => builder
    ..name = ''
    ..file = ''
    ..groups = ListBuilder()
    ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doc');

  static Stream<DocRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DocRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DocRecord._();
  factory DocRecord([void Function(DocRecordBuilder) updates]) = _$DocRecord;

  static DocRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDocRecordData({
  String? name,
  String? file,
  String? status,
}) {
  final firestoreData = serializers.toFirestore(
    DocRecord.serializer,
    DocRecord(
      (d) => d
        ..name = name
        ..file = file
        ..groups = null
        ..status = status,
    ),
  );

  return firestoreData;
}
