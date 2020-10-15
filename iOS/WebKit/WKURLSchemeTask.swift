
@available(iOS 11.0, *)
protocol WKURLSchemeTask : NSObjectProtocol {
  var request: URLRequest { get }
  @asyncHandler func didReceive(_ response: URLResponse)
  @asyncHandler func didReceive(_ data: Data)
  @asyncHandler func didFinish()
  @asyncHandler func didFailWithError(_ error: Error)
}
