import 'package:hm_shop/constants/index.dart';
import 'package:hm_shop/viewmodels/home.dart';
import 'package:hm_shop/utils/DioRequest.dart';

Future<GoodsDetailsItems> getGuessListAPI(Map<String, dynamic> params) async {
  return GoodsDetailsItems.fromJson(
    await dioRequest.get(HttpConstants.GUESS_LIST, queryParameters: params),
  );
}
