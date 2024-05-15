import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'account.dart';
import 'cart.dart';
import 'explor.dart';
import 'fav.dart';
import 'shop.dart';

class pages extends StatefulWidget {
  const pages({Key? key}) : super(key: key);

  @override
  State<pages> createState() => _pagesState();
}

class _pagesState extends State<pages> {
  int _currentIndex = 1;
  final List<Widget> _pages = [
    shop(),
    ProductGrid(),
    cart(),
    fav(),
    account(),
  ];

  void _onTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTab,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/shop.svg',
              color: _currentIndex == 0 ? Color(0xff53B175) : Color(0xff181725),
            ),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/explor.svg',
              color: _currentIndex == 1 ? Color(0xff53B175) : Color(0xff181725),
            ),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: _currentIndex == 2 ? Color(0xff53B175) : Color(0xff181725),
            ),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/fav.svg',
              color: _currentIndex == 3 ? Color(0xff53B175) : Color(0xff181725),
            ),
            label: '',

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/account.svg',
              color: _currentIndex == 4 ?Color(0xff53B175) : Color(0xff181725),
            ),
            label: '',

          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
