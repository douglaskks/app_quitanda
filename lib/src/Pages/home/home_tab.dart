import 'package:app_quitanda/src/Pages/home/components/Category_Tile.dart';
import 'package:app_quitanda/src/Pages/home/components/Item_Tile.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as BadgePackage;
import 'package:app_quitanda/src/config/custom_colors.dart';
import 'package:app_quitanda/src/config/app_data.dart' as appData;

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String selectedCategory = 'Frutas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text.rich(
          TextSpan(
            style: const TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                text: 'Quitanda',
                style: TextStyle(
                  color: CustomColors.customContrastColor,
                ),
              ),
              TextSpan(
                text: 'Chagas',
                style: TextStyle(
                  color: CustomColors.customSwatchColor,
                ),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            child: BadgePackage.Badge(
              // Usando BadgePackage como alias
              badgeColor: CustomColors.customContrastColor,
              position:
                  BadgePosition.topEnd(top: 0, end: 3), // Posição do badge
              badgeContent: const Text(
                '2',
                style: TextStyle(color: Colors.white),
              ), // Conteúdo do badge (opcional)
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.green, // Definindo a cor do ícone
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),

            //Campo de pesquisa
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise aqui...',
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),

          //Categorias
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTile(
                  onPressed: () {
                    setState(() {
                      selectedCategory = appData.categories[index];
                    });
                  },
                  category: appData.categories[index],
                  isSelected: appData.categories[index] == selectedCategory,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
              itemCount: appData.categories.length,
            ),
          ),

          // Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 9 / 11.5,
              ),
              itemCount: appData.items.length,
              itemBuilder: (_, index) {
                return ItemTile(
                  item: appData.items[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
