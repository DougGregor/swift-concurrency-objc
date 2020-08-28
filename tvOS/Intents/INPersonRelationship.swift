
struct INPersonRelationship : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INPersonRelationship {
  @available(tvOS 10.2, *)
  static let father: INPersonRelationship
  @available(tvOS 10.2, *)
  static let mother: INPersonRelationship
  @available(tvOS 10.2, *)
  static let parent: INPersonRelationship
  @available(tvOS 10.2, *)
  static let brother: INPersonRelationship
  @available(tvOS 10.2, *)
  static let sister: INPersonRelationship
  @available(tvOS 10.2, *)
  static let child: INPersonRelationship
  @available(tvOS 10.2, *)
  static let friend: INPersonRelationship
  @available(tvOS 10.2, *)
  static let spouse: INPersonRelationship
  @available(tvOS 10.2, *)
  static let partner: INPersonRelationship
  @available(tvOS 10.2, *)
  static let assistant: INPersonRelationship
  @available(tvOS 10.2, *)
  static let manager: INPersonRelationship
  @available(tvOS 13.0, *)
  static let son: INPersonRelationship
  @available(tvOS 13.0, *)
  static let daughter: INPersonRelationship
}
