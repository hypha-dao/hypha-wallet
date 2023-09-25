part of 'join_dao_bloc.dart';

@freezed
class JoinDaoState with _$JoinDaoState {
  const JoinDaoState._();

  const factory JoinDaoState({
    @Default(PageState.initial) PageState pageState,
    @Default(false) bool isButtonLoading,
  }) = _JoinDaoState;

}
