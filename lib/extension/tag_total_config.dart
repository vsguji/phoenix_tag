/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-23 22:09:09
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-23 22:10:53
 * @FilePath: /phoenix_tag/lib/extension/tag_total_config.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:phoenix_base/phoenix.dart';

import '../config/tag_config.dart';
import 'tag_default_config_utils.dart';

class TagTotalConfig extends BaseTotalConfig {
  TagTotalConfig({TagConfig? tagConfig}) : _tagConfig = tagConfig;

  TagConfig? _tagConfig;

  TagConfig get tagConfig => _tagConfig ?? BaseTagConfigUtils.defaultTagConfig;

  @override
  void initThemeConfig(String configId) {
    super.initThemeConfig(configId);
    _tagConfig ??= TagConfig();
    tagConfig.initThemeConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
  }
}

extension BaseSelectionTotalConfig on BaseTotalConfig {
  ///
  static TagConfig? _tagConfig;
  TagConfig get tagConfig => _tagConfig ?? BaseTagConfigUtils.defaultTagConfig;
  set pickerTotalConfig(TagTotalConfig config) {
    _tagConfig = config.tagConfig;
  }
}
