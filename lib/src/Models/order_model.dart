import 'package:app_quitanda/src/Models/cart_item_model.dart';

class OrderModel {
  String id;
  DateTime createdDateTime;
  DateTime overduoDateTime;
  List<CartItemModel> items;
  String Status;
  String copyAndPaste;
  double total;

  OrderModel({
    required this.copyAndPaste,
    required this.createdDateTime,
    required this.id,
    required this.items,
    required this.overduoDateTime,
    required this.Status,
    required this.total,
  });
}
