
extension SKProductDiscount {
  @available(iOS 11.2, *)
  enum PaymentMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case payAsYouGo
    case payUpFront
    case freeTrial
  }
  @available(iOS 12.2, *)
  enum `Type` : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case introductory
    case subscription
  }
}
@available(iOS 11.2, *)
class SKProductDiscount : NSObject {
  @available(iOS 11.2, *)
  var price: NSDecimalNumber { get }
  @available(iOS 11.2, *)
  var priceLocale: Locale { get }
  @available(iOS 12.2, *)
  var identifier: String? { get }
  @available(iOS 11.2, *)
  var subscriptionPeriod: SKProductSubscriptionPeriod { get }
  @available(iOS 11.2, *)
  var numberOfPeriods: Int { get }
  @available(iOS 11.2, *)
  var paymentMode: SKProductDiscount.PaymentMode { get }
  @available(iOS 12.2, *)
  var type: SKProductDiscount.`Type` { get }
}
