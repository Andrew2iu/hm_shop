import 'package:hm_shop/constants/index.dart';
import 'package:hm_shop/viewmodels/user.dart';
import 'package:hm_shop/utils/DioRequest.dart';

Future<UserInfo> loginAPI(Map<String, dynamic> data) async {
  return UserInfo.fromJSON(
    await dioRequest.post(HttpConstants.LOGIN, data: data),
  );
}

Future<UserInfo> getUserInfoAPI() async {
  return UserInfo.fromJSON(await dioRequest.get(HttpConstants.USER_PROFILE));
}
