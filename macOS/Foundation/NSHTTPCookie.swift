
struct HTTPCookiePropertyKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct HTTPCookieStringPolicy : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HTTPCookiePropertyKey {
  @available(macOS 10.2, *)
  static let name: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let value: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let originURL: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let version: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let domain: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let path: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let secure: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let expires: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let comment: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let commentURL: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let discard: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let maximumAge: HTTPCookiePropertyKey
  @available(macOS 10.2, *)
  static let port: HTTPCookiePropertyKey
  @available(macOS 10.15, *)
  static let sameSitePolicy: HTTPCookiePropertyKey
}
extension HTTPCookieStringPolicy {
  @available(macOS 10.15, *)
  static let sameSiteLax: HTTPCookieStringPolicy
  @available(macOS 10.15, *)
  static let sameSiteStrict: HTTPCookieStringPolicy
}
@available(macOS 10.2, *)
class HTTPCookie : NSObject {
  init?(properties: [HTTPCookiePropertyKey : Any])
  class func requestHeaderFields(with cookies: [HTTPCookie]) -> [String : String]
  class func cookies(withResponseHeaderFields headerFields: [String : String], for URL: URL) -> [HTTPCookie]
  var properties: [HTTPCookiePropertyKey : Any]? { get }
  var version: Int { get }
  var name: String { get }
  var value: String { get }
  var expiresDate: Date? { get }
  var isSessionOnly: Bool { get }
  var domain: String { get }
  var path: String { get }
  var isSecure: Bool { get }
  var isHTTPOnly: Bool { get }
  var comment: String? { get }
  var commentURL: URL? { get }
  var portList: [NSNumber]? { get }
  @available(macOS 10.15, *)
  var sameSitePolicy: HTTPCookieStringPolicy? { get }
}
