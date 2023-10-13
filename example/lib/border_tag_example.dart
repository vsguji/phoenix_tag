/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 17:06:50
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-13 12:58:29
 * @FilePath: /phoenix_tag/example/lib/border_tag_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */

import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_tag/phoenix_tag.dart';

class BorderTagExample extends StatefulWidget {
  @override
  _BorderTagExampleState createState() => _BorderTagExampleState();
}

class _BorderTagExampleState extends State<BorderTagExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(
        title: "带边框的标签",
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          '规则',
          style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        BubbleText(maxLines: 4, text: ' 文字大小 11，上下左右间距 3'),
        const Text(
          '正常案例',
          style: TextStyle(
            color: Color(0xFF222222),
            fontSize: 28,
          ),
        ),
        TagCustom.buildBorderTag(
          tagText: '已盘点',
        ),
        const Text(
          '正常案例1',
          style: TextStyle(
            color: Color(0xFF222222),
            fontSize: 28,
          ),
        ),
        TagCustom.buildBorderTag(
          tagText: '认证通过',
          textColor: Colors.red,
          borderColor: Colors.red,
          borderWidth: 2,
          fontSize: 24,
          textPadding: const EdgeInsets.all(6),
        ),
      ],
    );
  }
}
