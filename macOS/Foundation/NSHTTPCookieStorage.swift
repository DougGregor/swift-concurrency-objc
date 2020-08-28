
extension HTTPCookie {
  enum AcceptPolicy : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case always
    case never
    case onlyFromMainDocumentDomain
  }
}
@available(macOS 10.2, *)
class HTTPCookieStorage : NSObject {
  class var shared: HTTPCookieStorage { get }
  @available(macOS 10.11, *)
  class func sharedCookieStorage(forGroupContainerIdentifier identifier: String) -> HTTPCookieStorage
  var cookies: [HTTPCookie]? { get }
  func setCookie(_ cookie: HTTPCookie)
  func deleteCookie(_ cookie: HTTPCookie)
  @available(macOS 10.10, *)
  func removeCookies(since date: Date)
  func cookies(for URL: URL) -> [HTTPCookie]?
  func setCookies(_ cookies: [HTTPCookie], for URL: URL?, mainDocumentURL: URL?)
  var cookieAcceptPolicy: HTTPCookie.AcceptPolicy
  @available(macOS 10.7, *)
  func sortedCookies(using sortOrder: [NSSortDescriptor]) -> [HTTPCookie]
}
extension HTTPCookieStorage {
  @available(macOS 10.10, *)
  func storeCookies(_ cookies: [HTTPCookie], for task: URLSessionTask)
  @available(macOS 10.10, *)
  func getCookiesFor(_ task: URLSessionTask, completionHandler: @escaping ([HTTPCookie]?) -> Void)
  @available(macOS 10.10, *)
  func getCookiesFor(_ task: URLSessionTask) async -> [HTTPCookie]?
}
extension NSNotification.Name {
  @available(macOS 10.2, *)
  static let NSHTTPCookieManagerAcceptPolicyChanged: NSNotification.Name
  @available(macOS 10.2, *)
  static let NSHTTPCookieManagerCookiesChanged: NSNotification.Name
}
