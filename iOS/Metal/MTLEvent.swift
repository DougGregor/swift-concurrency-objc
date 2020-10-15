
@available(iOS 12.0, *)
protocol MTLEvent : NSObjectProtocol {
  var device: MTLDevice? { get }
  var label: String? { get set }
}
@available(iOS 12.0, *)
class MTLSharedEventListener : NSObject {
  init(dispatchQueue: DispatchQueue)
  var dispatchQueue: DispatchQueue { get }
}
typealias MTLSharedEventNotificationBlock = (MTLSharedEvent, UInt64) -> Void
@available(iOS 12.0, *)
protocol MTLSharedEvent : MTLEvent {
  func notify(_ listener: MTLSharedEventListener, atValue value: UInt64, block: @escaping MTLSharedEventNotificationBlock)
  func makeSharedEventHandle() -> MTLSharedEventHandle
  var signaledValue: UInt64 { get set }
}
@available(iOS 12.0, *)
class MTLSharedEventHandle : NSObject, NSSecureCoding {
  var label: String? { get }
}
