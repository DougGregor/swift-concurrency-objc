
@available(iOS 8.0, *)
enum WKSelectionGranularity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case dynamic
  case character
}
@available(iOS 10.0, *)
struct WKAudiovisualMediaTypes : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var audio: WKAudiovisualMediaTypes { get }
  static var video: WKAudiovisualMediaTypes { get }
  static var all: WKAudiovisualMediaTypes { get }
}
@available(iOS 8.0, *)
class WKWebViewConfiguration : NSObject, NSSecureCoding, NSCopying {
  var processPool: WKProcessPool
  var preferences: WKPreferences
  var userContentController: WKUserContentController
  @available(iOS 9.0, *)
  var websiteDataStore: WKWebsiteDataStore
  var suppressesIncrementalRendering: Bool
  @available(iOS 9.0, *)
  var applicationNameForUserAgent: String?
  @available(iOS 9.0, *)
  var allowsAirPlayForMediaPlayback: Bool
  @available(iOS 10.0, *)
  var mediaTypesRequiringUserActionForPlayback: WKAudiovisualMediaTypes
  @available(iOS 13.0, *)
  @NSCopying var defaultWebpagePreferences: WKWebpagePreferences!
  @available(iOS 14.0, *)
  var limitsNavigationsToAppBoundDomains: Bool
  var allowsInlineMediaPlayback: Bool
  var selectionGranularity: WKSelectionGranularity
  @available(iOS 9.0, *)
  var allowsPictureInPictureMediaPlayback: Bool
  @available(iOS 10.0, *)
  var dataDetectorTypes: WKDataDetectorTypes
  @available(iOS 10.0, *)
  var ignoresViewportScaleLimits: Bool
  @available(iOS 11.0, *)
  func setURLSchemeHandler(_ urlSchemeHandler: WKURLSchemeHandler?, forURLScheme urlScheme: String)
  @available(iOS 11.0, *)
  func urlSchemeHandler(forURLScheme urlScheme: String) -> WKURLSchemeHandler?
}
extension WKWebViewConfiguration {
  @available(iOS, introduced: 8.0, deprecated: 9.0)
  var mediaPlaybackRequiresUserAction: Bool
  @available(iOS, introduced: 8.0, deprecated: 9.0)
  var mediaPlaybackAllowsAirPlay: Bool
  @available(iOS, introduced: 9.0, deprecated: 10.0)
  var requiresUserActionForMediaPlayback: Bool
}
