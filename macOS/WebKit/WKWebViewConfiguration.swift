
@available(macOS 10.12, *)
enum WKUserInterfaceDirectionPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case content
  case system
}
@available(macOS 10.12, *)
struct WKAudiovisualMediaTypes : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var audio: WKAudiovisualMediaTypes { get }
  static var video: WKAudiovisualMediaTypes { get }
  static var all: WKAudiovisualMediaTypes { get }
}
@available(macOS 10.10, *)
class WKWebViewConfiguration : NSObject, NSSecureCoding, NSCopying {
  var processPool: WKProcessPool
  var preferences: WKPreferences
  var userContentController: WKUserContentController
  @available(macOS 10.11, *)
  var websiteDataStore: WKWebsiteDataStore
  var suppressesIncrementalRendering: Bool
  @available(macOS 10.11, *)
  var applicationNameForUserAgent: String?
  @available(macOS 10.11, *)
  var allowsAirPlayForMediaPlayback: Bool
  @available(macOS 10.12, *)
  var mediaTypesRequiringUserActionForPlayback: WKAudiovisualMediaTypes
  @available(macOS 10.15, *)
  @NSCopying var defaultWebpagePreferences: WKWebpagePreferences!
  @available(macOS 11.0, *)
  var limitsNavigationsToAppBoundDomains: Bool
  @available(macOS 10.12, *)
  var userInterfaceDirectionPolicy: WKUserInterfaceDirectionPolicy
  @available(macOS 10.13, *)
  func setURLSchemeHandler(_ urlSchemeHandler: WKURLSchemeHandler?, forURLScheme urlScheme: String)
  @available(macOS 10.13, *)
  func urlSchemeHandler(forURLScheme urlScheme: String) -> WKURLSchemeHandler?
}
