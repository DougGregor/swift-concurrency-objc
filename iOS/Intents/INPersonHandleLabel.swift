
struct INPersonHandleLabel : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INPersonHandleLabel {
  @available(iOS 10.2, *)
  static let home: INPersonHandleLabel
  @available(iOS 10.2, *)
  static let work: INPersonHandleLabel
  @available(iOS 10.2, *)
  static let iPhone: INPersonHandleLabel
  @available(iOS 10.2, *)
  static let mobile: INPersonHandleLabel
  @available(iOS 10.2, *)
  static let main: INPersonHandleLabel
  @available(iOS 10.2, *)
  static let homeFax: INPersonHandleLabel
  @available(iOS 10.2, *)
  static let workFax: INPersonHandleLabel
  @available(iOS 10.2, *)
  static let pager: INPersonHandleLabel
  @available(iOS 10.2, *)
  static let other: INPersonHandleLabel
  @available(iOS 14.0, *)
  static let school: INPersonHandleLabel
}
