import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    //return ListView();
    //要返回橫向滾動，要設高度
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,//橫向排列
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 80,
            height: 100,
            alignment: Alignment.center,//居中
            color: Colors.grey,
            child: Text("分類$index",style: const TextStyle(color: Colors.white),),
            margin: const EdgeInsets.symmetric(horizontal: 10),
          );
        },
      ),
    );
  }
}
