abstract class BaseStateMapper<StateType, Result> {
  StateType mapResultToState(StateType state, Result result);
}
