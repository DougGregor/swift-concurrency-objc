
@available(iOS, introduced: 7.0, deprecated: 12.1)
let CTSubscriberTokenRefreshed: String
@available(iOS 12.1, *)
protocol CTSubscriberDelegate {
  func subscriberTokenRefreshed(_ subscriber: CTSubscriber)
}
@available(iOS 7.0, *)
class CTSubscriber : NSObject {
  @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Deprecated; returns nil starting in iOS 11.3.")
  var carrierToken: Data? { get }
  @available(iOS 12.1, *)
  var identifier: String { get }
  @available(iOS 12.1, *)
  weak var delegate: @sil_weak CTSubscriberDelegate?
}
