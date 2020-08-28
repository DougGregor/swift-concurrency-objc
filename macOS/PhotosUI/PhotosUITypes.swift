
struct PHProjectType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PHProjectType {
  @available(macOS 10.13, *)
  static let undefined: PHProjectType
}
struct PHProjectCategory : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PHProjectCategory {
  @available(macOS 10.14, *)
  static let book: PHProjectCategory
  @available(macOS 10.14, *)
  static let calendar: PHProjectCategory
  @available(macOS 10.14, *)
  static let card: PHProjectCategory
  @available(macOS 10.14, *)
  static let prints: PHProjectCategory
  @available(macOS 10.14, *)
  static let slideshow: PHProjectCategory
  @available(macOS 10.14, *)
  static let wallDecor: PHProjectCategory
  @available(macOS 10.14, *)
  static let other: PHProjectCategory
  @available(macOS 10.14.2, *)
  static let undefined: PHProjectCategory
}
