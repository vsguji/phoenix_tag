/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2022-04-29 16:53:03
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-13 13:01:10
 * @FilePath: /phoenix_tag/example/lib/delete_tag_example.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_tag/phoenix_tag.dart';
import 'package:phoenix_toast/phoenix_toast.dart';

///标签选择view
class DeleteTagExamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TagViewExamplePageState();
}

class TagViewExamplePageState extends State<DeleteTagExamplePage> {
  List<String> tagList = [
    '这是一条很长很长很长很长很长很长很长很长很长很长的标签',
    '标签信息',
    '标签信息标签信息',
    '标签信息',
    '标签信息标签信息标签信息标签信息'
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(
        title: 'BrnDeleteTag',
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[_buildDeleteWidget()],
        ),
      ),
    );
  }

  Widget _buildDeleteWidget() {
    DeleteTagController controller = DeleteTagController(initTags: [
      '这是一条很长很长很长很长很长很长很长很长很长很长的标签',
      '标签信息',
      '标签信息标签信息',
      '标签信息',
      '标签信息标签信息标签信息标签信息'
    ]);

    return Container(
      margin: EdgeInsets.only(top: 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          DeleteTag(
            controller: controller,
            onTagDelete: (tags, tag, index) {
              PhoenixToast.show(
                  '剩余的标签为：${tags.toString()},删除了的标签为：$tag  ,删除的标签index为$index',
                  context);
            },
          ),
          DeleteTag(
            controller: controller,
            tagTextStyle: TextStyle(color: Colors.blue, fontSize: 20),
            deleteIconSize: Size(16, 16),
            onTagDelete: (tags, tag, index) {
              PhoenixToast.show(
                  '剩余的标签为：${tags.toString()},删除了的标签为：$tag  ,删除的标签index为$index',
                  context);
            },
          ),
          DeleteTag(
            controller: controller,
            tagTextStyle: TextStyle(color: Colors.yellow),
            backgroundColor: Colors.blue,
            deleteIconColor: Colors.red,
            softWrap: false,
            onTagDelete: (tags, tag, index) {
              PhoenixToast.show(
                  '剩余的标签为：${tags.toString()},删除了的标签为：$tag  ,删除的标签index为$index',
                  context);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => controller.addTag('增加的tag'),
              ),
              IconButton(
                icon: Icon(Icons.delete_forever),
                onPressed: () => controller.deleteForIndex(0),
              )
            ],
          )
        ],
      ),
    );
  }
}
