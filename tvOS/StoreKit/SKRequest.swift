
@available(tvOS 3.0, *)
class SKRequest : NSObject {
  @available(tvOS 3.0, *)
  weak var delegate: @sil_weak SKRequestDelegate?
  @available(tvOS 3.0, *)
  func cancel()
  @available(tvOS 3.0, *)
  func start()
}
protocol SKRequestDelegate : NSObjectProtocol {
  @available(tvOS 3.0, *)
  @asyncHandler optional func requestDidFinish(_ request: SKRequest)
  @available(tvOS 3.0, *)
  @asyncHandler optional func request(_ request: SKRequest, didFailWithError error: Error)
}
