/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 16:53:03
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-13 13:04:43
 * @FilePath: /phoenix_tag/example/lib/tag_row_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_tag/phoenix_tag.dart';

class RowTagExample extends StatefulWidget {
  @override
  _RowTagExampleState createState() => _RowTagExampleState();
}

class _RowTagExampleState extends State<RowTagExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '标签组合',
      ),
      body: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.start,
        spacing: 5,
        runSpacing: 5,
        children: [
          TagCustom(
            tagText: '自定义标签',
          ),
          TagCustom(
            tagText: '标签',
          ),
          TagCustom.buildBorderTag(tagText: '标签1'),
          TagCustom.buildBorderTag(tagText: '标签2'),
          TagCustom.buildBorderTag(tagText: '特长长长长长长的标签'),
          TagCustom(tagText: '一级标签'),
          TagCustom(tagText: '二级标签'),
          TagCustom(tagText: '其他标签'),
          TagCustom(tagText: '二级标签'),
          TagCustom(tagText: '一级标签'),
          TagCustom(tagText: '二级标签'),
        ],
      ),
    );
  }
}
