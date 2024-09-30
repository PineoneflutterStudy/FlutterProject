import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart' as path;

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

//==============================================================================
//  For [UserPage] or [LoginPage] By Eogeum
//==============================================================================
  /// ## 파이어베이스 스토리지에 프로필 이미지 업로드하고 프로필 이미지 url을 반환한다.
  Future<String> uploadProfileImage(String uid, File image) async {
    final String fileName = path.basename(image.path);
    final Reference storageRef = storage.ref().child('profile_images/$uid/$fileName');
    final UploadTask uploadTask = storageRef.putFile(image);

    // 업로드 된 이미지 url 반환
    final TaskSnapshot taskSnapshot = await uploadTask;
    final String imageUrl = await taskSnapshot.ref.getDownloadURL();
    return imageUrl;
  }
}
