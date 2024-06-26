import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pedidos',
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(
            16,
          ),
          physics: BouncingScrollPhysics(),
          itemBuilder: itemBuilder,
          separatorBuilder: (_, index) => const SizedBox(
                height: 10,
              ),
          itemCount: itemCount),
    );
  }
}
