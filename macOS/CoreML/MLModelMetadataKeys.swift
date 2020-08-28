
struct MLModelMetadataKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MLModelMetadataKey {
  @available(macOS 10.13, *)
  static let description: MLModelMetadataKey
  @available(macOS 10.13, *)
  static let versionString: MLModelMetadataKey
  @available(macOS 10.13, *)
  static let author: MLModelMetadataKey
  @available(macOS 10.13, *)
  static let license: MLModelMetadataKey
  @available(macOS 10.13, *)
  static let creatorDefinedKey: MLModelMetadataKey
}
