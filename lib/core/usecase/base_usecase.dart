import '../../src2.dart';
import "../../src.dart";

abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}