// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SourceEntity {

 String get id; String get notebookId; String get name;
/// Create a copy of SourceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourceEntityCopyWith<SourceEntity> get copyWith => _$SourceEntityCopyWithImpl<SourceEntity>(this as SourceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SourceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.notebookId, notebookId) || other.notebookId == notebookId)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,notebookId,name);

@override
String toString() {
  return 'SourceEntity(id: $id, notebookId: $notebookId, name: $name)';
}


}

/// @nodoc
abstract mixin class $SourceEntityCopyWith<$Res>  {
  factory $SourceEntityCopyWith(SourceEntity value, $Res Function(SourceEntity) _then) = _$SourceEntityCopyWithImpl;
@useResult
$Res call({
 String id, String notebookId, String name
});




}
/// @nodoc
class _$SourceEntityCopyWithImpl<$Res>
    implements $SourceEntityCopyWith<$Res> {
  _$SourceEntityCopyWithImpl(this._self, this._then);

  final SourceEntity _self;
  final $Res Function(SourceEntity) _then;

/// Create a copy of SourceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? notebookId = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,notebookId: null == notebookId ? _self.notebookId : notebookId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SourceEntity].
extension SourceEntityPatterns on SourceEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PdfSourceEntity value)?  pdf,TResult Function( TextSourceEntity value)?  text,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PdfSourceEntity() when pdf != null:
return pdf(_that);case TextSourceEntity() when text != null:
return text(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PdfSourceEntity value)  pdf,required TResult Function( TextSourceEntity value)  text,}){
final _that = this;
switch (_that) {
case PdfSourceEntity():
return pdf(_that);case TextSourceEntity():
return text(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PdfSourceEntity value)?  pdf,TResult? Function( TextSourceEntity value)?  text,}){
final _that = this;
switch (_that) {
case PdfSourceEntity() when pdf != null:
return pdf(_that);case TextSourceEntity() when text != null:
return text(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String notebookId,  String name,  String uri,  String sha256)?  pdf,TResult Function( String id,  String notebookId,  String name,  String content)?  text,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PdfSourceEntity() when pdf != null:
return pdf(_that.id,_that.notebookId,_that.name,_that.uri,_that.sha256);case TextSourceEntity() when text != null:
return text(_that.id,_that.notebookId,_that.name,_that.content);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String notebookId,  String name,  String uri,  String sha256)  pdf,required TResult Function( String id,  String notebookId,  String name,  String content)  text,}) {final _that = this;
switch (_that) {
case PdfSourceEntity():
return pdf(_that.id,_that.notebookId,_that.name,_that.uri,_that.sha256);case TextSourceEntity():
return text(_that.id,_that.notebookId,_that.name,_that.content);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String notebookId,  String name,  String uri,  String sha256)?  pdf,TResult? Function( String id,  String notebookId,  String name,  String content)?  text,}) {final _that = this;
switch (_that) {
case PdfSourceEntity() when pdf != null:
return pdf(_that.id,_that.notebookId,_that.name,_that.uri,_that.sha256);case TextSourceEntity() when text != null:
return text(_that.id,_that.notebookId,_that.name,_that.content);case _:
  return null;

}
}

}

/// @nodoc


class PdfSourceEntity implements SourceEntity {
  const PdfSourceEntity({required this.id, required this.notebookId, required this.name, required this.uri, required this.sha256});
  

@override final  String id;
@override final  String notebookId;
@override final  String name;
 final  String uri;
 final  String sha256;

/// Create a copy of SourceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PdfSourceEntityCopyWith<PdfSourceEntity> get copyWith => _$PdfSourceEntityCopyWithImpl<PdfSourceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PdfSourceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.notebookId, notebookId) || other.notebookId == notebookId)&&(identical(other.name, name) || other.name == name)&&(identical(other.uri, uri) || other.uri == uri)&&(identical(other.sha256, sha256) || other.sha256 == sha256));
}


@override
int get hashCode => Object.hash(runtimeType,id,notebookId,name,uri,sha256);

@override
String toString() {
  return 'SourceEntity.pdf(id: $id, notebookId: $notebookId, name: $name, uri: $uri, sha256: $sha256)';
}


}

/// @nodoc
abstract mixin class $PdfSourceEntityCopyWith<$Res> implements $SourceEntityCopyWith<$Res> {
  factory $PdfSourceEntityCopyWith(PdfSourceEntity value, $Res Function(PdfSourceEntity) _then) = _$PdfSourceEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String notebookId, String name, String uri, String sha256
});




}
/// @nodoc
class _$PdfSourceEntityCopyWithImpl<$Res>
    implements $PdfSourceEntityCopyWith<$Res> {
  _$PdfSourceEntityCopyWithImpl(this._self, this._then);

  final PdfSourceEntity _self;
  final $Res Function(PdfSourceEntity) _then;

/// Create a copy of SourceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? notebookId = null,Object? name = null,Object? uri = null,Object? sha256 = null,}) {
  return _then(PdfSourceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,notebookId: null == notebookId ? _self.notebookId : notebookId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,uri: null == uri ? _self.uri : uri // ignore: cast_nullable_to_non_nullable
as String,sha256: null == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TextSourceEntity implements SourceEntity {
  const TextSourceEntity({required this.id, required this.notebookId, required this.name, required this.content});
  

@override final  String id;
@override final  String notebookId;
@override final  String name;
 final  String content;

/// Create a copy of SourceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextSourceEntityCopyWith<TextSourceEntity> get copyWith => _$TextSourceEntityCopyWithImpl<TextSourceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextSourceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.notebookId, notebookId) || other.notebookId == notebookId)&&(identical(other.name, name) || other.name == name)&&(identical(other.content, content) || other.content == content));
}


@override
int get hashCode => Object.hash(runtimeType,id,notebookId,name,content);

@override
String toString() {
  return 'SourceEntity.text(id: $id, notebookId: $notebookId, name: $name, content: $content)';
}


}

/// @nodoc
abstract mixin class $TextSourceEntityCopyWith<$Res> implements $SourceEntityCopyWith<$Res> {
  factory $TextSourceEntityCopyWith(TextSourceEntity value, $Res Function(TextSourceEntity) _then) = _$TextSourceEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String notebookId, String name, String content
});




}
/// @nodoc
class _$TextSourceEntityCopyWithImpl<$Res>
    implements $TextSourceEntityCopyWith<$Res> {
  _$TextSourceEntityCopyWithImpl(this._self, this._then);

  final TextSourceEntity _self;
  final $Res Function(TextSourceEntity) _then;

/// Create a copy of SourceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? notebookId = null,Object? name = null,Object? content = null,}) {
  return _then(TextSourceEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,notebookId: null == notebookId ? _self.notebookId : notebookId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
