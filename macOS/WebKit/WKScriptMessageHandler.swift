
protocol WKScriptMessageHandler : NSObjectProtocol {
  @available(macOS 10.10, *)
  @asyncHandler func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage)
}
