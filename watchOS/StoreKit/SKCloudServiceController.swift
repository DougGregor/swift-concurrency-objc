
@available(watchOS 7.0, *)
enum SKCloudServiceAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case denied
  case restricted
  case authorized
}
@available(watchOS 7.0, *)
struct SKCloudServiceCapability : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var musicCatalogPlayback: SKCloudServiceCapability { get }
  @available(watchOS 7.0, *)
  static var musicCatalogSubscriptionEligible: SKCloudServiceCapability { get }
  static var addToCloudMusicLibrary: SKCloudServiceCapability { get }
}
@available(watchOS 7.0, *)
class SKCloudServiceController : NSObject {
  @available(watchOS 7.0, *)
  class func authorizationStatus() -> SKCloudServiceAuthorizationStatus
  @available(watchOS 7.0, *)
  class func requestAuthorization(_ handler: @escaping (SKCloudServiceAuthorizationStatus) -> Void)
  @available(watchOS 7.0, *)
  func requestCapabilities(completionHandler: @escaping (SKCloudServiceCapability, Error?) -> Void)
  @available(watchOS 4.0, *)
  func requestStorefrontCountryCode(completionHandler: @escaping (String?, Error?) -> Void)
  @available(watchOS 7.0, *)
  func requestStorefrontIdentifier(completionHandler: @escaping (String?, Error?) -> Void)
  @available(watchOS 7.0, *)
  func requestUserToken(forDeveloperToken developerToken: String, completionHandler: @escaping (String?, Error?) -> Void)
}
extension NSNotification.Name {
  @available(watchOS 7.0, *)
  static let SKCloudServiceCapabilitiesDidChange: NSNotification.Name
  @available(watchOS 7.0, *)
  static let SKStorefrontCountryCodeDidChange: NSNotification.Name
  @available(watchOS 7.0, *)
  static let SKStorefrontIdentifierDidChange: NSNotification.Name
}
