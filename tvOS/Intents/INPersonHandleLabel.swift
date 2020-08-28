
struct INPersonHandleLabel : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INPersonHandleLabel {
  @available(tvOS 10.2, *)
  static let home: INPersonHandleLabel
  @available(tvOS 10.2, *)
  static let work: INPersonHandleLabel
  @available(tvOS 10.2, *)
  static let iPhone: INPersonHandleLabel
  @available(tvOS 10.2, *)
  static let mobile: INPersonHandleLabel
  @available(tvOS 10.2, *)
  static let main: INPersonHandleLabel
  @available(tvOS 10.2, *)
  static let homeFax: INPersonHandleLabel
  @available(tvOS 10.2, *)
  static let workFax: INPersonHandleLabel
  @available(tvOS 10.2, *)
  static let pager: INPersonHandleLabel
  @available(tvOS 10.2, *)
  static let other: INPersonHandleLabel
  @available(tvOS 14.0, *)
  static let school: INPersonHandleLabel
}
