class ProductModel {
  List<Product>? products;
  int? total;
  int? skip;
  int? limit;

  ProductModel({
    this.products,
    this.total,
    this.skip,
    this.limit,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    products =
        List.from(json['products']).map((e) => Product.fromJson(e)).toList();
  }
}

class Product {
  int? id;
  String? title;
  String? description;
  int? price;

  Product({
    this.id,
    this.title,
    this.description,
    this.price,
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
  }
}
