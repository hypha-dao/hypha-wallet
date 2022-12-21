enum UserAccountError {
  failedToCreateAccount,
  usernameAlreadyTaken,
  noInvitesFound,
  inviteAlreadyClaimed,
  inviteHashNotFound,
  qRCodeScanFailed,
  validationFailedSelectUsername,
  validationFailedOnlyNumbers15,
  validationFailedNameLowercaseOnly,
  validationFailedNoSpecialCharactersOrSpaces,
  validationFailedUsernameMustBe12Characters;
}
