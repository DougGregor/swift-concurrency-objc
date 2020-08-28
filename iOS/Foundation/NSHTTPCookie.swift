
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
  @available(iOS 2.0, *)
  static let name: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let value: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let originURL: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let version: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let domain: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let path: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let secure: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let expires: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let comment: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let commentURL: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let discard: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let maximumAge: HTTPCookiePropertyKey
  @available(iOS 2.0, *)
  static let port: HTTPCookiePropertyKey
  @available(iOS 13.0, *)
  static let sameSitePolicy: HTTPCookiePropertyKey
}
extension HTTPCookieStringPolicy {
  @available(iOS 13.0, *)
  static let sameSiteLax: HTTPCookieStringPolicy
  @available(iOS 13.0, *)
  static let sameSiteStrict: HTTPCookieStringPolicy
}
@available(iOS 2.0, *)
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
  @available(iOS 13.0, *)
  var sameSitePolicy: HTTPCookieStringPolicy? { get }
}
