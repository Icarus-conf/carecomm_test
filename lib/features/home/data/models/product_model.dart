import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
part 'product_model.g.dart';


class ProductsResponseModel {
  List<ProductModel>? properties;

  ProductsResponseModel({this.properties});

  ProductsResponseModel.fromJson(List<dynamic> json) {
    properties =
        json.map((property) => ProductModel.fromJson(property)).toList();
  }

  List<dynamic> toJson() {
    return properties?.map((property) => property.toJson()).toList() ?? [];
  }
}

@HiveType(typeId: 0)
@injectable
class ProductModel {
  @HiveField(0)
  num? id;
  @HiveField(1)
  String? title;
  @HiveField(2)
  num? price;
  @HiveField(3)
  String? description;
  @HiveField(4)
  String? category;
  @HiveField(5)
  String? image;
  @HiveField(6)


  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,

  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
 
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['description'] = description;
    data['category'] = category;
    data['image'] = image;

    return data;
  }
}