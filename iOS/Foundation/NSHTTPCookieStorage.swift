
extension HTTPCookie {
  enum AcceptPolicy : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case always
    case never
    case onlyFromMainDocumentDomain
  }
}
@available(iOS 2.0, *)
class HTTPCookieStorage : NSObject {
  class var shared: HTTPCookieStorage { get }
  @available(iOS 9.0, *)
  class func sharedCookieStorage(forGroupContainerIdentifier identifier: String) -> HTTPCookieStorage
  var cookies: [HTTPCookie]? { get }
  func setCookie(_ cookie: HTTPCookie)
  func deleteCookie(_ cookie: HTTPCookie)
  @available(iOS 8.0, *)
  func removeCookies(since date: Date)
  func cookies(for URL: URL) -> [HTTPCookie]?
  func setCookies(_ cookies: [HTTPCookie], for URL: URL?, mainDocumentURL: URL?)
  var cookieAcceptPolicy: HTTPCookie.AcceptPolicy
  @available(iOS 5.0, *)
  func sortedCookies(using sortOrder: [NSSortDescriptor]) -> [HTTPCookie]
}
extension HTTPCookieStorage {
  @available(iOS 8.0, *)
  func storeCookies(_ cookies: [HTTPCookie], for task: URLSessionTask)
  @available(iOS 8.0, *)
  func getCookiesFor(_ task: URLSessionTask, completionHandler: @escaping ([HTTPCookie]?) -> Void)
  @available(iOS 8.0, *)
  func getCookiesFor(_ task: URLSessionTask) async -> [HTTPCookie]?
}
extension NSNotification.Name {
  @available(iOS 2.0, *)
  static let NSHTTPCookieManagerAcceptPolicyChanged: NSNotification.Name
  @available(iOS 2.0, *)
  static let NSHTTPCookieManagerCookiesChanged: NSNotification.Name
}
