// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screenshoot_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScreenshootRecord> _$screenshootRecordSerializer =
    new _$ScreenshootRecordSerializer();

class _$ScreenshootRecordSerializer
    implements StructuredSerializer<ScreenshootRecord> {
  @override
  final Iterable<Type> types = const [ScreenshootRecord, _$ScreenshootRecord];
  @override
  final String wireName = 'ScreenshootRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ScreenshootRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ss;
    if (value != null) {
      result
        ..add('ss')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ScreenshootRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScreenshootRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ss':
          result.ss = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ScreenshootRecord extends ScreenshootRecord {
  @override
  final String? ss;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ScreenshootRecord(
          [void Function(ScreenshootRecordBuilder)? updates]) =>
      (new ScreenshootRecordBuilder()..update(updates))._build();

  _$ScreenshootRecord._({this.ss, this.ffRef}) : super._();

  @override
  ScreenshootRecord rebuild(void Function(ScreenshootRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScreenshootRecordBuilder toBuilder() =>
      new ScreenshootRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScreenshootRecord && ss == other.ss && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, ss.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScreenshootRecord')
          ..add('ss', ss)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ScreenshootRecordBuilder
    implements Builder<ScreenshootRecord, ScreenshootRecordBuilder> {
  _$ScreenshootRecord? _$v;

  String? _ss;
  String? get ss => _$this._ss;
  set ss(String? ss) => _$this._ss = ss;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ScreenshootRecordBuilder() {
    ScreenshootRecord._initializeBuilder(this);
  }

  ScreenshootRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ss = $v.ss;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScreenshootRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScreenshootRecord;
  }

  @override
  void update(void Function(ScreenshootRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScreenshootRecord build() => _build();

  _$ScreenshootRecord _build() {
    final _$result = _$v ?? new _$ScreenshootRecord._(ss: ss, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
