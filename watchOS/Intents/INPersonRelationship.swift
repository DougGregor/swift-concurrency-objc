
struct INPersonRelationship : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INPersonRelationship {
  @available(watchOS 3.2, *)
  static let father: INPersonRelationship
  @available(watchOS 3.2, *)
  static let mother: INPersonRelationship
  @available(watchOS 3.2, *)
  static let parent: INPersonRelationship
  @available(watchOS 3.2, *)
  static let brother: INPersonRelationship
  @available(watchOS 3.2, *)
  static let sister: INPersonRelationship
  @available(watchOS 3.2, *)
  static let child: INPersonRelationship
  @available(watchOS 3.2, *)
  static let friend: INPersonRelationship
  @available(watchOS 3.2, *)
  static let spouse: INPersonRelationship
  @available(watchOS 3.2, *)
  static let partner: INPersonRelationship
  @available(watchOS 3.2, *)
  static let assistant: INPersonRelationship
  @available(watchOS 3.2, *)
  static let manager: INPersonRelationship
  @available(watchOS 6.0, *)
  static let son: INPersonRelationship
  @available(watchOS 6.0, *)
  static let daughter: INPersonRelationship
}
