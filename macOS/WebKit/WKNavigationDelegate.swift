
@available(macOS 10.10, *)
enum WKNavigationActionPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cancel
  case allow
}
@available(macOS 10.10, *)
enum WKNavigationResponsePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cancel
  case allow
}
protocol WKNavigationDelegate : NSObjectProtocol {
  @available(macOS 10.10, *)
  optional func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void)
  @available(macOS 10.15, *)
  optional func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, preferences: WKWebpagePreferences, decisionHandler: @escaping (WKNavigationActionPolicy, WKWebpagePreferences) -> Void)
  @available(macOS 10.10, *)
  optional func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void)
  @available(macOS 10.10, *)
  optional func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  @available(macOS 10.10, *)
  optional func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  @available(macOS 10.10, *)
  optional func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error)
  @available(macOS 10.10, *)
  optional func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!)
  @available(macOS 10.10, *)
  optional func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
  @available(macOS 10.10, *)
  optional func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error)
  @available(macOS 10.10, *)
  optional func webView(_ webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
  @available(macOS 10.11, *)
  optional func webViewWebContentProcessDidTerminate(_ webView: WKWebView)
  @available(macOS 11.0, *)
  optional func webView(_ webView: WKWebView, authenticationChallenge challenge: URLAuthenticationChallenge, shouldAllowDeprecatedTLS decisionHandler: @escaping (Bool) -> Void)
}
