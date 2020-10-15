
extension SKProductDiscount {
  @available(watchOS 6.2, *)
  enum PaymentMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case payAsYouGo
    case payUpFront
    case freeTrial
  }
  @available(watchOS 6.2, *)
  enum `Type` : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case introductory
    case subscription
  }
}
@available(watchOS 4.2, *)
class SKProductDiscount : NSObject {
  @available(watchOS 6.2, *)
  var price: NSDecimalNumber { get }
  @available(watchOS 6.2, *)
  var priceLocale: Locale { get }
  @available(watchOS 6.2, *)
  var identifier: String? { get }
  @available(watchOS 6.2, *)
  var subscriptionPeriod: SKProductSubscriptionPeriod { get }
  @available(watchOS 6.2, *)
  var numberOfPeriods: Int { get }
  @available(watchOS 6.2, *)
  var paymentMode: SKProductDiscount.PaymentMode { get }
  @available(watchOS 6.2, *)
  var type: SKProductDiscount.`Type` { get }
}
