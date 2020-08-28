
@available(watchOS 3.0, *)
class INRidePartySizeOption : NSObject, NSCopying, NSSecureCoding {
  init(partySizeRange: NSRange, sizeDescription: String, priceRange: INPriceRange?)
  var partySizeRange: NSRange { get }
  var sizeDescription: String { get }
  var priceRange: INPriceRange? { get }
}
