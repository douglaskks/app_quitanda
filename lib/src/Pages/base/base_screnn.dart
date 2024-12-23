import 'package:app_quitanda/src/Pages/Profile/profile_tab.dart';
import 'package:app_quitanda/src/Pages/cart/cart_tab.dart';
import 'package:app_quitanda/src/Pages/home/home_tab.dart';
import 'package:app_quitanda/src/Pages/orders/orders_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseScreen extends StatefulWidget {
  BaseScreen({Key? key});

  int currentIndexFace = 0;
  final pageController = PageController();

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: widget.pageController,
        children: [
          const HomeTab(),
          CartTab(),
          const OrdersTab(),
          const ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.currentIndexFace,
        onTap: (index) {
          setState(() {
            widget.currentIndexFace = index;
            widget.pageController.jumpToPage(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withAlpha(100),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            // Removido o const
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
