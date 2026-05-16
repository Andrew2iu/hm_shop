import 'package:hm_shop/viewmodels/home.dart';
import 'package:hm_shop/utils/DioRequest.dart';
import 'package:hm_shop/constants/index.dart';

// 封装api请求
Future<List<BannerItem>> getBannerListAPI() async {
  return ((await dioRequest.get(HttpConstants.BANNER_LIST)) as List)
      .map((e) => BannerItem.fromJson(e))
      .toList();
}

Future<List<CategoryItem>> getCategoryListAPI() async {
  return ((await dioRequest.get(HttpConstants.CATEGORY_LIST)) as List)
      .map((e) => CategoryItem.fromJson(e))
      .toList();
}

Future<SpecialRecommendResult> getSpecialRecommendListAPI() async {
  return SpecialRecommendResult.fromJson(
    await dioRequest.get(HttpConstants.PRODUCT_LIST),
  );
}
