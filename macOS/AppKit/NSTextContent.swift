
struct NSTextContentType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSTextContentType {
  @available(macOS 11.0, *)
  static let username: NSTextContentType
  @available(macOS 11.0, *)
  static let password: NSTextContentType
  @available(macOS 11.0, *)
  static let oneTimeCode: NSTextContentType
}
protocol NSTextContent {
  @available(macOS 11.0, *)
  var contentType: NSTextContentType? { get set }
}
