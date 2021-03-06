
extension ATTrackingManager {
  @available(tvOS 14, *)
  enum AuthorizationStatus : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case notDetermined
    case restricted
    case denied
    case authorized
  }
}
@available(tvOS 14, *)
class ATTrackingManager : NSObject {
  class var trackingAuthorizationStatus: ATTrackingManager.AuthorizationStatus { get }
  class func requestTrackingAuthorization(completionHandler completion: @escaping (ATTrackingManager.AuthorizationStatus) -> Void)
}
var AppTrackingTransparencyVersionNumber: Double
