
typealias GCDeviceElement = GCControllerElement
typealias GCDeviceButtonInput = GCControllerButtonInput
typealias GCDeviceAxisInput = GCControllerAxisInput
typealias GCDeviceDirectionPad = GCControllerDirectionPad
@available(macOS 11.0, *)
class GCPhysicalInputProfile : NSObject {
  @available(macOS 11.0, *)
  weak var device: @sil_weak GCDevice? { get }
  @available(macOS 11.0, *)
  var lastEventTimestamp: TimeInterval { get }
  @available(macOS 11.0, *)
  var elements: [String : GCControllerElement] { get }
  @available(macOS 11.0, *)
  var buttons: [String : GCControllerButtonInput] { get }
  @available(macOS 11.0, *)
  var axes: [String : GCControllerAxisInput] { get }
  @available(macOS 11.0, *)
  var dpads: [String : GCControllerDirectionPad] { get }
  @available(macOS 11.0, *)
  var allElements: Set<GCControllerElement> { get }
  @available(macOS 11.0, *)
  var allButtons: Set<GCControllerButtonInput> { get }
  @available(macOS 11.0, *)
  var allAxes: Set<GCControllerAxisInput> { get }
  @available(macOS 11.0, *)
  var allDpads: Set<GCControllerDirectionPad> { get }
  subscript(key: String) -> GCControllerElement? { get }
  @available(macOS 11.0, *)
  func capture() -> Self
  @available(macOS 11.0, *)
  func setStateFromPhysicalInput(_ physicalInput: GCPhysicalInputProfile)
}
