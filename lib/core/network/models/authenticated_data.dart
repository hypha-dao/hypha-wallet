import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticated_data.freezed.dart';
part 'authenticated_data.g.dart';

@freezed
class AuthenticatedData with _$AuthenticatedData {
  factory AuthenticatedData({
    required String account,
    required String token,
  }) = _AuthenticatedData;

  factory AuthenticatedData.fromJson(Map<String, dynamic> json) => _$AuthenticatedDataFromJson(json);
}
