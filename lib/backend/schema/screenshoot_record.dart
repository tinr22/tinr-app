import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'screenshoot_record.g.dart';

abstract class ScreenshootRecord
    implements Built<ScreenshootRecord, ScreenshootRecordBuilder> {
  static Serializer<ScreenshootRecord> get serializer =>
      _$screenshootRecordSerializer;

  String? get ss;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ScreenshootRecordBuilder builder) =>
      builder..ss = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('screenshoot');

  static Stream<ScreenshootRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ScreenshootRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ScreenshootRecord._();
  factory ScreenshootRecord([void Function(ScreenshootRecordBuilder) updates]) =
      _$ScreenshootRecord;

  static ScreenshootRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createScreenshootRecordData({
  String? ss,
}) {
  final firestoreData = serializers.toFirestore(
    ScreenshootRecord.serializer,
    ScreenshootRecord(
      (s) => s..ss = ss,
    ),
  );

  return firestoreData;
}
