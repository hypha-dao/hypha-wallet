enum UserAccountError {
  noSpecialCharactersOrSpaces('Only standard characters a-z'),
  onlyNumbers15('Only use numbers from 1 to 5'),
  mustBe12Characters('12 characters long'),
  lowercaseOnly('Only use lowercase'),
  alreadyTaken('Account name available');

  const UserAccountError(this.message);

  final String message;
}
