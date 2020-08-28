
@available(iOS 8.0, *)
class WKScriptMessage : NSObject {
  var body: Any { get }
  weak var webView: @sil_weak WKWebView? { get }
  @NSCopying var frameInfo: WKFrameInfo { get }
  var name: String { get }
  @available(iOS 14.0, *)
  var world: WKContentWorld { get }
}
