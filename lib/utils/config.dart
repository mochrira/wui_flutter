class WuiConfig {

  static final Map<String, dynamic> _config = {};

  static addValue(String key, dynamic value) {
    _config[key] = value;
  }

  static getValue(String key) {
    return _config[key];
  }

}