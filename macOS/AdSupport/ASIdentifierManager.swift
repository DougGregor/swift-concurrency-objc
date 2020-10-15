
@available(macOS 10.14, *)
class ASIdentifierManager : NSObject {
  class func shared() -> ASIdentifierManager
  var advertisingIdentifier: UUID { get }
  @available(macOS, introduced: 10.14, deprecated: 11.0, message: "This has been replaced by functionality in AppTrackingTransparency's ATTrackingManager class.")
  var isAdvertisingTrackingEnabled: Bool { get }
}
