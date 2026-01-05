
import '../../src.dart';
@lazySingleton
class PathProviderService {
  Future<Directory> getDocumentsDirectory() async {
    return await getApplicationDocumentsDirectory();
  }

  Future<Directory> getTemporaryDirectoryPath() async {
    return await getTemporaryDirectory();
  }

  Future<Directory> getAppSupportDirectory() async {
    return await getApplicationSupportDirectory();
  }

  Future<Directory?> getAppLibraryDirectory() async {
    try {
      return await getLibraryDirectory();
    } catch (_) {
      return null;
    }
  }

  Future<Directory?> getDownloadsDirectoryPath() async {
    return await getDownloadsDirectory();
  }

  Future<Directory?> getExternalStorageDirectoryPath() async {
    return await getExternalStorageDirectory();
  }

  Future<List<Directory>?> getExternalCacheDirectoriesPath() async {
    return await getExternalCacheDirectories();
  }

  Future<List<Directory>?> getExternalStorageDirectoriesPath() async {
    return await getExternalStorageDirectories();
  }
}
