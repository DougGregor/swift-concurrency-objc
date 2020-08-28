
@available(tvOS 14.0, *)
struct GCHapticsLocality : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension GCHapticsLocality {
  @available(tvOS 14.0, *)
  static let `default`: GCHapticsLocality
  @available(tvOS 14.0, *)
  static let all: GCHapticsLocality
  @available(tvOS 14.0, *)
  static let handles: GCHapticsLocality
  @available(tvOS 14.0, *)
  static let leftHandle: GCHapticsLocality
  @available(tvOS 14.0, *)
  static let rightHandle: GCHapticsLocality
  @available(tvOS 14.0, *)
  static let triggers: GCHapticsLocality
  @available(tvOS 14.0, *)
  static let leftTrigger: GCHapticsLocality
  @available(tvOS 14.0, *)
  static let rightTrigger: GCHapticsLocality
}
@available(tvOS 14.0, *)
let GCHapticDurationInfinite: Float
@available(tvOS 14.0, *)
class GCDeviceHaptics : NSObject {
  var supportedLocalities: Set<GCHapticsLocality> { get }
}
