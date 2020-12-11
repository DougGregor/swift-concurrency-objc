
@available(iOS 11.0, *)
protocol WKURLSchemeTask : NSObjectProtocol {
  var request: URLRequest { get }
  func didReceive(_ response: URLResponse)
  func didReceive(_ data: Data)
  func didFinish()
  func didFailWithError(_ error: Error)
}
