
@available(watchOS 6.2, *)
class SKRequest : NSObject {
  @available(watchOS 6.2, *)
  weak var delegate: @sil_weak SKRequestDelegate?
  @available(watchOS 6.2, *)
  func cancel()
  @available(watchOS 6.2, *)
  func start()
}
protocol SKRequestDelegate : NSObjectProtocol {
  @available(watchOS 6.2, *)
  @asyncHandler optional func requestDidFinish(_ request: SKRequest)
  @available(watchOS 6.2, *)
  @asyncHandler optional func request(_ request: SKRequest, didFailWithError error: Error)
}
