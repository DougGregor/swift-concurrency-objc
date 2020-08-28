
struct HKFHIRRelease : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension HKFHIRRelease {
  @available(watchOS 7.0, *)
  static let dstu2: HKFHIRRelease
  @available(watchOS 7.0, *)
  static let r4: HKFHIRRelease
  @available(watchOS 7.0, *)
  static let unknown: HKFHIRRelease
}
