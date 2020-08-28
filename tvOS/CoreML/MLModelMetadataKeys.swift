
struct MLModelMetadataKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MLModelMetadataKey {
  @available(tvOS 11.0, *)
  static let description: MLModelMetadataKey
  @available(tvOS 11.0, *)
  static let versionString: MLModelMetadataKey
  @available(tvOS 11.0, *)
  static let author: MLModelMetadataKey
  @available(tvOS 11.0, *)
  static let license: MLModelMetadataKey
  @available(tvOS 11.0, *)
  static let creatorDefinedKey: MLModelMetadataKey
}
