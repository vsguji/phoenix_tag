import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_tag/phoenix_tag.dart';

class StateTagExample extends StatefulWidget {
  @override
  _StateTagExampleState createState() => _StateTagExampleState();
}

class _StateTagExampleState extends State<StateTagExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '状态角标签',
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
            const BubbleText(maxLines: 4, text: '同自定义标签'),
            const Text(
              '等待状态',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const StateTag(
              tagText: '待进行',
              tagState: TagState.waiting,
            ),
            const Text(
              '失效状态',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const StateTag(
              tagText: '失效态',
              tagState: TagState.invalidate,
            ),
            const Text(
              '运行状态',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const StateTag(
              tagText: '进行中',
              tagState: TagState.running,
            ),
            const Text(
              '失败状态',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const StateTag(
              tagText: '失败态',
              tagState: TagState.failed,
            ),
            const Text(
              '成功状态',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const StateTag(
              tagText: '成功态',
              tagState: TagState.succeed,
            ),
            const Text(
              '自定义',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const StateTag(
              backgroundColor: Colors.green,
              textColor: Colors.white,
              tagText: '自定义标签自定义标签自定义标签自定义标签自定义标签自定义标签自定义标签自定义标签',
            ),
            Container(
              height: 20,
            ),
            const StateTag(
              tagText: '自定义标签自定义标签自定义标标别长特别签自定义标签自定义标签',
            ),
            const Text(
              '异常案例：文案特别长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const StateTag(
              tagText:
                  '标题特别长特别长特别长特别长特别长特别长特别长特别长标题特别长特别长特别长特别长特别长特别长特别长特别长标题特别长特别长特别长特别长特别长特别长特别长特别长',
            ),
          ],
        ),
      ),
    );
  }
}
