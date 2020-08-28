
@available(macOS, introduced: 10.3, deprecated: 10.14)
class WebFrame : NSObject {
  init!(name: String!, webFrameView view: WebFrameView!, webView: WebView!)
  var name: String! { get }
  var webView: WebView! { get }
  var frameView: WebFrameView! { get }
  var domDocument: DOMDocument! { get }
  var frameElement: DOMHTMLElement! { get }
  func load(_ request: URLRequest!)
  func load(_ data: Data!, mimeType MIMEType: String!, textEncodingName encodingName: String!, baseURL URL: URL!)
  func loadHTMLString(_ string: String!, baseURL URL: URL!)
  func loadAlternateHTMLString(_ string: String!, baseURL: URL!, forUnreachableURL unreachableURL: URL!)
  func load(_ archive: WebArchive!)
  var dataSource: WebDataSource? { get }
  var provisionalDataSource: WebDataSource! { get }
  func stopLoading()
  func reload()
  func reloadFromOrigin()
  func findNamed(_ name: String!) -> WebFrame!
  var parent: WebFrame! { get }
  var childFrames: [Any]! { get }
  var windowObject: WebScriptObject! { get }
  var globalContext: JSGlobalContextRef! { get }
  var javaScriptContext: JSContext! { get }
}
