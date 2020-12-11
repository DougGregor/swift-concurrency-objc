
protocol WKScriptMessageHandler : NSObjectProtocol {
  @available(macOS 10.10, *)
  func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage)
}
