import 'package:flutter_e_learning/domain/setting/app_version/value_object/app_version.dart';

abstract class AppVersionRepository {
  Future<AppVersion> getAppVersion();
}
