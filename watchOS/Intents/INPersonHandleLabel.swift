
struct INPersonHandleLabel : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INPersonHandleLabel {
  @available(watchOS 3.2, *)
  static let home: INPersonHandleLabel
  @available(watchOS 3.2, *)
  static let work: INPersonHandleLabel
  @available(watchOS 3.2, *)
  static let iPhone: INPersonHandleLabel
  @available(watchOS 3.2, *)
  static let mobile: INPersonHandleLabel
  @available(watchOS 3.2, *)
  static let main: INPersonHandleLabel
  @available(watchOS 3.2, *)
  static let homeFax: INPersonHandleLabel
  @available(watchOS 3.2, *)
  static let workFax: INPersonHandleLabel
  @available(watchOS 3.2, *)
  static let pager: INPersonHandleLabel
  @available(watchOS 3.2, *)
  static let other: INPersonHandleLabel
  @available(watchOS 7.0, *)
  static let school: INPersonHandleLabel
}
