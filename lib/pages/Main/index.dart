import 'package:flutter/material.dart';
import 'package:hm_shop/pages/Home/index.dart';
import 'package:hm_shop/pages/Category/index.dart';
import 'package:hm_shop/pages/Cart/index.dart';
import 'package:hm_shop/pages/Mine/index.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  final List<Map<String, String>> _tabList = [
    {
      'icon': "lib/assets/ic_public_home_normal.png",
      'active_icon': "lib/assets/ic_public_home_active.png",
      'text': '首页',
    },
    {
      'icon': "lib/assets/ic_public_pro_normal.png",
      'active_icon': "lib/assets/ic_public_pro_active.png",
      'text': '分类',
    },
    {
      'icon': "lib/assets/ic_public_cart_normal.png",
      'active_icon': "lib/assets/ic_public_cart_active.png",
      'text': '购物车',
    },
    {
      'icon': "lib/assets/ic_public_my_normal.png",
      'active_icon': "lib/assets/ic_public_my_active.png",
      'text': '我的',
    },
  ];

  int _currentIndex = 0;

  List<BottomNavigationBarItem> _getTabBarWidget() {
    return List.generate(
      _tabList.length,
      (index) => BottomNavigationBarItem(
        icon: Image.asset(_tabList[index]['icon']!, width: 30, height: 30),
        activeIcon: Image.asset(
          _tabList[index]['active_icon']!,
          width: 30,
          height: 30,
        ),
        label: _tabList[index]['text']!,
      ),
    );
  }

  List<Widget> _getBodyWidget() {
    return [HomeView(), CategoryView(), CartView(), MineView()];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _currentIndex, children: _getBodyWidget()),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        items: _getTabBarWidget(),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
