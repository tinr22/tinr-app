import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'misc_record.g.dart';

abstract class MiscRecord implements Built<MiscRecord, MiscRecordBuilder> {
  static Serializer<MiscRecord> get serializer => _$miscRecordSerializer;

  String? get downloadUrl;

  bool? get warningInstall;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MiscRecordBuilder builder) => builder
    ..downloadUrl = ''
    ..warningInstall = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('misc');

  static Stream<MiscRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MiscRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MiscRecord._();
  factory MiscRecord([void Function(MiscRecordBuilder) updates]) = _$MiscRecord;

  static MiscRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMiscRecordData({
  String? downloadUrl,
  bool? warningInstall,
}) {
  final firestoreData = serializers.toFirestore(
    MiscRecord.serializer,
    MiscRecord(
      (m) => m
        ..downloadUrl = downloadUrl
        ..warningInstall = warningInstall,
    ),
  );

  return firestoreData;
}
