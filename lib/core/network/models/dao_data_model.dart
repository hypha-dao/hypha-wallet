class DaoData {
  final String docId;
  final String detailsDaoName;
  final String settingsDaoTitle;
  final String settingsLogo;
  final String settingsDaoUrl;

  DaoData({
    required this.docId,
    required this.detailsDaoName,
    required this.settingsDaoTitle,
    required this.settingsLogo,
    required this.settingsDaoUrl,
  });

  factory DaoData.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> settings = json['settings'][0];
    return DaoData(
      docId: json['docId'],
      detailsDaoName: json['details_daoName_n'],
      settingsDaoTitle: settings['settings_daoTitle_s'],
      settingsLogo: settings['settings_logo_s'] ?? '',
      settingsDaoUrl: settings['settings_daoUrl_s'] ?? '',
    );
  }
}
