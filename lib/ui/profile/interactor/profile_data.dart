class ProfileData {
  final String? image;
  final String name;
  final String account;
  final String? bio;
  final String? bitCoinAddress;
  final EosAccountData? eosAccountData;
  final List<OrganizationData> organizations;

  ProfileData({
    this.image,
    required this.name,
    required this.account,
    this.bio,
    this.bitCoinAddress,
    this.eosAccountData,
    required this.organizations,
  });
}

class EosAccountData {
  final String eosAddress;
  final String eosName;

  EosAccountData({required this.eosAddress, required this.eosName});
}

class OrganizationData {
  final String name;
  final String? image;

  OrganizationData({required this.name, this.image});
}
