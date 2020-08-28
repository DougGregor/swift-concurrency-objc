
struct MLModelMetadataKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MLModelMetadataKey {
  @available(watchOS 4.0, *)
  static let description: MLModelMetadataKey
  @available(watchOS 4.0, *)
  static let versionString: MLModelMetadataKey
  @available(watchOS 4.0, *)
  static let author: MLModelMetadataKey
  @available(watchOS 4.0, *)
  static let license: MLModelMetadataKey
  @available(watchOS 4.0, *)
  static let creatorDefinedKey: MLModelMetadataKey
}
