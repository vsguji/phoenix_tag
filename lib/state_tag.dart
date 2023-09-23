/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-13 20:09:03
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-23 22:03:41
 * @FilePath: /phoenix_tag/lib/state_tag.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

import 'tag_custom.dart';

///
/// 状态标签是反应状态的形式，根据不同的[tagState]呈现不同的背景色和文字颜色
///
/// [TagState]内置了五种状态，如果内置的状态不满足显示需要，可以根据[backgroundColor]和[textColor]灵活组合
///
/// 状态标签是在自定义标签的基础上[BrnTagCustom],进行具体化实现：圆角固定为2，构造参数减少等
///
/// 如果有其他更多自定义的诉求 请参考[BrnTagCustom]
///
/// 其他标签的实现
/// * [BrnTagCustom], 高度自定义的通用标签
///
class StateTag extends StatelessWidget {
  final String tagText;
  final TagState tagState;
  final Color? backgroundColor;
  final Color? textColor;

  /// 状态标签是反应状态的形式，根据不同的[tagState]呈现不同的背景色和文字颜色
  /// 默认为等待状态, 黄色
  const StateTag({
    Key? key,
    required this.tagText,
    this.tagState = TagState.waiting,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TagCustom(
      tagText: tagText,
      textPadding: const EdgeInsets.only(bottom: 0, left: 4, right: 4, top: 0),
      textColor: textColor ?? getTagColor(tagState),
      backgroundColor:
          backgroundColor ?? getTagColor(tagState).withOpacity(0.1),
    );
  }

  /// 根据状态获取背景色
  /// [state] 状态, 默认为 waiting
  Color getTagColor(TagState state) {
    switch (state) {
      case TagState.invalidate:
        return const Color(0xFF999999);
      case TagState.running:
        return const Color(0xFF0984F9);
      case TagState.failed:
        return const Color(0xFFFA3F3F);
      case TagState.succeed:
        return const Color(0xFF00AE66);
      case TagState.waiting:
        return const Color(0xFFFAAD14);
      default:
        return const Color(0xFFFAAD14);
    }
  }
}

enum TagState {
  ///等待
  waiting,

  ///失效
  invalidate,

  ///运行
  running,

  ///失败
  failed,

  ///成功
  succeed
}
