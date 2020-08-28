
extension SKProduct {
  @available(watchOS 6.2, *)
  enum PeriodUnit : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case day
    case week
    case month
    case year
  }
}
@available(watchOS 6.2, *)
class SKProductSubscriptionPeriod : NSObject {
  @available(watchOS 6.2, *)
  var numberOfUnits: Int { get }
  @available(watchOS 6.2, *)
  var unit: SKProduct.PeriodUnit { get }
}
@available(watchOS 6.2, *)
class SKProduct : NSObject {
  @available(watchOS 6.2, *)
  var localizedDescription: String { get }
  @available(watchOS 6.2, *)
  var localizedTitle: String { get }
  @available(watchOS 6.2, *)
  var price: NSDecimalNumber { get }
  @available(watchOS 6.2, *)
  var priceLocale: Locale { get }
  @available(watchOS 6.2, *)
  var productIdentifier: String { get }
  @available(watchOS 6.2, *)
  var isDownloadable: Bool { get }
  @available(watchOS 7.0, *)
  var isFamilyShareable: Bool { get }
  @available(watchOS 6.2, *)
  var downloadContentLengths: [NSNumber] { get }
  var contentVersion: String { get }
  @available(watchOS 6.2, *)
  var downloadContentVersion: String { get }
  @available(watchOS 6.2, *)
  var subscriptionPeriod: SKProductSubscriptionPeriod? { get }
  @available(watchOS 6.2, *)
  var introductoryPrice: SKProductDiscount? { get }
  @available(watchOS 6.2, *)
  var subscriptionGroupIdentifier: String? { get }
  @available(watchOS 6.2, *)
  var discounts: [SKProductDiscount] { get }
}
