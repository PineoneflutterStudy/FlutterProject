import '../firebase_options.dart';
import '../main.dart' as entry;

// flavor에 맞는 firebase 설정을 읽어오기
void main() async {
  entry.main(DefaultFirebaseOptions.currentPlatform);
}