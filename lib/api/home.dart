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

// 热榜推荐
Future<SpecialRecommendResult> getInVogueListAPI() async {
  // 返回请求
  return SpecialRecommendResult.fromJson(
    await dioRequest.get(HttpConstants.IN_VOGUE_LIST),
  );
}

// 一站式推荐
Future<SpecialRecommendResult> getOneStopListAPI() async {
  // 返回请求
  return SpecialRecommendResult.fromJson(
    await dioRequest.get(HttpConstants.ONE_STOP_LIST),
  );
}

// 推荐列表
Future<List<GoodDetailItem>> getRecommendListAPI(
  Map<String, dynamic> params,
) async {
  return ((await dioRequest.get(
    HttpConstants.RECOMMEND_LIST,
    queryParameters: params,
  )) as List).map((item) {
    return GoodDetailItem.formJSON(item as Map<String, dynamic>);
  }).toList();
}
