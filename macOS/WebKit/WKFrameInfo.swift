
@available(macOS 10.10, *)
class WKFrameInfo : NSObject, NSCopying {
  var isMainFrame: Bool { get }
  var request: URLRequest { get }
  @available(macOS 10.11, *)
  var securityOrigin: WKSecurityOrigin { get }
  @available(macOS 10.13, *)
  weak var webView: @sil_weak WKWebView? { get }
}
