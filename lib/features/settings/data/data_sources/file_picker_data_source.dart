import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/file_picker_data_source.g.dart';

@riverpod
FilePickerDataSource filePickerDataSource(Ref ref) {
  return FilePickerDataSource();
}

class FilePickerDataSource {
  Future<void> openDialogSaveFile({required String content, required String filename}) async {
    final params = SaveFileDialogParams(fileName: filename, data: Uint8List.fromList(content.codeUnits));

    await FlutterFileDialog.saveFile(params: params);
  }

  Future<File?> openDialogReadFile({List<String>? fileExtensionsFilter, List<String>? mimeTypesFilter}) async {
    final params = OpenFileDialogParams(fileExtensionsFilter: fileExtensionsFilter, mimeTypesFilter: mimeTypesFilter);

    final path = await FlutterFileDialog.pickFile(params: params);

    if (path == null) {
      return null;
    }

    return File(path);
  }
}
