
@available(iOS 8.0, *)
class WKFrameInfo : NSObject, NSCopying {
  var isMainFrame: Bool { get }
  var request: URLRequest { get }
  @available(iOS 9.0, *)
  var securityOrigin: WKSecurityOrigin { get }
  @available(iOS 11.0, *)
  weak var webView: @sil_weak WKWebView? { get }
}
