
@available(macOS 10.15, *)
protocol CHHapticParameterAttributes : NSObjectProtocol {
  var minValue: Float { get }
  var maxValue: Float { get }
  var defaultValue: Float { get }
}
@available(macOS 10.15, *)
protocol CHHapticDeviceCapability {
  var supportsHaptics: Bool { get }
  var supportsAudio: Bool { get }
  func attributes(forEventParameter inParameter: CHHapticEvent.ParameterID, eventType type: CHHapticEvent.EventType) throws -> CHHapticParameterAttributes
  func attributes(forDynamicParameter inParameter: CHHapticDynamicParameter.ID) throws -> CHHapticParameterAttributes
}
