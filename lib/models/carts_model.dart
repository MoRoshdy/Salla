// To parse this JSON data, do
//
//     final cartsModel = cartsModelFromJson(jsonString);

import 'dart:convert';

CartsModel cartsModelFromJson(String str) => CartsModel.fromJson(json.decode(str));

String cartsModelToJson(CartsModel data) => json.encode(data.toJson());

class CartsModel {
  CartsModel({
    this.status,
    this.message,
    this.data,
  });

  bool? status;
  dynamic message;
  Data? data;

  factory CartsModel.fromJson(Map<String, dynamic> json) => CartsModel(
    status: json["status"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data!.toJson(),
  };
}

class Data {
  Data({
    this.cartItems,
    this.subTotal,
    this.total,
  });

  List<CartItem>? cartItems;
  dynamic subTotal;
  dynamic total;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    cartItems: List<CartItem>.from(json["cart_items"].map((x) => CartItem.fromJson(x))),
    subTotal: json["sub_total"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "cart_items": List<dynamic>.from(cartItems!.map((x) => x.toJson())),
    "sub_total": subTotal,
    "total": total,
  };
}

class CartItem {
  CartItem({
    required this.id,
    required this.quantity,
    this.product,
  });

  int id;
  int quantity;
  Product? product;

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
    id: json["id"],
    quantity: json["quantity"],
    product: Product.fromJson(json["product"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "quantity": quantity,
    "product": product!.toJson(),
  };
}

class Product {
  Product({
    this.id,
    this.price,
    this.oldPrice,
    this.discount,
    required this.image,
    required this.name,
    this.description,
    this.images,
    this.inFavorites,
    this.inCart,
  });

  int? id;
  dynamic price;
  dynamic oldPrice;
  int? discount;
  String image;
  String name;
  String? description;
  List<String>? images;
  bool? inFavorites;
  bool? inCart;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    price: json["price"],
    oldPrice: json["old_price"],
    discount: json["discount"],
    image: json["image"],
    name: json["name"],
    description: json["description"],
    images: List<String>.from(json["images"].map((x) => x)),
    inFavorites: json["in_favorites"],
    inCart: json["in_cart"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "price": price,
    "old_price": oldPrice,
    "discount": discount,
    "image": image,
    "name": name,
    "description": description,
    "images": List<dynamic>.from(images!.map((x) => x)),
    "in_favorites": inFavorites,
    "in_cart": inCart,
  };
}
