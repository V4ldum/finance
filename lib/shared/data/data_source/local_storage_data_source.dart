import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/local_storage_data_source.g.dart';

@riverpod
LocalStorageDataSource localStorageDataSource(LocalStorageDataSourceRef ref) {
  return LocalStorageDataSource();
}

class LocalStorageDataSource {
  final _storage = const FlutterSecureStorage();

  Future<String?> read(String key) {
    return _storage.read(key: key);
  }

  Future<Map<String, String>> readAll() {
    return _storage.readAll();
  }

  Future<void> write(String key, String value) {
    return _storage.write(key: key, value: value);
  }

  Future<void> delete(String key) {
    return _storage.delete(key: key);
  }

  Future<void> deleteAll() {
    return _storage.deleteAll();
  }
}
