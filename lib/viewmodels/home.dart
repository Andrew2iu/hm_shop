class BannerItem {
  String id;
  String imgUrl;
  BannerItem({required this.id, required this.imgUrl});
  // 工厂函数
  factory BannerItem.fromJson(Map<String, dynamic> json) {
    return BannerItem(id: json["id"] ?? "", imgUrl: json["imgUrl"] ?? "");
  }
}

class CategoryItem {
  String id;
  String name;
  String picture;
  List<CategoryItem>? children;
  CategoryItem({
    required this.id,
    required this.name,
    required this.picture,
    this.children,
  });
  factory CategoryItem.fromJson(Map<String, dynamic> json) => CategoryItem(
    id: json["id"] ?? "",
    name: json["name"] ?? "",
    picture: json["picture"] ?? "",
    children: json["children"] != null
        ? (json["children"] as List)
              .map((e) => CategoryItem.fromJson(e))
              .toList()
        : null,
  );
}

class GoodsItem {
  String id;
  String name;
  String? desc;
  String price;
  String picture;
  int orderNum;
  GoodsItem({
    required this.id,
    required this.name,
    this.desc,
    required this.price,
    required this.picture,
    required this.orderNum,
  });
  factory GoodsItem.fromJson(Map<String, dynamic> json) => GoodsItem(
    id: json["id"] ?? "",
    name: json["name"] ?? "",
    desc: json["desc"],
    price: json["price"] ?? "",
    picture: json["picture"] ?? "",
    orderNum: json["orderNum"] ?? 0,
  );
}

class GoodsItems {
  int counts;
  int pageSize;
  int pages;
  int page;
  List<GoodsItem> items;
  GoodsItems({
    required this.counts,
    required this.pageSize,
    required this.pages,
    required this.page,
    required this.items,
  });
  factory GoodsItems.fromJson(Map<String, dynamic> json) => GoodsItems(
    counts: json["counts"] ?? 0,
    pageSize: json["pageSize"] ?? 0,
    pages: json["pages"] ?? 0,
    page: json["page"] ?? 0,
    items:
        (json["items"] as List?)?.map((e) => GoodsItem.fromJson(e)).toList() ??
        [],
  );
}

class SubTypeItem {
  String id;
  String title;
  GoodsItems goodsItems;
  SubTypeItem({
    required this.id,
    required this.title,
    required this.goodsItems,
  });
  factory SubTypeItem.fromJson(Map<String, dynamic> json) => SubTypeItem(
    id: json["id"] ?? "",
    title: json["title"] ?? "",
    goodsItems: GoodsItems.fromJson(json["goodsItems"] ?? {}),
  );
}

class SpecialRecommendResult {
  String id;
  String title;
  List<SubTypeItem> subTypes;
  SpecialRecommendResult({
    required this.id,
    required this.title,
    required this.subTypes,
  });
  factory SpecialRecommendResult.fromJson(Map<String, dynamic> json) =>
      SpecialRecommendResult(
        id: json["id"] ?? "",
        title: json["title"] ?? "",
        subTypes:
            (json["subTypes"] as List?)
                ?.map((e) => SubTypeItem.fromJson(e))
                .toList() ??
            [],
      );
}
