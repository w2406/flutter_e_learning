import 'package:flutter_e_learning/domain/setting/app_version/repository/app_version_repository.dart';
import 'package:flutter_e_learning/domain/setting/app_version/value_object/app_version.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppVersionRepositoryImpl implements AppVersionRepository {
  @override
  Future<AppVersion> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return AppVersion(value: packageInfo.version);
  }
}
