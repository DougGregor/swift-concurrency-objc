
extension SKProductDiscount {
  @available(macOS 10.13.2, *)
  enum PaymentMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case payAsYouGo
    case payUpFront
    case freeTrial
  }
  @available(macOS 10.14.4, *)
  enum `Type` : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case introductory
    case subscription
  }
}
@available(macOS 10.13.2, *)
class SKProductDiscount : NSObject {
  @available(macOS 10.13.2, *)
  var price: NSDecimalNumber { get }
  @available(macOS 10.13.2, *)
  var priceLocale: Locale { get }
  @available(macOS 10.14.4, *)
  var identifier: String? { get }
  @available(macOS 10.13.2, *)
  var subscriptionPeriod: SKProductSubscriptionPeriod { get }
  @available(macOS 10.13.2, *)
  var numberOfPeriods: Int { get }
  @available(macOS 10.13.2, *)
  var paymentMode: SKProductDiscount.PaymentMode { get }
  @available(macOS 10.14.4, *)
  var type: SKProductDiscount.`Type` { get }
}
