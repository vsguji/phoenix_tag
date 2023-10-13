/*
import 'package:phoenix_navbar/phoenix_navbar.dart';
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 17:06:50
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-13 12:59:39
 * @FilePath: /phoenix_tag/example/lib/custom_tag_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_tag/phoenix_tag.dart';

class CustomTagExample extends StatefulWidget {
  @override
  _CustomTagExampleState createState() => _CustomTagExampleState();
}

class _CustomTagExampleState extends State<CustomTagExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '自定义标签',
      ),
      body: SingleChildScrollView(
        child: Column(
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
            const BubbleText(
                maxLines: 4, text: '标签的文字11号字，上下左右的边距是3，圆角是2，支持自定义的背景色和文字颜色'),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            TagCustom(
              tagText: '自定义标签',
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const Text(
              '异常案例：文案特别长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            TagCustom(
              tagText:
                  '标题特别长特别长特别长特别长特别长特别长特别长特别长标题特别长特别长特别长特别长特别长特别长特别长特别长标题特别长特别长特别长特别长特别长特别长特别长特别长',
            ),
          ],
        ),
      ),
    );
  }
}
