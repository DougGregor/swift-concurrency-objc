
@available(macOS 10.13, *)
protocol WKHTTPCookieStoreObserver : NSObjectProtocol {
  optional func cookiesDidChange(in cookieStore: WKHTTPCookieStore)
}
@available(macOS 10.13, *)
class WKHTTPCookieStore : NSObject {
  func getAllCookies(_ completionHandler: @escaping ([HTTPCookie]) -> Void)
  func getAllCookies() async -> [HTTPCookie]
  func setCookie(_ cookie: HTTPCookie, completionHandler: (() -> Void)? = nil)
  func setCookie(_ cookie: HTTPCookie) async
  func delete(_ cookie: HTTPCookie, completionHandler: (() -> Void)? = nil)
  func delete(_ cookie: HTTPCookie) async
  func add(_ observer: WKHTTPCookieStoreObserver)
  func remove(_ observer: WKHTTPCookieStoreObserver)
}
