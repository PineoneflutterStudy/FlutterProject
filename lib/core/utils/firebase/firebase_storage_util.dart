import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';

import '../logger.dart';

/// # Use Firebase Storage

final imgType = ['.png', '.jpg'];
final Logger _logger = CustomLogger.logger;

class FirebaseStorageUtil {
  FirebaseStorage storage = FirebaseStorage.instance;

  Future<String> getPngImageUrl(String location) async {
    _logger.i('Check Image Location( Png ).. -> ${location}');

    if (location.isNotEmpty) {
      return await storage
          .ref()
          .child('${location + imgType[0]}')
          .getDownloadURL();
    } else {
      _logger.e('Location is Empty( Png ).. -> ${location}');
      return '';
    }
  }

  Future<String> getJpgImageUrl(String location) async {
    _logger.i('Check Image Location( Jpg ).. -> ${location}');

    if (location.isNotEmpty) {
      return await storage
          .ref()
          .child('${location + imgType[1]}')
          .getDownloadURL();
    } else {
      _logger.e('Location is Empty( Jpg ).. -> ${location}');
      return '';
    }
  }
}
