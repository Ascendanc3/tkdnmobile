// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_status_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostStatusRecord> _$postStatusRecordSerializer =
    new _$PostStatusRecordSerializer();

class _$PostStatusRecordSerializer
    implements StructuredSerializer<PostStatusRecord> {
  @override
  final Iterable<Type> types = const [PostStatusRecord, _$PostStatusRecord];
  @override
  final String wireName = 'PostStatusRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostStatusRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.namaKegiatan;
    if (value != null) {
      result
        ..add('namaKegiatan')
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
  PostStatusRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostStatusRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'namaKegiatan':
          result.namaKegiatan = serializers.deserialize(value,
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

class _$PostStatusRecord extends PostStatusRecord {
  @override
  final String? namaKegiatan;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostStatusRecord(
          [void Function(PostStatusRecordBuilder)? updates]) =>
      (new PostStatusRecordBuilder()..update(updates))._build();

  _$PostStatusRecord._({this.namaKegiatan, this.ffRef}) : super._();

  @override
  PostStatusRecord rebuild(void Function(PostStatusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostStatusRecordBuilder toBuilder() =>
      new PostStatusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostStatusRecord &&
        namaKegiatan == other.namaKegiatan &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, namaKegiatan.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostStatusRecord')
          ..add('namaKegiatan', namaKegiatan)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostStatusRecordBuilder
    implements Builder<PostStatusRecord, PostStatusRecordBuilder> {
  _$PostStatusRecord? _$v;

  String? _namaKegiatan;
  String? get namaKegiatan => _$this._namaKegiatan;
  set namaKegiatan(String? namaKegiatan) => _$this._namaKegiatan = namaKegiatan;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostStatusRecordBuilder() {
    PostStatusRecord._initializeBuilder(this);
  }

  PostStatusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _namaKegiatan = $v.namaKegiatan;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostStatusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostStatusRecord;
  }

  @override
  void update(void Function(PostStatusRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostStatusRecord build() => _build();

  _$PostStatusRecord _build() {
    final _$result = _$v ??
        new _$PostStatusRecord._(namaKegiatan: namaKegiatan, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
