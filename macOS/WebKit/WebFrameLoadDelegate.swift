
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebFrameLoadDelegate : NSObjectProtocol {
  optional func webView(_ sender: WebView!, didStartProvisionalLoadFor frame: WebFrame!)
  optional func webView(_ sender: WebView!, didReceiveServerRedirectForProvisionalLoadFor frame: WebFrame!)
  optional func webView(_ sender: WebView!, didFailProvisionalLoadWithError error: Error!, for frame: WebFrame!)
  optional func webView(_ sender: WebView!, didCommitLoadFor frame: WebFrame!)
  optional func webView(_ sender: WebView!, didReceiveTitle title: String!, for frame: WebFrame!)
  optional func webView(_ sender: WebView!, didReceiveIcon image: NSImage!, for frame: WebFrame!)
  optional func webView(_ sender: WebView!, didFinishLoadFor frame: WebFrame!)
  optional func webView(_ sender: WebView!, didFailLoadWithError error: Error!, for frame: WebFrame!)
  optional func webView(_ sender: WebView!, didChangeLocationWithinPageFor frame: WebFrame!)
  optional func webView(_ sender: WebView!, willPerformClientRedirectTo URL: URL!, delay seconds: TimeInterval, fire date: Date!, for frame: WebFrame!)
  optional func webView(_ sender: WebView!, didCancelClientRedirectFor frame: WebFrame!)
  optional func webView(_ sender: WebView!, willClose frame: WebFrame!)
  optional func webView(_ webView: WebView!, didClearWindowObject windowObject: WebScriptObject!, for frame: WebFrame!)
  optional func webView(_ webView: WebView!, didCreateJavaScriptContext context: JSContext!, for frame: WebFrame!)
}
