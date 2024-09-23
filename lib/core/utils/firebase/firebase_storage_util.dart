import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';

import '../logger.dart';

final Logger _logger = CustomLogger.logger;

/// # Use Firebase Storage
/// ## Firebase Storage 경로를 전달해주세요. ( 확장자명 제외 )
/// * '디렉토리/파일명'

class FirebaseStorageUtil {
  FirebaseStorage storage = FirebaseStorage.instance;

  Future<String> getImageUrl(String location) async {
    _logger.i('Check Image Location( Png ).. -> ${location}');

    if (location.isNotEmpty) {
      return await storage
          .ref()
          .child('${location}')
          .getDownloadURL();
    } else {
      _logger.e('Location is Empty( Png ).. -> ${location}');
      return '';
    }
  }

  /// 전달된 디렉토리 내부 모든 이미지 Url 가져옴
  Future<List<String>?> getAllImageUrl(String directoryName) async {
    _logger.i('Check Firebase Directory Name -> ${directoryName}');

    if (directoryName.isNotEmpty) {
      final storageRef = await storage.ref().child(directoryName);
      final listResult = await storageRef.listAll();

      List<String> urlList = [];
      for (var item in listResult.items) {
        urlList.add(item.fullPath);
      }
      return urlList;
    } else {
      _logger.e('Firebase Directory Name is Empty');
      return List.empty();
    }
  }
}
