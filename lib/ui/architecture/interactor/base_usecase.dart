/// Use [InputUseCase] or [NoInputUseCase] whenever you want to interact with the system through
/// CRUD (Create, Read, Update, Delete) data-related operations that also need to return a single data value back.
/// <p>
/// As the two use case alternatives suggest, consider [NoInputUseCase] if you don't need to pass any
/// parameters to the use case at all, or [InputUseCase] otherwise.
/// <p>
/// When depending on multiple input parameters, define an private data class in the use case so this can be
/// used as an Input parameter.
abstract class InputUseCase<Result, InputType> {
  Future<Result> run(InputType input);
}

abstract class NoInputUseCase<Result> {
  Future<Result> run();
}
