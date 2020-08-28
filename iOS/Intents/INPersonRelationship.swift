
struct INPersonRelationship : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INPersonRelationship {
  @available(iOS 10.2, *)
  static let father: INPersonRelationship
  @available(iOS 10.2, *)
  static let mother: INPersonRelationship
  @available(iOS 10.2, *)
  static let parent: INPersonRelationship
  @available(iOS 10.2, *)
  static let brother: INPersonRelationship
  @available(iOS 10.2, *)
  static let sister: INPersonRelationship
  @available(iOS 10.2, *)
  static let child: INPersonRelationship
  @available(iOS 10.2, *)
  static let friend: INPersonRelationship
  @available(iOS 10.2, *)
  static let spouse: INPersonRelationship
  @available(iOS 10.2, *)
  static let partner: INPersonRelationship
  @available(iOS 10.2, *)
  static let assistant: INPersonRelationship
  @available(iOS 10.2, *)
  static let manager: INPersonRelationship
  @available(iOS 13.0, *)
  static let son: INPersonRelationship
  @available(iOS 13.0, *)
  static let daughter: INPersonRelationship
}
