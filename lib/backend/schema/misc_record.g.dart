// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misc_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MiscRecord> _$miscRecordSerializer = new _$MiscRecordSerializer();

class _$MiscRecordSerializer implements StructuredSerializer<MiscRecord> {
  @override
  final Iterable<Type> types = const [MiscRecord, _$MiscRecord];
  @override
  final String wireName = 'MiscRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MiscRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.downloadUrl;
    if (value != null) {
      result
        ..add('downloadUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.warningInstall;
    if (value != null) {
      result
        ..add('warningInstall')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  MiscRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MiscRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'downloadUrl':
          result.downloadUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'warningInstall':
          result.warningInstall = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$MiscRecord extends MiscRecord {
  @override
  final String? downloadUrl;
  @override
  final bool? warningInstall;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MiscRecord([void Function(MiscRecordBuilder)? updates]) =>
      (new MiscRecordBuilder()..update(updates))._build();

  _$MiscRecord._({this.downloadUrl, this.warningInstall, this.ffRef})
      : super._();

  @override
  MiscRecord rebuild(void Function(MiscRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MiscRecordBuilder toBuilder() => new MiscRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MiscRecord &&
        downloadUrl == other.downloadUrl &&
        warningInstall == other.warningInstall &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, downloadUrl.hashCode), warningInstall.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MiscRecord')
          ..add('downloadUrl', downloadUrl)
          ..add('warningInstall', warningInstall)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MiscRecordBuilder implements Builder<MiscRecord, MiscRecordBuilder> {
  _$MiscRecord? _$v;

  String? _downloadUrl;
  String? get downloadUrl => _$this._downloadUrl;
  set downloadUrl(String? downloadUrl) => _$this._downloadUrl = downloadUrl;

  bool? _warningInstall;
  bool? get warningInstall => _$this._warningInstall;
  set warningInstall(bool? warningInstall) =>
      _$this._warningInstall = warningInstall;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MiscRecordBuilder() {
    MiscRecord._initializeBuilder(this);
  }

  MiscRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _downloadUrl = $v.downloadUrl;
      _warningInstall = $v.warningInstall;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MiscRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MiscRecord;
  }

  @override
  void update(void Function(MiscRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MiscRecord build() => _build();

  _$MiscRecord _build() {
    final _$result = _$v ??
        new _$MiscRecord._(
            downloadUrl: downloadUrl,
            warningInstall: warningInstall,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
