
struct HMSignificantEvent : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HMSignificantEvent {
  @available(iOS 9.0, *)
  static let sunrise: HMSignificantEvent
  @available(iOS 9.0, *)
  static let sunset: HMSignificantEvent
}
