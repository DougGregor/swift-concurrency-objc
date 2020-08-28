
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
  @available(watchOS 2.0, *)
  static let name: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let value: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let originURL: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let version: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let domain: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let path: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let secure: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let expires: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let comment: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let commentURL: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let discard: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let maximumAge: HTTPCookiePropertyKey
  @available(watchOS 2.0, *)
  static let port: HTTPCookiePropertyKey
  @available(watchOS 6.0, *)
  static let sameSitePolicy: HTTPCookiePropertyKey
}
extension HTTPCookieStringPolicy {
  @available(watchOS 6.0, *)
  static let sameSiteLax: HTTPCookieStringPolicy
  @available(watchOS 6.0, *)
  static let sameSiteStrict: HTTPCookieStringPolicy
}
@available(watchOS 2.0, *)
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
  @available(watchOS 6.0, *)
  var sameSitePolicy: HTTPCookieStringPolicy? { get }
}
