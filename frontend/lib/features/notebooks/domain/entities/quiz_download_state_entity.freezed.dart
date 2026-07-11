// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_download_state_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuizDownloadStateEntity {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuizDownloadStateEntity);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizDownloadStateEntity()';
}


}

/// @nodoc
class $QuizDownloadStateEntityCopyWith<$Res>  {
$QuizDownloadStateEntityCopyWith(QuizDownloadStateEntity _, $Res Function(QuizDownloadStateEntity) __);
}


/// Adds pattern-matching-related methods to [QuizDownloadStateEntity].
extension QuizDownloadStateEntityPatterns on QuizDownloadStateEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NotDownloaded value)?  notDownloaded,TResult Function( Downloaded value)?  downloaded,TResult Function( UpdateAvailable value)?  updateAvailable,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NotDownloaded() when notDownloaded != null:
return notDownloaded(_that);case Downloaded() when downloaded != null:
return downloaded(_that);case UpdateAvailable() when updateAvailable != null:
return updateAvailable(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NotDownloaded value)  notDownloaded,required TResult Function( Downloaded value)  downloaded,required TResult Function( UpdateAvailable value)  updateAvailable,}){
final _that = this;
switch (_that) {
case NotDownloaded():
return notDownloaded(_that);case Downloaded():
return downloaded(_that);case UpdateAvailable():
return updateAvailable(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NotDownloaded value)?  notDownloaded,TResult? Function( Downloaded value)?  downloaded,TResult? Function( UpdateAvailable value)?  updateAvailable,}){
final _that = this;
switch (_that) {
case NotDownloaded() when notDownloaded != null:
return notDownloaded(_that);case Downloaded() when downloaded != null:
return downloaded(_that);case UpdateAvailable() when updateAvailable != null:
return updateAvailable(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  notDownloaded,TResult Function( int downloadedRevision)?  downloaded,TResult Function( int currentRevision,  int downloadedRevision)?  updateAvailable,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NotDownloaded() when notDownloaded != null:
return notDownloaded();case Downloaded() when downloaded != null:
return downloaded(_that.downloadedRevision);case UpdateAvailable() when updateAvailable != null:
return updateAvailable(_that.currentRevision,_that.downloadedRevision);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  notDownloaded,required TResult Function( int downloadedRevision)  downloaded,required TResult Function( int currentRevision,  int downloadedRevision)  updateAvailable,}) {final _that = this;
switch (_that) {
case NotDownloaded():
return notDownloaded();case Downloaded():
return downloaded(_that.downloadedRevision);case UpdateAvailable():
return updateAvailable(_that.currentRevision,_that.downloadedRevision);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  notDownloaded,TResult? Function( int downloadedRevision)?  downloaded,TResult? Function( int currentRevision,  int downloadedRevision)?  updateAvailable,}) {final _that = this;
switch (_that) {
case NotDownloaded() when notDownloaded != null:
return notDownloaded();case Downloaded() when downloaded != null:
return downloaded(_that.downloadedRevision);case UpdateAvailable() when updateAvailable != null:
return updateAvailable(_that.currentRevision,_that.downloadedRevision);case _:
  return null;

}
}

}

/// @nodoc


class NotDownloaded extends QuizDownloadStateEntity {
  const NotDownloaded(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotDownloaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuizDownloadStateEntity.notDownloaded()';
}


}




/// @nodoc


class Downloaded extends QuizDownloadStateEntity {
  const Downloaded({required this.downloadedRevision}): super._();
  

 final  int downloadedRevision;

/// Create a copy of QuizDownloadStateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadedCopyWith<Downloaded> get copyWith => _$DownloadedCopyWithImpl<Downloaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Downloaded&&(identical(other.downloadedRevision, downloadedRevision) || other.downloadedRevision == downloadedRevision));
}


@override
int get hashCode => Object.hash(runtimeType,downloadedRevision);

@override
String toString() {
  return 'QuizDownloadStateEntity.downloaded(downloadedRevision: $downloadedRevision)';
}


}

/// @nodoc
abstract mixin class $DownloadedCopyWith<$Res> implements $QuizDownloadStateEntityCopyWith<$Res> {
  factory $DownloadedCopyWith(Downloaded value, $Res Function(Downloaded) _then) = _$DownloadedCopyWithImpl;
@useResult
$Res call({
 int downloadedRevision
});




}
/// @nodoc
class _$DownloadedCopyWithImpl<$Res>
    implements $DownloadedCopyWith<$Res> {
  _$DownloadedCopyWithImpl(this._self, this._then);

  final Downloaded _self;
  final $Res Function(Downloaded) _then;

/// Create a copy of QuizDownloadStateEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? downloadedRevision = null,}) {
  return _then(Downloaded(
downloadedRevision: null == downloadedRevision ? _self.downloadedRevision : downloadedRevision // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateAvailable extends QuizDownloadStateEntity {
  const UpdateAvailable({required this.currentRevision, required this.downloadedRevision}): super._();
  

 final  int currentRevision;
 final  int downloadedRevision;

/// Create a copy of QuizDownloadStateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAvailableCopyWith<UpdateAvailable> get copyWith => _$UpdateAvailableCopyWithImpl<UpdateAvailable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAvailable&&(identical(other.currentRevision, currentRevision) || other.currentRevision == currentRevision)&&(identical(other.downloadedRevision, downloadedRevision) || other.downloadedRevision == downloadedRevision));
}


@override
int get hashCode => Object.hash(runtimeType,currentRevision,downloadedRevision);

@override
String toString() {
  return 'QuizDownloadStateEntity.updateAvailable(currentRevision: $currentRevision, downloadedRevision: $downloadedRevision)';
}


}

/// @nodoc
abstract mixin class $UpdateAvailableCopyWith<$Res> implements $QuizDownloadStateEntityCopyWith<$Res> {
  factory $UpdateAvailableCopyWith(UpdateAvailable value, $Res Function(UpdateAvailable) _then) = _$UpdateAvailableCopyWithImpl;
@useResult
$Res call({
 int currentRevision, int downloadedRevision
});




}
/// @nodoc
class _$UpdateAvailableCopyWithImpl<$Res>
    implements $UpdateAvailableCopyWith<$Res> {
  _$UpdateAvailableCopyWithImpl(this._self, this._then);

  final UpdateAvailable _self;
  final $Res Function(UpdateAvailable) _then;

/// Create a copy of QuizDownloadStateEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentRevision = null,Object? downloadedRevision = null,}) {
  return _then(UpdateAvailable(
currentRevision: null == currentRevision ? _self.currentRevision : currentRevision // ignore: cast_nullable_to_non_nullable
as int,downloadedRevision: null == downloadedRevision ? _self.downloadedRevision : downloadedRevision // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
