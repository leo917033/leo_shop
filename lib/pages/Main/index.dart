import 'package:flutter/material.dart';

import '../Cart/index.dart';
import '../Category/index.dart';
import '../Home/index.dart';
import '../Mine/index.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //定義數據，四個導航
  final List<Map<String, String>> _tabList = [
    {
      "icon": "lib/assets/icon_home_normal.png",
      "active_icon": "lib/assets/icon_home_active.png",
      "test": "首頁",
    },
    {
      "icon": "lib/assets/icon_pro_normal.png",
      "active_icon": "lib/assets/icon_pro_active.png",
      "test": "分類",
    },
    {
      "icon": "lib/assets/icon_cart_normal.png",
      "active_icon": "lib/assets/icon_cart_active.png",
      "test": "購物袋",
    },
    {
      "icon": "lib/assets/icon_my_normal.png",
      "active_icon": "lib/assets/icon_my_active.png",
      "test": "我的",
    },
  ];
  int _currentIndex = 0;

  //返回底部渲染的四個分業
  List<BottomNavigationBarItem> getTabBarWidget() {
    return List.generate(_tabList.length, (int index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tabList[index]["icon"]!, height: 30, width: 30),
        activeIcon: Image.asset(
          _tabList[index]["active_icon"]!,
          height: 30,
          width: 30,
        ),
        label: _tabList[index]["test"]!,
      );
    });
  }
  //返回IndexedStack堆疊頁面索引的頁面
  List<Widget> _getChildren(){
    return [HomeView(),CategoryView(),CartView(),MineView()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //SafeArea避開安全區,IndexedStack堆疊頁面索引
      body: SafeArea(child:
        IndexedStack(
          index: _currentIndex,
          children: _getChildren(),
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: getTabBarWidget(),
        currentIndex: _currentIndex,
        onTap: (int index) {
          _currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
