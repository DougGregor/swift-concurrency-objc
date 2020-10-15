
@available(watchOS 3.2, *)
class INPaymentAccount : NSObject, NSCopying, NSSecureCoding {
  @available(watchOS 4.0, *)
  init(nickname: INSpeakableString, number: String?, accountType: INAccountType, organizationName: INSpeakableString?, balance: INBalanceAmount?, secondaryBalance: INBalanceAmount?)
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Please use 'initWithNickname:number:accountType:organizationName:balance:secondaryBalance:' instead")
  convenience init?(nickname: INSpeakableString, number: String?, accountType: INAccountType, organizationName: INSpeakableString?)
  @NSCopying var nickname: INSpeakableString? { get }
  var accountNumber: String? { get }
  var accountType: INAccountType { get }
  @NSCopying var organizationName: INSpeakableString? { get }
  @available(watchOS 4.0, *)
  @NSCopying var balance: INBalanceAmount? { get }
  @available(watchOS 4.0, *)
  @NSCopying var secondaryBalance: INBalanceAmount? { get }
}
