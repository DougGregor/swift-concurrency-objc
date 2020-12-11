
@available(macOS 10.15, *)
protocol SNResult : NSObjectProtocol {
}
@available(macOS 10.15, *)
protocol SNResultsObserving : NSObjectProtocol {
  func request(_ request: SNRequest, didProduce result: SNResult)
  optional func request(_ request: SNRequest, didFailWithError error: Error)
  optional func requestDidComplete(_ request: SNRequest)
}
