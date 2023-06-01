import 'package:get/get.dart';
import 'package:omicx_v2/app/data/models/models.dart';
import '/app/data/providers/shared_preferences_provider.dart';

class DbService extends GetxService {
  var provider = SharedPreferencesProvider();
  AuthResponse? currentUser = null;
  @override
  void onInit() async {
    super.onInit();
    await provider.init();
  }
}
