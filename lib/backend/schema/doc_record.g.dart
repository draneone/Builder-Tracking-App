// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocRecord> _$docRecordSerializer = new _$DocRecordSerializer();

class _$DocRecordSerializer implements StructuredSerializer<DocRecord> {
  @override
  final Iterable<Type> types = const [DocRecord, _$DocRecord];
  @override
  final String wireName = 'DocRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DocRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groups;
    if (value != null) {
      result
        ..add('groups')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
  DocRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
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

class _$DocRecord extends DocRecord {
  @override
  final String? name;
  @override
  final String? file;
  @override
  final BuiltList<DocumentReference<Object?>>? groups;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DocRecord([void Function(DocRecordBuilder)? updates]) =>
      (new DocRecordBuilder()..update(updates)).build();

  _$DocRecord._({this.name, this.file, this.groups, this.status, this.ffRef})
      : super._();

  @override
  DocRecord rebuild(void Function(DocRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocRecordBuilder toBuilder() => new DocRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocRecord &&
        name == other.name &&
        file == other.file &&
        groups == other.groups &&
        status == other.status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), file.hashCode), groups.hashCode),
            status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DocRecord')
          ..add('name', name)
          ..add('file', file)
          ..add('groups', groups)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DocRecordBuilder implements Builder<DocRecord, DocRecordBuilder> {
  _$DocRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  ListBuilder<DocumentReference<Object?>>? _groups;
  ListBuilder<DocumentReference<Object?>> get groups =>
      _$this._groups ??= new ListBuilder<DocumentReference<Object?>>();
  set groups(ListBuilder<DocumentReference<Object?>>? groups) =>
      _$this._groups = groups;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DocRecordBuilder() {
    DocRecord._initializeBuilder(this);
  }

  DocRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _file = $v.file;
      _groups = $v.groups?.toBuilder();
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocRecord;
  }

  @override
  void update(void Function(DocRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DocRecord build() {
    _$DocRecord _$result;
    try {
      _$result = _$v ??
          new _$DocRecord._(
              name: name,
              file: file,
              groups: _groups?.build(),
              status: status,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DocRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
