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
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.purple,
          ),
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
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
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
