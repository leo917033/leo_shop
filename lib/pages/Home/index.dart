import 'package:flutter/material.dart';

import '../../components/Home/Category.dart';
import '../../components/Home/Hot.dart';
import '../../components/Home/MoreList.dart';
import '../../components/Home/Silder.dart';
import '../../components/Home/Suggestion.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> _getScrollChildren() {
    return [
      //轉sliver家族
      SliverToBoxAdapter(child: Silder()), //輪播圖
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(child: Category()), //分類
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(child: Suggestion()), //推薦
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Flex(
            //Flex 是一个可以在主轴方向（水平或垂直）上排列子组件的布局 Widget
            direction: Axis.horizontal,
            children: [
              Expanded(child: Hot()),
              //Expanded Widget 只能在 Row, Column, 或 Flex 的 children 中使用。
              SizedBox(width: 10),
              Expanded(child: Hot()),
              //它的唯一作用是：强制其子组件（child）填满主轴（Main Axis）上的所有剩余可用空间。
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      Morelist(),//函數內部是sliver家族,不用SliverToBoxAdapter()
    ];
  }

  @override
  Widget build(BuildContext context) {
    //滾動體系中的核心組件
    return CustomScrollView(slivers: _getScrollChildren()); //要sliver家族內容
  }
}
