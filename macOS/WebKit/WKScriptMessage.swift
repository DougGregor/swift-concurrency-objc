
@available(macOS 10.10, *)
class WKScriptMessage : NSObject {
  var body: Any { get }
  weak var webView: @sil_weak WKWebView? { get }
  @NSCopying var frameInfo: WKFrameInfo { get }
  var name: String { get }
  @available(macOS 11.0, *)
  var world: WKContentWorld { get }
}
