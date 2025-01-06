import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/app_info_repository.g.dart';

@riverpod
AppInfoRepository appInfoRepository(Ref ref) {
  return AppInfoRepository(PackageInfo.fromPlatform());
}

class AppInfoRepository {
  AppInfoRepository(this._dataSource);

  final Future<PackageInfo> _dataSource;

  Future<String> getPackageName() async {
    return (await _dataSource).packageName;
  }

  Future<String> getVersion() async {
    return (await _dataSource).version;
  }
}
