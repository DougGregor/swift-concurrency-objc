
@available(macOS 10.13, *)
protocol WKURLSchemeHandler : NSObjectProtocol {
  func webView(_ webView: WKWebView, start urlSchemeTask: WKURLSchemeTask)
  func webView(_ webView: WKWebView, stop urlSchemeTask: WKURLSchemeTask)
}
