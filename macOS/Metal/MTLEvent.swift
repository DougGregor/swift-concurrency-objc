
@available(macOS 10.14, *)
protocol MTLEvent : NSObjectProtocol {
  var device: MTLDevice? { get }
  var label: String? { get set }
}
@available(macOS 10.14, *)
class MTLSharedEventListener : NSObject {
  init(dispatchQueue: DispatchQueue)
  var dispatchQueue: DispatchQueue { get }
}
typealias MTLSharedEventNotificationBlock = (MTLSharedEvent, UInt64) -> Void
@available(macOS 10.14, *)
protocol MTLSharedEvent : MTLEvent {
  func notify(_ listener: MTLSharedEventListener, atValue value: UInt64, block: @escaping MTLSharedEventNotificationBlock)
  func makeSharedEventHandle() -> MTLSharedEventHandle
  var signaledValue: UInt64 { get set }
}
@available(macOS 10.14, *)
class MTLSharedEventHandle : NSObject, NSSecureCoding {
  var label: String? { get }
}
