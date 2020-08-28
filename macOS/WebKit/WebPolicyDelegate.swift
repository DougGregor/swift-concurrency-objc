
@available(macOS, introduced: 10.3, deprecated: 10.14)
enum WebNavigationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case linkClicked
  case formSubmitted
  case backForward
  case reload
  case formResubmitted
  case other
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebActionNavigationTypeKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebActionElementKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebActionButtonKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebActionModifierFlagsKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebActionOriginalURLKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebPolicyDecisionListener : NSObjectProtocol {
  func use()
  func download()
  func ignore()
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebPolicyDelegate : NSObjectProtocol {
  optional func webView(_ webView: WebView!, decidePolicyForNavigationAction actionInformation: [AnyHashable : Any]!, request: URLRequest!, frame: WebFrame!, decisionListener listener: WebPolicyDecisionListener!)
  optional func webView(_ webView: WebView!, decidePolicyForNewWindowAction actionInformation: [AnyHashable : Any]!, request: URLRequest!, newFrameName frameName: String!, decisionListener listener: WebPolicyDecisionListener!)
  optional func webView(_ webView: WebView!, decidePolicyForMIMEType type: String!, request: URLRequest!, frame: WebFrame!, decisionListener listener: WebPolicyDecisionListener!)
  optional func webView(_ webView: WebView!, unableToImplementPolicyWithError error: Error!, frame: WebFrame!)
}
