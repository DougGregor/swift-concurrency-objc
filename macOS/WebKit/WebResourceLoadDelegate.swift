
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebResourceLoadDelegate : NSObjectProtocol {
  optional func webView(_ sender: WebView!, identifierForInitialRequest request: URLRequest!, from dataSource: WebDataSource!) -> Any!
  optional func webView(_ sender: WebView!, resource identifier: Any!, willSend request: URLRequest!, redirectResponse: URLResponse!, from dataSource: WebDataSource!) -> URLRequest!
  @asyncHandler optional func webView(_ sender: WebView!, resource identifier: Any!, didReceive challenge: URLAuthenticationChallenge!, from dataSource: WebDataSource!)
  @asyncHandler optional func webView(_ sender: WebView!, resource identifier: Any!, didCancel challenge: URLAuthenticationChallenge!, from dataSource: WebDataSource!)
  @asyncHandler optional func webView(_ sender: WebView!, resource identifier: Any!, didReceive response: URLResponse!, from dataSource: WebDataSource!)
  @asyncHandler optional func webView(_ sender: WebView!, resource identifier: Any!, didReceiveContentLength length: Int, from dataSource: WebDataSource!)
  @asyncHandler optional func webView(_ sender: WebView!, resource identifier: Any!, didFinishLoadingFrom dataSource: WebDataSource!)
  @asyncHandler optional func webView(_ sender: WebView!, resource identifier: Any!, didFailLoadingWithError error: Error!, from dataSource: WebDataSource!)
  optional func webView(_ sender: WebView!, plugInFailedWithError error: Error!, dataSource: WebDataSource!)
}
