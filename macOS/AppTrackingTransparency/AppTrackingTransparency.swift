
extension ATTrackingManager {
  @available(macOS 11.0, *)
  enum AuthorizationStatus : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case notDetermined
    case restricted
    case denied
    case authorized
  }
}
@available(macOS 11.0, *)
class ATTrackingManager : NSObject {
  class var trackingAuthorizationStatus: ATTrackingManager.AuthorizationStatus { get }
  class func requestTrackingAuthorization(completionHandler completion: @escaping (ATTrackingManager.AuthorizationStatus) -> Void)
  class func requestTrackingAuthorization() async -> ATTrackingManager.AuthorizationStatus
}
var AppTrackingTransparencyVersionNumber: Double
