
@available(iOS 6.0, *)
class CTSubscriberInfo : NSObject {
  @available(iOS 12.1, *)
  class func subscribers() -> [CTSubscriber]
  @available(iOS, introduced: 6.0, deprecated: 12.1)
  class func subscriber() -> CTSubscriber
}
