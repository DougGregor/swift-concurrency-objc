
@available(watchOS 3.2, *)
class INCurrencyAmount : NSObject, NSCopying, NSSecureCoding {
  init(amount: NSDecimalNumber, currencyCode: String)
  @NSCopying var amount: NSDecimalNumber? { get }
  var currencyCode: String? { get }
}
