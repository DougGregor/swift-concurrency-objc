
@available(iOS 13.0, *)
class MXMetricManager : NSObject {
  var pastPayloads: [MXMetricPayload] { get }
  @available(iOS 14.0, *)
  var pastDiagnosticPayloads: [MXDiagnosticPayload] { get }
  class var shared: MXMetricManager { get }
  class func makeLogHandle(category: String) -> OSLog
  func add(_ subscriber: MXMetricManagerSubscriber)
  func remove(_ subscriber: MXMetricManagerSubscriber)
}
@available(iOS 13.0, *)
protocol MXMetricManagerSubscriber : NSObjectProtocol {
  @asyncHandler func didReceive(_ payloads: [MXMetricPayload])
  @available(iOS 14.0, *)
  @asyncHandler optional func didReceive(_ payloads: [MXDiagnosticPayload])
}
