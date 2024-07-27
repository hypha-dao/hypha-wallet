class DaoData {
  final String docId;
  final String detailsDaoName;
  final String settingsDaoTitle;
  final String logoIPFSHash;
  final String logoType;
  final String settingsDaoUrl;

  DaoData({
    required this.docId,
    required this.detailsDaoName,
    required this.settingsDaoTitle,
    required this.logoIPFSHash,
    required this.logoType,
    required this.settingsDaoUrl,
  });

  factory DaoData.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> settings = json['settings'][0];
    print("got settings result: $settings");
    List<String>? logoUrlAndType = settings['settings_logo_s']?.split(':');
    if (logoUrlAndType == null || logoUrlAndType.length != 2) {
      logoUrlAndType = ['', ''];
    }
    return DaoData(
      docId: json['docId'],
      detailsDaoName: json['details_daoName_n'],
      settingsDaoTitle: settings['settings_daoTitle_s'],
      logoIPFSHash: logoUrlAndType[0],
      logoType: logoUrlAndType[1],
      settingsDaoUrl: settings['settings_daoUrl_s'] ?? '',
    );
  }
}
