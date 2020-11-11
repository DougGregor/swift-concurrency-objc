
@available(iOS 8.0, *)
class WKWebView : UIView {
  @NSCopying var configuration: WKWebViewConfiguration { get }
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?
  weak var uiDelegate: @sil_weak WKUIDelegate?
  var backForwardList: WKBackForwardList { get }
  init(frame: CGRect, configuration: WKWebViewConfiguration)
  func load(_ request: URLRequest) -> WKNavigation?
  @available(iOS 9.0, *)
  func loadFileURL(_ URL: URL, allowingReadAccessTo readAccessURL: URL) -> WKNavigation?
  func loadHTMLString(_ string: String, baseURL: URL?) -> WKNavigation?
  @available(iOS 9.0, *)
  func load(_ data: Data, mimeType MIMEType: String, characterEncodingName: String, baseURL: URL) -> WKNavigation?
  func go(to item: WKBackForwardListItem) -> WKNavigation?
  var title: String? { get }
  var url: URL? { get }
  var isLoading: Bool { get }
  var estimatedProgress: Double { get }
  var hasOnlySecureContent: Bool { get }
  @available(iOS 10.0, *)
  var serverTrust: SecTrust? { get }
  var canGoBack: Bool { get }
  var canGoForward: Bool { get }
  func goBack() -> WKNavigation?
  func goForward() -> WKNavigation?
  func reload() -> WKNavigation?
  func reloadFromOrigin() -> WKNavigation?
  func stopLoading()
  func evaluateJavaScript(_ javaScriptString: String, completionHandler: ((Any?, Error?) -> Void)? = nil)
  func evaluateJavaScriptAsync(_ javaScriptString: String) async throws -> Any
  @available(iOS 14.0, *)
  func __evaluateJavaScript(_ javaScriptString: String, inFrame frame: WKFrameInfo?, in contentWorld: WKContentWorld, completionHandler: ((Any?, Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func __evaluateJavaScriptAsync(_ javaScriptString: String, inFrame frame: WKFrameInfo?, in contentWorld: WKContentWorld) async throws -> Any
  @available(iOS 14.0, *)
  func __callAsyncJavaScript(_ functionBody: String, arguments: [String : Any]?, inFrame frame: WKFrameInfo?, in contentWorld: WKContentWorld, completionHandler: ((Any?, Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func __callAsyncJavaScriptAsync(_ functionBody: String, arguments: [String : Any]?, inFrame frame: WKFrameInfo?, in contentWorld: WKContentWorld) async throws -> Any
  @available(iOS 11.0, *)
  func takeSnapshot(with snapshotConfiguration: WKSnapshotConfiguration?, completionHandler: @escaping (UIImage?, Error?) -> Void)
  @available(iOS 11.0, *)
  func takeSnapshot(with snapshotConfiguration: WKSnapshotConfiguration?) async throws -> UIImage
  @available(iOS 14.0, *)
  func __createPDF(with pdfConfiguration: WKPDFConfiguration?, completionHandler: @escaping (Data?, Error?) -> Void)
  @available(iOS 14.0, *)
  func __createPDF(with pdfConfiguration: WKPDFConfiguration?) async throws -> Data
  @available(iOS 14.0, *)
  func __createWebArchiveData(completionHandler: @escaping (Data, Error) -> Void)
  @available(iOS 14.0, *)
  func __createWebArchiveData() async -> (Data, Error)
  var allowsBackForwardNavigationGestures: Bool
  @available(iOS 9.0, *)
  var customUserAgent: String?
  @available(iOS 9.0, *)
  var allowsLinkPreview: Bool
  var scrollView: UIScrollView { get }
  @available(iOS 14.0, *)
  var pageZoom: CGFloat
  @available(iOS 14.0, *)
  func __find(_ string: String, with configuration: WKFindConfiguration?, completionHandler: @escaping (WKFindResult) -> Void)
  @available(iOS 14.0, *)
  func __find(_ string: String, with configuration: WKFindConfiguration?) async -> WKFindResult
  @available(iOS 11.0, *)
  class func handlesURLScheme(_ urlScheme: String) -> Bool
  @available(iOS 14.0, *)
  var mediaType: String?
}

@available(iOS 14.0, macOS 11.0, *)
extension WKWebView {
  func callAsyncJavaScript(_ functionBody: String, arguments: [String : Any] = [:], in frame: WKFrameInfo? = nil, in contentWorld: WKContentWorld, completionHandler: ((Result<Any, Error>) -> Void)? = nil)
  func createPDF(configuration: WKPDFConfiguration = .init(), completionHandler: @escaping (Result<Data, Error>) -> Void)
  func createWebArchiveData(completionHandler: @escaping (Result<Data, Error>) -> Void)
  func evaluateJavaScript(_ javaScript: String, in frame: WKFrameInfo? = nil, in contentWorld: WKContentWorld, completionHandler: ((Result<Any, Error>) -> Void)? = nil)
  func find(_ string: String, configuration: WKFindConfiguration = .init(), completionHandler: @escaping (WKFindResult) -> Void)
}
extension WKWebView {
  @available(iOS, introduced: 9.0, deprecated: 10.0)
  var certificateChain: [Any] { get }
}
