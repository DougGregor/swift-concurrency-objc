
extension HTTPCookie {
  enum AcceptPolicy : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case always
    case never
    case onlyFromMainDocumentDomain
  }
}
@available(tvOS 9.0, *)
class HTTPCookieStorage : NSObject {
  class var shared: HTTPCookieStorage { get }
  @available(tvOS 9.0, *)
  class func sharedCookieStorage(forGroupContainerIdentifier identifier: String) -> HTTPCookieStorage
  var cookies: [HTTPCookie]? { get }
  func setCookie(_ cookie: HTTPCookie)
  func deleteCookie(_ cookie: HTTPCookie)
  @available(tvOS 9.0, *)
  func removeCookies(since date: Date)
  func cookies(for URL: URL) -> [HTTPCookie]?
  func setCookies(_ cookies: [HTTPCookie], for URL: URL?, mainDocumentURL: URL?)
  var cookieAcceptPolicy: HTTPCookie.AcceptPolicy
  @available(tvOS 9.0, *)
  func sortedCookies(using sortOrder: [NSSortDescriptor]) -> [HTTPCookie]
}
extension HTTPCookieStorage {
  @available(tvOS 9.0, *)
  func storeCookies(_ cookies: [HTTPCookie], for task: URLSessionTask)
  @available(tvOS 9.0, *)
  func getCookiesFor(_ task: URLSessionTask, completionHandler: @escaping ([HTTPCookie]?) -> Void)
}
extension NSNotification.Name {
  @available(tvOS 9.0, *)
  static let NSHTTPCookieManagerAcceptPolicyChanged: NSNotification.Name
  @available(tvOS 9.0, *)
  static let NSHTTPCookieManagerCookiesChanged: NSNotification.Name
}
