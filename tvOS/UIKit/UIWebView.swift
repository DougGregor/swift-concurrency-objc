
extension UIWebView {
  enum NavigationType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case linkClicked
    case formSubmitted
    case backForward
    case reload
    case formResubmitted
    case other
  }
  enum PaginationMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unpaginated
    case leftToRight
    case topToBottom
    case bottomToTop
    case rightToLeft
  }
  enum PaginationBreakingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case page
    case column
  }
}
@available(tvOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported; please adopt WKWebView.")
class UIWebView : UIView, NSCoding, UIScrollViewDelegate {
  unowned(unsafe) var delegate: @sil_unmanaged UIWebViewDelegate?
  @available(tvOS 5.0, *)
  var scrollView: UIScrollView { get }
  func loadRequest(_ request: URLRequest)
  func loadHTMLString(_ string: String, baseURL: URL?)
  func load(_ data: Data, mimeType MIMEType: String, textEncodingName: String, baseURL: URL)
  var request: URLRequest? { get }
  func reload()
  func stopLoading()
  func goBack()
  func goForward()
  var canGoBack: Bool { get }
  var canGoForward: Bool { get }
  var isLoading: Bool { get }
  func stringByEvaluatingJavaScript(from script: String) -> String?
  var scalesPageToFit: Bool
  @available(tvOS 3.0, *)
  var dataDetectorTypes: UIDataDetectorTypes
  @available(tvOS 4.0, *)
  var allowsInlineMediaPlayback: Bool
  @available(tvOS 4.0, *)
  var mediaPlaybackRequiresUserAction: Bool
  @available(tvOS 5.0, *)
  var mediaPlaybackAllowsAirPlay: Bool
  @available(tvOS 6.0, *)
  var suppressesIncrementalRendering: Bool
  @available(tvOS 6.0, *)
  var keyboardDisplayRequiresUserAction: Bool
  @available(tvOS 7.0, *)
  var paginationMode: UIWebView.PaginationMode
  @available(tvOS 7.0, *)
  var paginationBreakingMode: UIWebView.PaginationBreakingMode
  @available(tvOS 7.0, *)
  var pageLength: CGFloat
  @available(tvOS 7.0, *)
  var gapBetweenPages: CGFloat
  @available(tvOS 7.0, *)
  var pageCount: Int { get }
  @available(tvOS 9.0, *)
  var allowsPictureInPictureMediaPlayback: Bool
  @available(tvOS 9.0, *)
  var allowsLinkPreview: Bool
}
protocol UIWebViewDelegate : NSObjectProtocol {
  @available(tvOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported.")
  optional func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebView.NavigationType) -> Bool
  @available(tvOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported.")
  optional func webViewDidStartLoad(_ webView: UIWebView)
  @available(tvOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported.")
  optional func webViewDidFinishLoad(_ webView: UIWebView)
  @available(tvOS, introduced: 2.0, deprecated: 12.0, message: "No longer supported.")
  optional func webView(_ webView: UIWebView, didFailLoadWithError error: Error)
}
