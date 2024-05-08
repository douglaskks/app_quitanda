import 'package:app_quitanda/src/Models/item_model.dart';
import 'package:app_quitanda/src/Pages/product/product_screen.dart';
import 'package:app_quitanda/src/Services/Utils_Services.dart';
import 'package:app_quitanda/src/config/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemTile extends StatelessWidget {
  ItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (c) {
              return ProductScreen(item: item);
            }));
          },
          child: Card(
            elevation: 1,
            shadowColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Imagem
                  Expanded(
                    child: Hero(
                      tag: item.imgUrl,
                      child: Image.asset(item.imgUrl),
                    ),
                  ),
                  // Nome do Produto
                  Text(
                    item.itemName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Preço do Produto
                  Row(
                    children: [
                      Text(
                        utilsServices.priceToCurrency(item.price),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: CustomColors.customSwatchColor),
                      ),
                      Text(
                        '${item.unit}',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ), // exibição do preço
                ],
              ),
            ),
          ),
        ),
        // Botão de Adicionar o carrinho
        Positioned(
          top: 4,
          right: 4,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 35,
              decoration: BoxDecoration(
                color: CustomColors.customSwatchColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
