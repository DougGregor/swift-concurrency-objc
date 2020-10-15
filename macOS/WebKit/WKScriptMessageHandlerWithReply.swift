
protocol WKScriptMessageHandlerWithReply : NSObjectProtocol {
  @available(macOS 11.0, *)
  func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage, replyHandler: @escaping (Any?, String?) -> Void)
}
