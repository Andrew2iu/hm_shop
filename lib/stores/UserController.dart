import 'package:get/get.dart';
import 'package:hm_shop/viewmodels/user.dart';
import 'package:hm_shop/utils/DioRequest.dart';
import 'package:hm_shop/constants/index.dart';

class UserController extends GetxController {
  var user = UserInfo.fromJSON({}).obs;
  updateUserInfo(UserInfo newUser) {
    user.value = newUser;
  }
}
