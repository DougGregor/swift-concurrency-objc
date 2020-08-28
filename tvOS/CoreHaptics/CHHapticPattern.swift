
extension CHHapticPattern {
  struct Key : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension CHHapticPattern.Key {
  @available(tvOS 14.0, *)
  static let version: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let pattern: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let event: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let eventType: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let time: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let eventDuration: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let eventWaveformPath: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let eventParameters: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let parameter: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let parameterID: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let parameterValue: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let parameterCurve: CHHapticPattern.Key
  @available(tvOS 14.0, *)
  static let parameterCurveControlPoints: CHHapticPattern.Key
}
@available(tvOS 14.0, *)
class CHHapticPattern : NSObject {
  var duration: TimeInterval { get }
  init(events: [CHHapticEvent], parameters: [CHHapticDynamicParameter]) throws
  init(events: [CHHapticEvent], parameterCurves: [CHHapticParameterCurve]) throws
  init(dictionary patternDict: [CHHapticPattern.Key : Any]) throws
  func exportDictionary() throws -> [CHHapticPattern.Key : Any]
}
