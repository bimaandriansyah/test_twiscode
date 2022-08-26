import 'package:get/get.dart';

class Cart {
  late final int? id;
  String? productId;
  String? productName;
  int? initialPrice;
  int? productPrice;
  Rxn<int>? quantity;
  String? image;

  Cart(
      {required this.id,
      required this.productId,
      required this.productName,
      required this.initialPrice,
      required this.productPrice,
      required this.quantity,
      required this.image});

  Cart.fromMap(Map<dynamic, dynamic> data)
      : id = data['id'],
        productId = data['productId'],
        productName = data['productName'],
        initialPrice = data['initialPrice'],
        productPrice = data['productPrice'],
        quantity = data['quantity'],
        image = data['image'];
}
