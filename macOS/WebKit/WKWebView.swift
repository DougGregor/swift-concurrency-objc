
@available(macOS 10.10, *)
class WKWebView : NSView {
  @NSCopying var configuration: WKWebViewConfiguration { get }
  weak var navigationDelegate: @sil_weak WKNavigationDelegate?
  weak var uiDelegate: @sil_weak WKUIDelegate?
  var backForwardList: WKBackForwardList { get }
  init(frame: CGRect, configuration: WKWebViewConfiguration)
  func load(_ request: URLRequest) -> WKNavigation?
  @available(macOS 10.11, *)
  func loadFileURL(_ URL: URL, allowingReadAccessTo readAccessURL: URL) -> WKNavigation?
  func loadHTMLString(_ string: String, baseURL: URL?) -> WKNavigation?
  @available(macOS 10.11, *)
  func load(_ data: Data, mimeType MIMEType: String, characterEncodingName: String, baseURL: URL) -> WKNavigation?
  func go(to item: WKBackForwardListItem) -> WKNavigation?
  var title: String? { get }
  var url: URL? { get }
  var isLoading: Bool { get }
  var estimatedProgress: Double { get }
  var hasOnlySecureContent: Bool { get }
  @available(macOS 10.12, *)
  var serverTrust: SecTrust? { get }
  var canGoBack: Bool { get }
  var canGoForward: Bool { get }
  func goBack() -> WKNavigation?
  func goForward() -> WKNavigation?
  func reload() -> WKNavigation?
  func reloadFromOrigin() -> WKNavigation?
  func stopLoading()
  func evaluateJavaScript(_ javaScriptString: String, completionHandler: ((Any?, Error?) -> Void)? = nil)
  func evaluateJavaScript(_ javaScriptString: String) async throws -> Any?
  @available(macOS 11.0, *)
  func __evaluateJavaScript(_ javaScriptString: String, inFrame frame: WKFrameInfo?, in contentWorld: WKContentWorld, completionHandler: ((Any?, Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  func __evaluateJavaScript(_ javaScriptString: String, inFrame frame: WKFrameInfo?, in contentWorld: WKContentWorld) async throws -> Any?
  @available(macOS 11.0, *)
  func __callAsyncJavaScript(_ functionBody: String, arguments: [String : Any]?, inFrame frame: WKFrameInfo?, in contentWorld: WKContentWorld, completionHandler: ((Any?, Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  func __callAsyncJavaScript(_ functionBody: String, arguments: [String : Any]?, inFrame frame: WKFrameInfo?, in contentWorld: WKContentWorld) async throws -> Any?
  @available(macOS 10.13, *)
  func takeSnapshot(with snapshotConfiguration: WKSnapshotConfiguration?, completionHandler: @escaping (NSImage?, Error?) -> Void)
  @available(macOS 10.13, *)
  func takeSnapshot(with snapshotConfiguration: WKSnapshotConfiguration?) async throws -> NSImage?
  @available(macOS 11.0, *)
  func __createPDF(with pdfConfiguration: WKPDFConfiguration?, completionHandler: @escaping (Data?, Error?) -> Void)
  @available(macOS 11.0, *)
  func __createPDF(with pdfConfiguration: WKPDFConfiguration?) async throws -> Data?
  @available(macOS 11.0, *)
  func __createWebArchiveData(completionHandler: @escaping (Data, Error) -> Void)
  @available(macOS 11.0, *)
  func __createWebArchiveData() async -> (Data, Error)
  var allowsBackForwardNavigationGestures: Bool
  @available(macOS 10.11, *)
  var customUserAgent: String?
  @available(macOS 10.11, *)
  var allowsLinkPreview: Bool
  var allowsMagnification: Bool
  var magnification: CGFloat
  func setMagnification(_ magnification: CGFloat, centeredAt point: CGPoint)
  @available(macOS 11.0, *)
  var pageZoom: CGFloat
  @available(macOS 11.0, *)
  func __find(_ string: String, with configuration: WKFindConfiguration?, completionHandler: @escaping (WKFindResult) -> Void)
  @available(macOS 11.0, *)
  func __find(_ string: String, with configuration: WKFindConfiguration?) async -> WKFindResult
  @available(macOS 10.13, *)
  class func handlesURLScheme(_ urlScheme: String) -> Bool
  @available(macOS 11.0, *)
  var mediaType: String?
  @available(macOS 11.0, *)
  func printOperation(with printInfo: NSPrintInfo) -> NSPrintOperation
}

@available(iOS 14.0, macOS 11.0, *)
extension WKWebView {
  func callAsyncJavaScript(_ functionBody: String, arguments: [String : Any] = [:], in frame: WKFrameInfo? = nil, in contentWorld: WKContentWorld, completionHandler: ((Result<Any, Error>) -> Void)? = nil)
  func createPDF(configuration: WKPDFConfiguration = .init(), completionHandler: @escaping (Result<Data, Error>) -> Void)
  func createWebArchiveData(completionHandler: @escaping (Result<Data, Error>) -> Void)
  func evaluateJavaScript(_ javaScript: String, in frame: WKFrameInfo? = nil, in contentWorld: WKContentWorld, completionHandler: ((Result<Any, Error>) -> Void)? = nil)
  func find(_ string: String, configuration: WKFindConfiguration = .init(), completionHandler: @escaping (WKFindResult) -> Void)
}
extension WKWebView : NSUserInterfaceValidations {
  @IBAction func goBack(_ sender: Any?)
  @IBAction func goForward(_ sender: Any?)
  @IBAction func reload(_ sender: Any?)
  @IBAction func reloadFromOrigin(_ sender: Any?)
  @IBAction func stopLoading(_ sender: Any?)
}
@available(macOS 11.0, *)
extension WKWebView : NSTextFinderClient {
}
extension WKWebView {
  @available(macOS, introduced: 10.11, deprecated: 10.12)
  var certificateChain: [Any] { get }
}
