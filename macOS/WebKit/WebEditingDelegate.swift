
@available(macOS, introduced: 10.3, deprecated: 10.14)
enum WebViewInsertAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case typed
  case pasted
  case dropped
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebEditingDelegate : NSObjectProtocol {
  optional func webView(_ webView: WebView!, shouldBeginEditingIn range: DOMRange!) -> Bool
  optional func webView(_ webView: WebView!, shouldEndEditingIn range: DOMRange!) -> Bool
  optional func webView(_ webView: WebView!, shouldInsert node: DOMNode!, replacing range: DOMRange!, given action: WebViewInsertAction) -> Bool
  optional func webView(_ webView: WebView!, shouldInsertText text: String!, replacing range: DOMRange!, given action: WebViewInsertAction) -> Bool
  optional func webView(_ webView: WebView!, shouldDelete range: DOMRange!) -> Bool
  optional func webView(_ webView: WebView!, shouldChangeSelectedDOMRange currentRange: DOMRange!, to proposedRange: DOMRange!, affinity selectionAffinity: NSSelectionAffinity, stillSelecting flag: Bool) -> Bool
  optional func webView(_ webView: WebView!, shouldApplyStyle style: DOMCSSStyleDeclaration!, toElementsIn range: DOMRange!) -> Bool
  optional func webView(_ webView: WebView!, shouldChangeTypingStyle currentStyle: DOMCSSStyleDeclaration!, toStyle proposedStyle: DOMCSSStyleDeclaration!) -> Bool
  optional func webView(_ webView: WebView!, doCommandBy selector: Selector!) -> Bool
  @asyncHandler optional func webViewDidBeginEditing(_ notification: Notification!)
  @asyncHandler optional func webViewDidChange(_ notification: Notification!)
  @asyncHandler optional func webViewDidEndEditing(_ notification: Notification!)
  @asyncHandler optional func webViewDidChangeTypingStyle(_ notification: Notification!)
  @asyncHandler optional func webViewDidChangeSelection(_ notification: Notification!)
  optional func undoManager(for webView: WebView!) -> UndoManager!
}
