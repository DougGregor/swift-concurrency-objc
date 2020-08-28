
@available(watchOS 3.2, *)
class INPriceRange : NSObject, NSCopying, NSSecureCoding {
  init(firstPrice: NSDecimalNumber, secondPrice: NSDecimalNumber, currencyCode: String)
  init(maximumPrice: NSDecimalNumber, currencyCode: String)
  init(minimumPrice: NSDecimalNumber, currencyCode: String)
  convenience init(price: NSDecimalNumber, currencyCode: String)
  var minimumPrice: NSDecimalNumber? { get }
  var maximumPrice: NSDecimalNumber? { get }
  var currencyCode: String { get }
}
