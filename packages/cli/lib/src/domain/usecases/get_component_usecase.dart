import 'package:either_dart/either.dart';
import 'package:theta_cli/src/domain/repositories/component_repository.dart';
import 'package:theta_cli/src/domain/usecases/base_usecase.dart';

class GetComponentUseCase
    implements UseCase<Exception, String, GetComponentUseCaseParams> {
  const GetComponentUseCase(this._componentRepository);

  final ComponentRepository _componentRepository;

  @override
  Future<Either<Exception, String>> call(
    GetComponentUseCaseParams params,
  ) =>
      _componentRepository.getComponent(params.componentName);
}

class GetComponentUseCaseParams extends Params {
  const GetComponentUseCaseParams({
    required this.componentName,
  });

  final String componentName;
}
