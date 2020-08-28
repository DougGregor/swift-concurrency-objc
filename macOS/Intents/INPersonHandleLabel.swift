
struct INPersonHandleLabel : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INPersonHandleLabel {
  @available(macOS 11.0, *)
  static let home: INPersonHandleLabel
  @available(macOS 11.0, *)
  static let work: INPersonHandleLabel
  @available(macOS 11.0, *)
  static let iPhone: INPersonHandleLabel
  @available(macOS 11.0, *)
  static let mobile: INPersonHandleLabel
  @available(macOS 11.0, *)
  static let main: INPersonHandleLabel
  @available(macOS 11.0, *)
  static let homeFax: INPersonHandleLabel
  @available(macOS 11.0, *)
  static let workFax: INPersonHandleLabel
  @available(macOS 11.0, *)
  static let pager: INPersonHandleLabel
  @available(macOS 11.0, *)
  static let other: INPersonHandleLabel
  @available(macOS 11.0, *)
  static let school: INPersonHandleLabel
}
