
@available(iOS 14.0, macOS 11.0, *)
extension WKPDFConfiguration {
  var rect: CGRect?
}

@available(iOS 14.0, macOS 11.0, *)
extension WKWebView {
  func callAsyncJavaScript(_ functionBody: String, arguments: [String : Any] = [:], in frame: WKFrameInfo? = nil, in contentWorld: WKContentWorld, completionHandler: ((Result<Any, Error>) -> Void)? = nil)
  func createPDF(configuration: WKPDFConfiguration = .init(), completionHandler: @escaping (Result<Data, Error>) -> Void)
  func createWebArchiveData(completionHandler: @escaping (Result<Data, Error>) -> Void)
  func evaluateJavaScript(_ javaScript: String, in frame: WKFrameInfo? = nil, in contentWorld: WKContentWorld, completionHandler: ((Result<Any, Error>) -> Void)? = nil)
  func find(_ string: String, configuration: WKFindConfiguration = .init(), completionHandler: @escaping (WKFindResult) -> Void)
}

