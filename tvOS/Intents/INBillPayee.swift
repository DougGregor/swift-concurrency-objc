
@available(tvOS 10.3, *)
class INBillPayee : NSObject, NSCopying, NSSecureCoding {
  init?(nickname: INSpeakableString, number: String?, organizationName: INSpeakableString?)
  @NSCopying var nickname: INSpeakableString? { get }
  var accountNumber: String? { get }
  @NSCopying var organizationName: INSpeakableString? { get }
}
