
extension SKProductDiscount {
  @available(tvOS 11.2, *)
  enum PaymentMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case payAsYouGo
    case payUpFront
    case freeTrial
  }
  @available(tvOS 12.2, *)
  enum `Type` : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case introductory
    case subscription
  }
}
@available(tvOS 11.2, *)
class SKProductDiscount : NSObject {
  @available(tvOS 11.2, *)
  var price: NSDecimalNumber { get }
  @available(tvOS 11.2, *)
  var priceLocale: Locale { get }
  @available(tvOS 12.2, *)
  var identifier: String? { get }
  @available(tvOS 11.2, *)
  var subscriptionPeriod: SKProductSubscriptionPeriod { get }
  @available(tvOS 11.2, *)
  var numberOfPeriods: Int { get }
  @available(tvOS 11.2, *)
  var paymentMode: SKProductDiscount.PaymentMode { get }
  @available(tvOS 12.2, *)
  var type: SKProductDiscount.`Type` { get }
}
