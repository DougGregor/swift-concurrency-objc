
extension SKProduct {
  @available(macOS 10.13.2, *)
  enum PeriodUnit : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case day
    case week
    case month
    case year
  }
}
@available(macOS 10.13.2, *)
class SKProductSubscriptionPeriod : NSObject {
  @available(macOS 10.13.2, *)
  var numberOfUnits: Int { get }
  @available(macOS 10.13.2, *)
  var unit: SKProduct.PeriodUnit { get }
}
@available(macOS 10.7, *)
class SKProduct : NSObject {
  @available(macOS 10.7, *)
  var localizedDescription: String { get }
  @available(macOS 10.7, *)
  var localizedTitle: String { get }
  @available(macOS 10.7, *)
  var price: NSDecimalNumber { get }
  @available(macOS 10.7, *)
  var priceLocale: Locale { get }
  @available(macOS 10.7, *)
  var productIdentifier: String { get }
  @available(macOS 10.15, *)
  var isDownloadable: Bool { get }
  @available(macOS, introduced: 10.8, deprecated: 10.15)
  var downloadable: Bool { get }
  @available(macOS 11.0, *)
  var isFamilyShareable: Bool { get }
  @available(macOS, introduced: 10.8, deprecated: 10.14)
  var contentLengths: [NSNumber] { get }
  @available(macOS 10.14, *)
  var downloadContentLengths: [NSNumber] { get }
  @available(macOS, introduced: 10.8, deprecated: 10.14)
  var contentVersion: String { get }
  @available(macOS 10.14, *)
  var downloadContentVersion: String { get }
  @available(macOS 10.13.2, *)
  var subscriptionPeriod: SKProductSubscriptionPeriod? { get }
  @available(macOS 10.13.2, *)
  var introductoryPrice: SKProductDiscount? { get }
  @available(macOS 10.14, *)
  var subscriptionGroupIdentifier: String? { get }
  @available(macOS 10.14.4, *)
  var discounts: [SKProductDiscount] { get }
}
