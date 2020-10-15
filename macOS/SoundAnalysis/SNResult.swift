
@available(macOS 10.15, *)
protocol SNResult : NSObjectProtocol {
}
@available(macOS 10.15, *)
protocol SNResultsObserving : NSObjectProtocol {
  @asyncHandler func request(_ request: SNRequest, didProduce result: SNResult)
  @asyncHandler optional func request(_ request: SNRequest, didFailWithError error: Error)
  @asyncHandler optional func requestDidComplete(_ request: SNRequest)
}
