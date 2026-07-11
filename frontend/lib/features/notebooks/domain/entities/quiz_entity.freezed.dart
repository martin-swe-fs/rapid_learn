// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuizEntity {

 String get id; String get rootNotebookId; String get title; List<String> get sourceIds; int get revision; int get questionCount; int get subNotebookCount;
/// Create a copy of QuizEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizEntityCopyWith<QuizEntity> get copyWith => _$QuizEntityCopyWithImpl<QuizEntity>(this as QuizEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.rootNotebookId, rootNotebookId) || other.rootNotebookId == rootNotebookId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.sourceIds, sourceIds)&&(identical(other.revision, revision) || other.revision == revision)&&(identical(other.questionCount, questionCount) || other.questionCount == questionCount)&&(identical(other.subNotebookCount, subNotebookCount) || other.subNotebookCount == subNotebookCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,rootNotebookId,title,const DeepCollectionEquality().hash(sourceIds),revision,questionCount,subNotebookCount);

@override
String toString() {
  return 'QuizEntity(id: $id, rootNotebookId: $rootNotebookId, title: $title, sourceIds: $sourceIds, revision: $revision, questionCount: $questionCount, subNotebookCount: $subNotebookCount)';
}


}

/// @nodoc
abstract mixin class $QuizEntityCopyWith<$Res>  {
  factory $QuizEntityCopyWith(QuizEntity value, $Res Function(QuizEntity) _then) = _$QuizEntityCopyWithImpl;
@useResult
$Res call({
 String id, String rootNotebookId, String title, List<String> sourceIds, int revision, int questionCount, int subNotebookCount
});




}
/// @nodoc
class _$QuizEntityCopyWithImpl<$Res>
    implements $QuizEntityCopyWith<$Res> {
  _$QuizEntityCopyWithImpl(this._self, this._then);

  final QuizEntity _self;
  final $Res Function(QuizEntity) _then;

/// Create a copy of QuizEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rootNotebookId = null,Object? title = null,Object? sourceIds = null,Object? revision = null,Object? questionCount = null,Object? subNotebookCount = null,}) {
  return _then(QuizEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rootNotebookId: null == rootNotebookId ? _self.rootNotebookId : rootNotebookId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sourceIds: null == sourceIds ? _self.sourceIds : sourceIds // ignore: cast_nullable_to_non_nullable
as List<String>,revision: null == revision ? _self.revision : revision // ignore: cast_nullable_to_non_nullable
as int,questionCount: null == questionCount ? _self.questionCount : questionCount // ignore: cast_nullable_to_non_nullable
as int,subNotebookCount: null == subNotebookCount ? _self.subNotebookCount : subNotebookCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuizEntity].
extension QuizEntityPatterns on QuizEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuizEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuizEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuizEntity value)  $default,){
final _that = this;
switch (_that) {
case _QuizEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuizEntity value)?  $default,){
final _that = this;
switch (_that) {
case _QuizEntity() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String rootNotebookId,  String title,  List<String> sourceIds,  int revision,  int questionCount,  int subNotebookCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuizEntity() when $default != null:
return $default(_that.id,_that.rootNotebookId,_that.title,_that.sourceIds,_that.revision,_that.questionCount,_that.subNotebookCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String rootNotebookId,  String title,  List<String> sourceIds,  int revision,  int questionCount,  int subNotebookCount)  $default,) {final _that = this;
switch (_that) {
case _QuizEntity():
return $default(_that.id,_that.rootNotebookId,_that.title,_that.sourceIds,_that.revision,_that.questionCount,_that.subNotebookCount);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String rootNotebookId,  String title,  List<String> sourceIds,  int revision,  int questionCount,  int subNotebookCount)?  $default,) {final _that = this;
switch (_that) {
case _QuizEntity() when $default != null:
return $default(_that.id,_that.rootNotebookId,_that.title,_that.sourceIds,_that.revision,_that.questionCount,_that.subNotebookCount);case _:
  return null;

}
}

}

/// @nodoc


class _QuizEntity implements QuizEntity {
  const _QuizEntity({required this.id, required this.rootNotebookId, required this.title, required  List<String> sourceIds, required this.revision, required this.questionCount, required this.subNotebookCount}): _sourceIds = sourceIds;
  

@override final  String id;
@override final  String rootNotebookId;
@override final  String title;
 final  List<String> _sourceIds;
@override List<String> get sourceIds {
  if (_sourceIds is EqualUnmodifiableListView) return _sourceIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sourceIds);
}

@override final  int revision;
@override final  int questionCount;
@override final  int subNotebookCount;

/// Create a copy of QuizEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizEntityCopyWith<_QuizEntity> get copyWith => __$QuizEntityCopyWithImpl<_QuizEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuizEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.rootNotebookId, rootNotebookId) || other.rootNotebookId == rootNotebookId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._sourceIds, _sourceIds)&&(identical(other.revision, revision) || other.revision == revision)&&(identical(other.questionCount, questionCount) || other.questionCount == questionCount)&&(identical(other.subNotebookCount, subNotebookCount) || other.subNotebookCount == subNotebookCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,rootNotebookId,title,const DeepCollectionEquality().hash(_sourceIds),revision,questionCount,subNotebookCount);

@override
String toString() {
  return 'QuizEntity(id: $id, rootNotebookId: $rootNotebookId, title: $title, sourceIds: $sourceIds, revision: $revision, questionCount: $questionCount, subNotebookCount: $subNotebookCount)';
}


}

/// @nodoc
abstract mixin class _$QuizEntityCopyWith<$Res> implements $QuizEntityCopyWith<$Res> {
  factory _$QuizEntityCopyWith(_QuizEntity value, $Res Function(_QuizEntity) _then) = __$QuizEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String rootNotebookId, String title, List<String> sourceIds, int revision, int questionCount, int subNotebookCount
});




}
/// @nodoc
class __$QuizEntityCopyWithImpl<$Res>
    implements _$QuizEntityCopyWith<$Res> {
  __$QuizEntityCopyWithImpl(this._self, this._then);

  final _QuizEntity _self;
  final $Res Function(_QuizEntity) _then;

/// Create a copy of QuizEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rootNotebookId = null,Object? title = null,Object? sourceIds = null,Object? revision = null,Object? questionCount = null,Object? subNotebookCount = null,}) {
  return _then(_QuizEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rootNotebookId: null == rootNotebookId ? _self.rootNotebookId : rootNotebookId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sourceIds: null == sourceIds ? _self._sourceIds : sourceIds // ignore: cast_nullable_to_non_nullable
as List<String>,revision: null == revision ? _self.revision : revision // ignore: cast_nullable_to_non_nullable
as int,questionCount: null == questionCount ? _self.questionCount : questionCount // ignore: cast_nullable_to_non_nullable
as int,subNotebookCount: null == subNotebookCount ? _self.subNotebookCount : subNotebookCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
