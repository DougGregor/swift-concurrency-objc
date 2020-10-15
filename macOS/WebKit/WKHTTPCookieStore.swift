
@available(macOS 10.13, *)
protocol WKHTTPCookieStoreObserver : NSObjectProtocol {
  optional func cookiesDidChange(in cookieStore: WKHTTPCookieStore)
}
@available(macOS 10.13, *)
class WKHTTPCookieStore : NSObject {
  func getAllCookies(_ completionHandler: @escaping ([HTTPCookie]) -> Void)
  func setCookie(_ cookie: HTTPCookie, completionHandler: (() -> Void)? = nil)
  func delete(_ cookie: HTTPCookie, completionHandler: (() -> Void)? = nil)
  func add(_ observer: WKHTTPCookieStoreObserver)
  func remove(_ observer: WKHTTPCookieStoreObserver)
}
