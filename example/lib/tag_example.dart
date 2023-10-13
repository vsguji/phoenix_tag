/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 17:06:50
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-13 13:04:01
 * @FilePath: /phoenix_tag/example/lib/tag_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';

import 'border_tag_example.dart';
import 'custom_tag_example.dart';
import 'delete_tag_example.dart';
import 'list_item.dart';
import 'select_tag_example.dart';
import 'state_tag_example.dart';
import 'tag_row_example.dart';

class TagExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(
        title: "标签示例",
      ),
      body: ListView(
        children: [
          ListItem(
            title: "选择标签",
            isShowLine: false,
            isSupportTheme: true,
            describe: '可单选、多选标签',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return SelectTagExamplePage();
                },
              ));
            },
          ),
          ListItem(
            title: "删除标签",
            isSupportTheme: true,
            describe: '可删除的标签',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return DeleteTagExamplePage();
                },
              ));
            },
          ),
          ListItem(
            title: "自定义标签",
            describe: 'key宽度最多92,value是左对齐',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return CustomTagExample();
                },
              ));
            },
          ),
          ListItem(
            title: "状态标签",
            describe: '默认黄色，支持设置其他颜色',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return StateTagExample();
                },
              ));
            },
          ),
          ListItem(
            title: "带边框颜色",
            describe: '默认主题色，支持设置其他颜色',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return BorderTagExample();
                },
              ));
            },
          ),
          ListItem(
            title: "标签组",
            describe: '多个标签组合在一起标签',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return RowTagExample();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
