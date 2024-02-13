import 'package:finance/shared/domain/repository/app_info_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoMock extends Mock implements PackageInfo {}

void main() {
  late AppInfoRepository sut;
  late PackageInfo dataSource;
  late Future<PackageInfo> dataSourceFuture;

  setUp(() {
    dataSource = PackageInfoMock();
    dataSourceFuture = Future.value(dataSource);
    sut = AppInfoRepository(dataSourceFuture);
  });

  group('AppInfoRepository', () {
    void arrangePackageInfoDataSourceVersion() {
      when(() => dataSource.version).thenAnswer((_) => '1.0.0');
    }

    void arrangePackageInfoDataSourcePackageName() {
      when(() => dataSource.packageName).thenAnswer((_) => 'com.package.name');
    }

    test('getVersion returns a version', () async {
      arrangePackageInfoDataSourceVersion();
      final version = await sut.getVersion();

      verify(() => dataSource.version).called(1);
      expect(version, '1.0.0');
    });

    test('getPackageName returns a package name', () async {
      arrangePackageInfoDataSourcePackageName();
      final packageName = await sut.getPackageName();

      verify(() => dataSource.packageName).called(1);
      expect(packageName, 'com.package.name');
    });
  });
}
