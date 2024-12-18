import 'package:app_quitanda/src/Models/order_model.dart';
import 'package:app_quitanda/src/Services/utils_services.dart';
import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  OrderTile({super.key, required this.order});

  final OrderModel order;
  final UtilsServices utilsServices = UtilsServices();
  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pedido: ${order.id} '),
              Text('${now.toLocal()}', style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),),
            ],
          ),
          children: const [
            SizedBox(height: 100,)
          ],
          ),
      ),
    );
  }
}