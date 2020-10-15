
typealias GCDeviceElement = GCControllerElement
typealias GCDeviceButtonInput = GCControllerButtonInput
typealias GCDeviceAxisInput = GCControllerAxisInput
typealias GCDeviceDirectionPad = GCControllerDirectionPad
@available(iOS 14.0, *)
class GCPhysicalInputProfile : NSObject {
  @available(iOS 14.0, *)
  weak var device: @sil_weak GCDevice? { get }
  @available(iOS 14.0, *)
  var lastEventTimestamp: TimeInterval { get }
  @available(iOS 14.0, *)
  var elements: [String : GCControllerElement] { get }
  @available(iOS 14.0, *)
  var buttons: [String : GCControllerButtonInput] { get }
  @available(iOS 14.0, *)
  var axes: [String : GCControllerAxisInput] { get }
  @available(iOS 14.0, *)
  var dpads: [String : GCControllerDirectionPad] { get }
  @available(iOS 14.0, *)
  var allElements: Set<GCControllerElement> { get }
  @available(iOS 14.0, *)
  var allButtons: Set<GCControllerButtonInput> { get }
  @available(iOS 14.0, *)
  var allAxes: Set<GCControllerAxisInput> { get }
  @available(iOS 14.0, *)
  var allDpads: Set<GCControllerDirectionPad> { get }
  subscript(key: String) -> GCControllerElement? { get }
  @available(iOS 14.0, *)
  func capture() -> Self
  @available(iOS 14.0, *)
  func setStateFromPhysicalInput(_ physicalInput: GCPhysicalInputProfile)
}
