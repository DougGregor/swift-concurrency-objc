
extension SKProduct {
  @available(tvOS 11.2, *)
  enum PeriodUnit : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case day
    case week
    case month
    case year
  }
}
@available(tvOS 11.2, *)
class SKProductSubscriptionPeriod : NSObject {
  @available(tvOS 11.2, *)
  var numberOfUnits: Int { get }
  @available(tvOS 11.2, *)
  var unit: SKProduct.PeriodUnit { get }
}
@available(tvOS 3.0, *)
class SKProduct : NSObject {
  @available(tvOS 3.0, *)
  var localizedDescription: String { get }
  @available(tvOS 3.0, *)
  var localizedTitle: String { get }
  @available(tvOS 3.0, *)
  var price: NSDecimalNumber { get }
  @available(tvOS 3.0, *)
  var priceLocale: Locale { get }
  @available(tvOS 3.0, *)
  var productIdentifier: String { get }
  @available(tvOS 6.0, *)
  var isDownloadable: Bool { get }
  @available(tvOS 14.0, *)
  var isFamilyShareable: Bool { get }
  @available(tvOS 6.0, *)
  var downloadContentLengths: [NSNumber] { get }
  var contentVersion: String { get }
  @available(tvOS 6.0, *)
  var downloadContentVersion: String { get }
  @available(tvOS 11.2, *)
  var subscriptionPeriod: SKProductSubscriptionPeriod? { get }
  @available(tvOS 11.2, *)
  var introductoryPrice: SKProductDiscount? { get }
  @available(tvOS 12.0, *)
  var subscriptionGroupIdentifier: String? { get }
  @available(tvOS 12.2, *)
  var discounts: [SKProductDiscount] { get }
}
