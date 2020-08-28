
@available(tvOS 10.3, *)
class INPaymentAccount : NSObject, NSCopying, NSSecureCoding {
  @available(tvOS 11.0, *)
  init(nickname: INSpeakableString, number: String?, accountType: INAccountType, organizationName: INSpeakableString?, balance: INBalanceAmount?, secondaryBalance: INBalanceAmount?)
  @available(tvOS, introduced: 10.3, deprecated: 11.0, message: "Please use 'initWithNickname:number:accountType:organizationName:balance:secondaryBalance:' instead")
  convenience init?(nickname: INSpeakableString, number: String?, accountType: INAccountType, organizationName: INSpeakableString?)
  @NSCopying var nickname: INSpeakableString? { get }
  var accountNumber: String? { get }
  var accountType: INAccountType { get }
  @NSCopying var organizationName: INSpeakableString? { get }
  @available(tvOS 11.0, *)
  @NSCopying var balance: INBalanceAmount? { get }
  @available(tvOS 11.0, *)
  @NSCopying var secondaryBalance: INBalanceAmount? { get }
}
