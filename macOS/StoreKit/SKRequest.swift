
@available(macOS 10.7, *)
class SKRequest : NSObject {
  @available(macOS 10.7, *)
  weak var delegate: @sil_weak SKRequestDelegate?
  @available(macOS 10.7, *)
  func cancel()
  @available(macOS 10.7, *)
  func start()
}
protocol SKRequestDelegate : NSObjectProtocol {
  @available(macOS 10.7, *)
  optional func requestDidFinish(_ request: SKRequest)
  @available(macOS 10.7, *)
  optional func request(_ request: SKRequest, didFailWithError error: Error)
}
