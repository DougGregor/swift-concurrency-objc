
typealias GCDeviceElement = GCControllerElement
typealias GCDeviceButtonInput = GCControllerButtonInput
typealias GCDeviceAxisInput = GCControllerAxisInput
typealias GCDeviceDirectionPad = GCControllerDirectionPad
@available(tvOS 14.0, *)
class GCPhysicalInputProfile : NSObject {
  @available(tvOS 14.0, *)
  weak var device: @sil_weak GCDevice? { get }
  @available(tvOS 14.0, *)
  var lastEventTimestamp: TimeInterval { get }
  @available(tvOS 14.0, *)
  var elements: [String : GCControllerElement] { get }
  @available(tvOS 14.0, *)
  var buttons: [String : GCControllerButtonInput] { get }
  @available(tvOS 14.0, *)
  var axes: [String : GCControllerAxisInput] { get }
  @available(tvOS 14.0, *)
  var dpads: [String : GCControllerDirectionPad] { get }
  @available(tvOS 14.0, *)
  var allElements: Set<GCControllerElement> { get }
  @available(tvOS 14.0, *)
  var allButtons: Set<GCControllerButtonInput> { get }
  @available(tvOS 14.0, *)
  var allAxes: Set<GCControllerAxisInput> { get }
  @available(tvOS 14.0, *)
  var allDpads: Set<GCControllerDirectionPad> { get }
  subscript(key: String) -> GCControllerElement? { get }
  @available(tvOS 14.0, *)
  func capture() -> Self
  @available(tvOS 14.0, *)
  func setStateFromPhysicalInput(_ physicalInput: GCPhysicalInputProfile)
}
