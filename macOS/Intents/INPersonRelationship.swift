
struct INPersonRelationship : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INPersonRelationship {
  @available(macOS 10.15, *)
  static let son: INPersonRelationship
  @available(macOS 10.15, *)
  static let daughter: INPersonRelationship
}
