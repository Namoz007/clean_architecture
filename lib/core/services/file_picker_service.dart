import 'package:clean_architecture/src.dart';

@lazySingleton
class FilePickerService{

  late final FilePicker _picker;

  FilePickerService({required FilePicker picker}) : _picker = picker;

  Future<FilePickerResult?> pickSingleFile({List<String>? allowedExtensions, bool withData = false}) async {
    return await FilePicker.platform.pickFiles(
      type: allowedExtensions == null
          ? FileType.any
          : FileType.custom,
      allowedExtensions: allowedExtensions,
      withData: withData,
      allowMultiple: false,
    );
  }

  Future<FilePickerResult?> pickMultipleFiles({List<String>? allowedExtensions, bool withData = false}) async {
    return await FilePicker.platform.pickFiles(
      type: allowedExtensions == null
          ? FileType.any
          : FileType.custom,
      allowedExtensions: allowedExtensions,
      withData: withData,
      allowMultiple: true,
    );
  }

  Future<FilePickerResult?> pickImages({bool multiple = false}) async {
    return await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: multiple,
    );
  }

  Future<FilePickerResult?> pickVideos({bool multiple = false}) async {
    return await FilePicker.platform.pickFiles(
      type: FileType.video,
      allowMultiple: multiple,
    );
  }

  Future<FilePickerResult?> pickAudios({bool multiple = false}) async {
    return await FilePicker.platform.pickFiles(
      type: FileType.audio,
      allowMultiple: multiple,
    );
  }

  Future<FilePickerResult?> pickDocuments({bool multiple = false}) async {
    return await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx', 'txt'],
      allowMultiple: multiple,
    );
  }

  Future<String?> saveFile({
    required String fileName,
    List<String>? allowedExtensions,
  }) async {
    return await FilePicker.platform.saveFile(
      fileName: fileName,
      allowedExtensions: allowedExtensions,
      type: allowedExtensions == null ? FileType.any : FileType.custom,
    );
  }

  Future<String?> pickDirectory() async {
    return await FilePicker.platform.getDirectoryPath();
  }

  Future<bool?> clearTemporaryFiles() async {
    return await FilePicker.platform.clearTemporaryFiles();
  }


}