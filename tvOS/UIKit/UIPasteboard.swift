
extension UIPasteboard.Name {
}
extension UIPasteboard.DetectionPattern {
  @available(tvOS 14.0, *)
  static let probableWebURL: UIPasteboard.DetectionPattern
  @available(tvOS 14.0, *)
  static let probableWebSearch: UIPasteboard.DetectionPattern
  @available(tvOS 14.0, *)
  static let number: UIPasteboard.DetectionPattern
}
extension UIPasteboard {
  @available(tvOS 10.0, *)
  struct OptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Name : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(tvOS 14.0, *)
  struct DetectionPattern : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension UIPasteboard.OptionsKey {
}
