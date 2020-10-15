
extension CHHapticEvent {
  struct ParameterID : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension CHHapticEvent.ParameterID {
  @available(macOS 10.15, *)
  static let hapticIntensity: CHHapticEvent.ParameterID
  @available(macOS 10.15, *)
  static let hapticSharpness: CHHapticEvent.ParameterID
  @available(macOS 10.15, *)
  static let attackTime: CHHapticEvent.ParameterID
  @available(macOS 10.15, *)
  static let decayTime: CHHapticEvent.ParameterID
  @available(macOS 10.15, *)
  static let releaseTime: CHHapticEvent.ParameterID
  @available(macOS 10.15, *)
  static let sustained: CHHapticEvent.ParameterID
  @available(macOS 10.15, *)
  static let audioVolume: CHHapticEvent.ParameterID
  @available(macOS 10.15, *)
  static let audioPitch: CHHapticEvent.ParameterID
  @available(macOS 10.15, *)
  static let audioPan: CHHapticEvent.ParameterID
  @available(macOS 10.15, *)
  static let audioBrightness: CHHapticEvent.ParameterID
}
extension CHHapticDynamicParameter {
  struct ID : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension CHHapticDynamicParameter.ID {
  @available(macOS 10.15, *)
  static let hapticIntensityControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let hapticSharpnessControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let hapticAttackTimeControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let hapticDecayTimeControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let hapticReleaseTimeControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let audioVolumeControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let audioPanControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let audioBrightnessControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let audioPitchControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let audioAttackTimeControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let audioDecayTimeControl: CHHapticDynamicParameter.ID
  @available(macOS 10.15, *)
  static let audioReleaseTimeControl: CHHapticDynamicParameter.ID
}
@available(macOS 10.15, *)
class CHHapticEventParameter : NSObject {
  var parameterID: CHHapticEvent.ParameterID { get }
  var value: Float
  init(parameterID: CHHapticEvent.ParameterID, value: Float)
}
@available(macOS 10.15, *)
class CHHapticDynamicParameter : NSObject {
  var parameterID: CHHapticDynamicParameter.ID { get }
  var value: Float
  var relativeTime: TimeInterval
  init(parameterID: CHHapticDynamicParameter.ID, value: Float, relativeTime time: TimeInterval)
}
extension CHHapticParameterCurve {
  @available(macOS 10.15, *)
  class ControlPoint : NSObject {
    var relativeTime: TimeInterval
    var value: Float
    init(relativeTime time: TimeInterval, value: Float)
  }
}
class CHHapticParameterCurve : NSObject {
  var parameterID: CHHapticDynamicParameter.ID { get }
  var relativeTime: TimeInterval
  var controlPoints: [CHHapticParameterCurve.ControlPoint] { get }
  init(parameterID: CHHapticDynamicParameter.ID, controlPoints: [CHHapticParameterCurve.ControlPoint], relativeTime: TimeInterval)
}
