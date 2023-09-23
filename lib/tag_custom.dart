import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';

///
/// 用于展示的通用标签
/// 默认是圆角为2的矩形边框，如果不满足需要可以通过[tagBorderRadius]来单独设置
///
/// 该标签的每一部分都支持用户自定义，文本颜色、背景色等等
///
/// 是对Container的封装，减少边框，颜色等模版代码的开发
///
/// ```dart
/// BrnTagCustom(tagText: '标签',)
///
/// BrnTagCustom(tagText: '标签',backgroundColor:Colors.red)
/// ```
///
class TagCustom extends StatelessWidget {
  /// 标签的文字
  final String tagText;

  /// 标签的背景颜色 默认主题色
  final Color? backgroundColor;

  /// 标签的文本颜色 默认F4的反白颜色
  final Color? textColor;

  /// 标签的圆角 默认为2
  /// 如果同时设置了borderRadius、tagBorderRadius字段，优先使用tagBorderRadius字段设置圆角
  final BorderRadius tagBorderRadius;

  /// 标签的padding  默认为3
  final EdgeInsets textPadding;

  /// 文字大小
  final double fontSize;

  /// 文字粗细
  final FontWeight fontWeight;

  /// 最大宽度
  final double maxWidth;

  /// 标签边框
  final Border? border;

  TagCustom({
    Key? key,
    required this.tagText,
    this.textColor,
    this.backgroundColor,
    this.tagBorderRadius = const BorderRadius.all(Radius.circular(2)),
    this.textPadding =
        const EdgeInsets.only(bottom: 0.5, left: 3, right: 3, top: 0),
    this.border,
    this.fontSize = 11,
    this.fontWeight = FontWeight.normal,
    this.maxWidth = double.infinity,
  }) : super(key: key);

  ///快捷方式生成边框标签
  TagCustom.buildBorderTag({
    Key? key,
    required this.tagText,
    this.backgroundColor = Colors.transparent,
    this.textPadding =
        const EdgeInsets.only(bottom: 3, left: 3, right: 3, top: 0),
    this.fontSize = 11,
    this.fontWeight = FontWeight.normal,
    this.tagBorderRadius = const BorderRadius.all(Radius.circular(2)),
    Color? textColor,
    Color? borderColor,
    double borderWidth = 1,
  })  : maxWidth = double.infinity,
        border = Border.all(
          color: borderColor ??
              BaseThemeConfig.instance.getConfig().commonConfig.brandPrimary,
          width: borderWidth,
        ),
        textColor = textColor ??
            BaseThemeConfig.instance.getConfig().commonConfig.brandPrimary,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
        decoration: BoxDecoration(
            color: backgroundColor ??
                BaseThemeConfig.instance.getConfig().commonConfig.brandPrimary,
            shape: BoxShape.rectangle,
            borderRadius: tagBorderRadius,
            border: border),
        padding: textPadding,
        child: Text(
          tagText,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor ??
                BaseThemeConfig.instance
                    .getConfig()
                    .commonConfig
                    .colorTextBaseInverse,
            fontWeight: fontWeight,
          ),
        ));
  }
}
