import 'package:flutter_e_learning/domain/setting/app_version/repository/app_version_repository.dart';
import 'package:flutter_e_learning/domain/setting/app_version/value_object/app_version.dart';

class GetAppVersionUsecase {
  final AppVersionRepository repository;
  GetAppVersionUsecase(this.repository);

  Future<AppVersion> execute() async {
    return await repository.getAppVersion();
  }
}
