
@available(iOS 3.0, *)
class SKRequest : NSObject {
  @available(iOS 3.0, *)
  weak var delegate: @sil_weak SKRequestDelegate?
  @available(iOS 3.0, *)
  func cancel()
  @available(iOS 3.0, *)
  func start()
}
protocol SKRequestDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func requestDidFinish(_ request: SKRequest)
  @available(iOS 3.0, *)
  optional func request(_ request: SKRequest, didFailWithError error: Error)
}
