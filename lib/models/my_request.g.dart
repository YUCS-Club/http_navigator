// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyRequest _$MyRequestFromJson(Map<String, dynamic> json) {
  return MyRequest(
    json['used'] as int,
    json['available'] as int,
    json['resets'] as String,
  );
}

Map<String, dynamic> _$MyRequestToJson(MyRequest instance) => <String, dynamic>{
      'used': instance.used,
      'available': instance.available,
      'resets': instance.resets,
    };
