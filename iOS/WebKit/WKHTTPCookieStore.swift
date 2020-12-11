
@available(iOS 11.0, *)
protocol WKHTTPCookieStoreObserver : NSObjectProtocol {
  optional func cookiesDidChange(in cookieStore: WKHTTPCookieStore)
}
@available(iOS 11.0, *)
class WKHTTPCookieStore : NSObject {
  func getAllCookies(_ completionHandler: @escaping ([HTTPCookie]) -> Void)
  func allCookies() async -> [HTTPCookie]
  func setCookie(_ cookie: HTTPCookie, completionHandler: (() -> Void)? = nil)
  func setCookie(_ cookie: HTTPCookie) async
  func delete(_ cookie: HTTPCookie, completionHandler: (() -> Void)? = nil)
  func delete(_ cookie: HTTPCookie) async
  func add(_ observer: WKHTTPCookieStoreObserver)
  func remove(_ observer: WKHTTPCookieStoreObserver)
}
