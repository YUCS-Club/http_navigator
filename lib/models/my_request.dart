import 'package:json_annotation/json_annotation.dart';

part 'my_request.g.dart';

@JsonSerializable()
class MyRequest {
  final int used;
  final int available;
  final String resets;

  const MyRequest(this.used, this.available, this.resets);

  factory MyRequest.fromJson(Map<String, dynamic> json) =>
      _$MyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MyRequestToJson(this);
}
