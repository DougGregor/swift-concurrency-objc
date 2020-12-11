
@available(macOS 11.0, *)
enum SKCloudServiceAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case denied
  case restricted
  case authorized
}
@available(macOS 11.0, *)
struct SKCloudServiceCapability : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var musicCatalogPlayback: SKCloudServiceCapability { get }
  @available(macOS 11.0, *)
  static var musicCatalogSubscriptionEligible: SKCloudServiceCapability { get }
  static var addToCloudMusicLibrary: SKCloudServiceCapability { get }
}
@available(macOS 11.0, *)
class SKCloudServiceController : NSObject {
  @available(macOS 11.0, *)
  class func authorizationStatus() -> SKCloudServiceAuthorizationStatus
  @available(macOS 11.0, *)
  class func requestAuthorization(_ handler: @escaping (SKCloudServiceAuthorizationStatus) -> Void)
  @available(macOS 11.0, *)
  func requestCapabilities(completionHandler: @escaping (SKCloudServiceCapability, Error?) -> Void)
  @available(macOS 11.0, *)
  func requestCapabilities() async throws -> SKCloudServiceCapability
  func requestStorefrontCountryCode(completionHandler: @escaping (String?, Error?) -> Void)
  func requestStorefrontCountryCode() async throws -> String
  @available(macOS 11.0, *)
  func requestStorefrontIdentifier(completionHandler: @escaping (String?, Error?) -> Void)
  @available(macOS 11.0, *)
  func requestStorefrontIdentifier() async throws -> String
  @available(macOS 11.0, *)
  func requestUserToken(forDeveloperToken developerToken: String, completionHandler: @escaping (String?, Error?) -> Void)
  @available(macOS 11.0, *)
  func requestUserToken(forDeveloperToken developerToken: String) async throws -> String
}
extension NSNotification.Name {
  @available(macOS 11.0, *)
  static let SKCloudServiceCapabilitiesDidChange: NSNotification.Name
  @available(macOS 11.0, *)
  static let SKStorefrontCountryCodeDidChange: NSNotification.Name
  @available(macOS 11.0, *)
  static let SKStorefrontIdentifierDidChange: NSNotification.Name
}
