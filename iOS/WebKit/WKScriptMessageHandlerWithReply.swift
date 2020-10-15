
protocol WKScriptMessageHandlerWithReply : NSObjectProtocol {
  @available(iOS 14.0, *)
  func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage, replyHandler: @escaping (Any?, String?) -> Void)
}
