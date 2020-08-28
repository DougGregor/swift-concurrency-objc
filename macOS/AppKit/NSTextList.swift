
extension NSTextList {
  struct MarkerFormat : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var prependEnclosingMarker: NSTextList.Options { get }
  }
}
extension NSTextList.MarkerFormat {
  @available(macOS 10.13, *)
  static let box: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let check: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let circle: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let diamond: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let disc: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let hyphen: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let square: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let lowercaseHexadecimal: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let uppercaseHexadecimal: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let octal: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let lowercaseAlpha: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let uppercaseAlpha: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let lowercaseLatin: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let uppercaseLatin: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let lowercaseRoman: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let uppercaseRoman: NSTextList.MarkerFormat
  @available(macOS 10.13, *)
  static let decimal: NSTextList.MarkerFormat
}
class NSTextList : NSObject, NSSecureCoding, NSCopying {
  init(markerFormat format: NSTextList.MarkerFormat, options mask: Int)
  var markerFormat: NSTextList.MarkerFormat { get }
  var listOptions: NSTextList.Options { get }
  func marker(forItemNumber itemNum: Int) -> String
  @available(macOS 10.6, *)
  var startingItemNumber: Int
}
