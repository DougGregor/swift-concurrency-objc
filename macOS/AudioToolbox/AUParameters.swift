
typealias AUValue = Float
typealias AUParameterAddress = UInt64
enum AUParameterAutomationEventType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case value
  case touch
  case release
}
struct AURecordedParameterEvent {
  var hostTime: UInt64
  var address: AUParameterAddress
  var value: AUValue
  init()
  init(hostTime: UInt64, address: AUParameterAddress, value: AUValue)
}
struct AUParameterAutomationEvent {
  var hostTime: UInt64
  var address: AUParameterAddress
  var value: AUValue
  var eventType: AUParameterAutomationEventType
  var reserved: UInt64
  init()
  init(hostTime: UInt64, address: AUParameterAddress, value: AUValue, eventType: AUParameterAutomationEventType, reserved: UInt64)
}
typealias AUParameterObserver = (AUParameterAddress, AUValue) -> Void
typealias AUParameterRecordingObserver = (Int, UnsafePointer<AURecordedParameterEvent>) -> Void
typealias AUParameterAutomationObserver = (Int, UnsafePointer<AUParameterAutomationEvent>) -> Void
typealias AUParameterObserverToken = UnsafeMutableRawPointer
@available(macOS 10.11, *)
class AUParameterNode : NSObject {
  var identifier: String { get }
  var keyPath: String { get }
  var displayName: String { get }
  func displayName(withLength maximumLength: Int) -> String
  func token(byAddingParameterObserver observer: @escaping AUParameterObserver) -> AUParameterObserverToken
  func token(byAddingParameterRecordingObserver observer: @escaping AUParameterRecordingObserver) -> AUParameterObserverToken
  @available(macOS 10.12, *)
  func token(byAddingParameterAutomationObserver observer: @escaping AUParameterAutomationObserver) -> AUParameterObserverToken
  func removeParameterObserver(_ token: AUParameterObserverToken)
}
@available(macOS 10.11, *)
class AUParameterGroup : AUParameterNode, NSSecureCoding {
  var children: [AUParameterNode] { get }
  var allParameters: [AUParameter] { get }
}
@available(macOS 10.11, *)
class AUParameterTree : AUParameterGroup, NSSecureCoding {
  func parameter(withAddress address: AUParameterAddress) -> AUParameter?
  func parameter(withID paramID: AudioUnitParameterID, scope: AudioUnitScope, element: AudioUnitElement) -> AUParameter?
}
@available(macOS 10.11, *)
class AUParameter : AUParameterNode, NSSecureCoding {
  var minValue: AUValue { get }
  var maxValue: AUValue { get }
  var unit: AudioUnitParameterUnit { get }
  var unitName: String? { get }
  var flags: AudioUnitParameterOptions { get }
  var address: AUParameterAddress { get }
  var valueStrings: [String]? { get }
  var dependentParameters: [NSNumber]? { get }
  var value: AUValue
  func setValue(_ value: AUValue, originator: AUParameterObserverToken?)
  func setValue(_ value: AUValue, originator: AUParameterObserverToken?, atHostTime hostTime: UInt64)
  @available(macOS 10.12, *)
  func setValue(_ value: AUValue, originator: AUParameterObserverToken?, atHostTime hostTime: UInt64, eventType: AUParameterAutomationEventType)
  func string(fromValue value: UnsafePointer<AUValue>?) -> String
  func value(from string: String) -> AUValue
}
