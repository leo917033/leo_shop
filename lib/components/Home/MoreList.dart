import 'package:flutter/material.dart';

class Morelist extends StatefulWidget {
  const Morelist({super.key});

  @override
  State<Morelist> createState() => _MorelistState();
}

class _MorelistState extends State<Morelist> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(//二维的、可以滚动的网格布局。.builder 这个后缀，这意味着它采用了懒加载（lazy loading）的构建方式。只有当列表项（item）即将滚动到屏幕内时
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,//网格兩列
        mainAxisSpacing: 10,//水平间距
        crossAxisSpacing: 10,//垂直间距
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.grey,
          alignment: Alignment.center,
          child: Text("商品$index",style: const TextStyle(color: Colors.white),),
        );
      },
    );
  }
}
