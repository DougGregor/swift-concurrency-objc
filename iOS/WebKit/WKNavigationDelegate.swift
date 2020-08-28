
@available(iOS 8.0, *)
enum WKNavigationActionPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cancel
  case allow
}
@available(iOS 8.0, *)
enum WKNavigationResponsePolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cancel
  case allow
}
protocol WKNavigationDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void)
  @available(iOS 13.0, *)
  optional func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, preferences: WKWebpagePreferences, decisionHandler: @escaping (WKNavigationActionPolicy, WKWebpagePreferences) -> Void)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
  @available(iOS 9.0, *)
  optional func webViewWebContentProcessDidTerminate(_ webView: WKWebView)
  @available(iOS 14.0, *)
  optional func webView(_ webView: WKWebView, authenticationChallenge challenge: URLAuthenticationChallenge, shouldAllowDeprecatedTLS decisionHandler: @escaping (Bool) -> Void)
}
