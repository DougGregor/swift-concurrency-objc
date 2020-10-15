
protocol WKScriptMessageHandler : NSObjectProtocol {
  @available(iOS 8.0, *)
  @asyncHandler func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage)
}
