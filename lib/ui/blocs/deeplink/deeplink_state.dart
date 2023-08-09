part of 'deeplink_bloc.dart';

@freezed
class DeeplinkState with _$DeeplinkState {
  const factory DeeplinkState({
    InviteLinkData? inviteLinkData,
    PageCommand? command,
  }) = _DeeplinkState;
}

class InviteLinkData {
  final String code;
  final Network network;
  final String? dao;
  final String? enrollSecret;

  const InviteLinkData({required this.code, required this.network, this.dao, this.enrollSecret,});
}
