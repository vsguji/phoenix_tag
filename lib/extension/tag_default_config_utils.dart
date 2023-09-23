/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-23 22:06:10
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-23 22:08:21
 * @FilePath: /phoenix_tag/lib/extension/tag_default_config_utils.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';

import '../config/tag_config.dart';

/// 标签配置
extension BaseTagConfigUtils on BaseDefaultConfigUtils {
  ///
  static TagConfig defaultTagConfig = TagConfig(
    tagTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextBase,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeCaption,
    ),
    selectTagTextStyle: BaseTextStyle(
      fontWeight: FontWeight.w600,
      color: BaseDefaultConfigUtils.defaultCommonConfig.brandPrimary,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeCaption,
    ),
    tagBackgroundColor: BaseDefaultConfigUtils.defaultCommonConfig.fillBody,
    selectedTagBackgroundColor:
        BaseDefaultConfigUtils.defaultCommonConfig.brandPrimary,
    tagRadius: BaseDefaultConfigUtils.defaultCommonConfig.radiusXs,
    tagHeight: 34.0,
    tagWidth: 75.0,
    tagMinWidth: 75.0,
  );
}
