
extension SKProduct {
  @available(iOS 11.2, *)
  enum PeriodUnit : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case day
    case week
    case month
    case year
  }
}
@available(iOS 11.2, *)
class SKProductSubscriptionPeriod : NSObject {
  @available(iOS 11.2, *)
  var numberOfUnits: Int { get }
  @available(iOS 11.2, *)
  var unit: SKProduct.PeriodUnit { get }
}
@available(iOS 3.0, *)
class SKProduct : NSObject {
  @available(iOS 3.0, *)
  var localizedDescription: String { get }
  @available(iOS 3.0, *)
  var localizedTitle: String { get }
  @available(iOS 3.0, *)
  var price: NSDecimalNumber { get }
  @available(iOS 3.0, *)
  var priceLocale: Locale { get }
  @available(iOS 3.0, *)
  var productIdentifier: String { get }
  @available(iOS 6.0, *)
  var isDownloadable: Bool { get }
  @available(iOS 14.0, *)
  var isFamilyShareable: Bool { get }
  @available(iOS 6.0, *)
  var downloadContentLengths: [NSNumber] { get }
  var contentVersion: String { get }
  @available(iOS 6.0, *)
  var downloadContentVersion: String { get }
  @available(iOS 11.2, *)
  var subscriptionPeriod: SKProductSubscriptionPeriod? { get }
  @available(iOS 11.2, *)
  var introductoryPrice: SKProductDiscount? { get }
  @available(iOS 12.0, *)
  var subscriptionGroupIdentifier: String? { get }
  @available(iOS 12.2, *)
  var discounts: [SKProductDiscount] { get }
}
