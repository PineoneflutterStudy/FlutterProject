import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/utils/logger.dart';
import '../../../../../data/data_source/local_storage/meet/local_prefs_storage.dart';
import '../../../../../data/repository_impl/display/meet/start_address_repository_impl.dart';
import '../../../../../domain/usecase/meet/get_all_address.dart';
import '../../../../../main.dart';
import '../../../../main/common/component/widget/appbar.dart';
import '../../empty_page/view/screens/empty_meet_screen.dart';


/**
 * Manager 김경태
 *
 * 약속장소 중간에서 만나!
 */
final Logger _logger = CustomLogger.logger;

class MeetPage extends StatefulWidget {
  const MeetPage({super.key});

  @override
  State<MeetPage> createState() => _MeetPageState();
}
class _MeetPageState extends State<MeetPage> {

  late GetAllAddress _getAllAddress;

  @override
  void initState() {
    super.initState();

    final localStorage = LocalPrefsStorageImpl(sharedPreferences: sharedPref);
    final repo = StartAddressRepositoryImpl(localPrefsStorage: localStorage);

    localStorage.resetAddress();
    /*_getAllAddress = GetAllAddress(repository: repo);*/

  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Scaffold(
        appBar: MainAppbar(title: '우리 어디서 만날까?'),
        body: EmptyMeetScreen(),
      ),
    );
  }
}
