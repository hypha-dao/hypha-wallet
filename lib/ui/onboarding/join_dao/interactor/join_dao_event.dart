part of 'join_dao_bloc.dart';

@freezed
class JoinDaoEvent with _$JoinDaoEvent {
  const factory JoinDaoEvent.initial() = _Initial;
  const factory JoinDaoEvent.onYesTapped() = _OnYesTapped;
}
