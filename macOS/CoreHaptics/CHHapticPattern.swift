
extension CHHapticPattern {
  struct Key : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension CHHapticPattern.Key {
  @available(macOS 10.15, *)
  static let version: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let pattern: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let event: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let eventType: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let time: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let eventDuration: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let eventWaveformPath: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let eventParameters: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let parameter: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let parameterID: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let parameterValue: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let parameterCurve: CHHapticPattern.Key
  @available(macOS 10.15, *)
  static let parameterCurveControlPoints: CHHapticPattern.Key
}
@available(macOS 10.15, *)
class CHHapticPattern : NSObject {
  var duration: TimeInterval { get }
  init(events: [CHHapticEvent], parameters: [CHHapticDynamicParameter]) throws
  init(events: [CHHapticEvent], parameterCurves: [CHHapticParameterCurve]) throws
  init(dictionary patternDict: [CHHapticPattern.Key : Any]) throws
  func exportDictionary() throws -> [CHHapticPattern.Key : Any]
}
