
@available(iOS 9.3, *)
enum SKCloudServiceAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case denied
  case restricted
  case authorized
}
@available(iOS 9.3, *)
struct SKCloudServiceCapability : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var musicCatalogPlayback: SKCloudServiceCapability { get }
  @available(iOS 10.1, *)
  static var musicCatalogSubscriptionEligible: SKCloudServiceCapability { get }
  static var addToCloudMusicLibrary: SKCloudServiceCapability { get }
}
@available(iOS 9.3, *)
class SKCloudServiceController : NSObject {
  @available(iOS 9.3, *)
  class func authorizationStatus() -> SKCloudServiceAuthorizationStatus
  @available(iOS 9.3, *)
  class func requestAuthorization(_ handler: @escaping (SKCloudServiceAuthorizationStatus) -> Void)
  @available(iOS 9.3, *)
  func requestCapabilities(completionHandler: @escaping (SKCloudServiceCapability, Error?) -> Void)
  @available(iOS 11.0, *)
  func requestStorefrontCountryCode(completionHandler: @escaping (String?, Error?) -> Void)
  @available(iOS 9.3, *)
  func requestStorefrontIdentifier(completionHandler: @escaping (String?, Error?) -> Void)
  @available(iOS 11.0, *)
  func requestUserToken(forDeveloperToken developerToken: String, completionHandler: @escaping (String?, Error?) -> Void)
  @available(iOS, introduced: 10.3, deprecated: 11.0)
  func requestPersonalizationToken(forClientToken clientToken: String, withCompletionHandler completionHandler: @escaping (String?, Error?) -> Void)
}
extension NSNotification.Name {
  @available(iOS 9.3, *)
  static let SKCloudServiceCapabilitiesDidChange: NSNotification.Name
  @available(iOS 11.0, *)
  static let SKStorefrontCountryCodeDidChange: NSNotification.Name
  @available(iOS 9.3, *)
  static let SKStorefrontIdentifierDidChange: NSNotification.Name
}
