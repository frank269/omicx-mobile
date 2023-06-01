import 'package:get/get.dart';

import '../core.dart';
import '/app/data/services/services.dart';
import 'app_exceptions.dart';

class BaseController {
  var dbService = Get.find<DbService>();
  get headers => {
        "Authorization": "Bearer " + (dbService.currentUser?.accessToken ?? ''),
        "abp.tenantid": '102',
        "Content-Type": "application/json; charset=UTF-8"
      };

  void handleError(error) {
    hideLoading();
    if (error is BadRequestException) {
      showToast('Đã có lỗi xảy ra, kiểm tra lại internet!');
    } else if (error is FetchDataException) {
      showToast(error.message ?? 'Đã có lỗi xảy ra, kiểm tra lại internet!');
    } else if (error is UnAuthorizedException) {
      showToast('Token hết hạn, đăng nhập lại để tiếp tục!');
    } else if (error is ApiNotRespondingException) {
      showToast(error.message ?? 'Đã có lỗi xảy ra, kiểm tra lại internet!');
    } else if (error is Exception) {
      showToast('Đã có lỗi xảy ra, kiểm tra lại internet!');
    }
  }

  void showToast(String message) {
    DialogHelper.showToast(message: message);
  }

  void showLoading([String message = 'Loading ...']) {
    DialogHelper.showLoading(message);
  }

  void hideLoading() {
    DialogHelper.hideLoading();
  }
}
