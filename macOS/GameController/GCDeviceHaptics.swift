
@available(macOS 11.0, *)
struct GCHapticsLocality : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension GCHapticsLocality {
  @available(macOS 11.0, *)
  static let `default`: GCHapticsLocality
  @available(macOS 11.0, *)
  static let all: GCHapticsLocality
  @available(macOS 11.0, *)
  static let handles: GCHapticsLocality
  @available(macOS 11.0, *)
  static let leftHandle: GCHapticsLocality
  @available(macOS 11.0, *)
  static let rightHandle: GCHapticsLocality
  @available(macOS 11.0, *)
  static let triggers: GCHapticsLocality
  @available(macOS 11.0, *)
  static let leftTrigger: GCHapticsLocality
  @available(macOS 11.0, *)
  static let rightTrigger: GCHapticsLocality
}
@available(macOS 11.0, *)
let GCHapticDurationInfinite: Float
@available(macOS 11.0, *)
class GCDeviceHaptics : NSObject {
  var supportedLocalities: Set<GCHapticsLocality> { get }
}
