enum Network {
  telos,
  telosTestnet,
  eos,
  eosTestnet;

  static Network fromString(String label) {
    return values.firstWhere(
      (v) => v.name == label,
      orElse: () => Network.telos,
    );
  }
}
