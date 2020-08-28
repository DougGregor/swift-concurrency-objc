
@available(tvOS 11.0, *)
class INBalanceAmount : NSObject, NSCopying, NSSecureCoding {
  init?(amount: NSDecimalNumber, balanceType: INBalanceType)
  init(amount: NSDecimalNumber, currencyCode: String)
  @NSCopying var amount: NSDecimalNumber? { get }
  var balanceType: INBalanceType { get }
  var currencyCode: String? { get }
}
