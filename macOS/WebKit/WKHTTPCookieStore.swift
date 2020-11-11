
@available(macOS 10.13, *)
protocol WKHTTPCookieStoreObserver : NSObjectProtocol {
  @asyncHandler optional func cookiesDidChange(in cookieStore: WKHTTPCookieStore)
}
@available(macOS 10.13, *)
class WKHTTPCookieStore : NSObject {
  func getAllCookies(_ completionHandler: @escaping ([HTTPCookie]) -> Void)
  func allCookies() async -> [HTTPCookie]
  func setCookie(_ cookie: HTTPCookie, completionHandler: (() -> Void)? = nil)
  func setCookieAsync(_ cookie: HTTPCookie) async
  func delete(_ cookie: HTTPCookie, completionHandler: (() -> Void)? = nil)
  func deleteCookieAsync(_ cookie: HTTPCookie) async
  func add(_ observer: WKHTTPCookieStoreObserver)
  func remove(_ observer: WKHTTPCookieStoreObserver)
}
