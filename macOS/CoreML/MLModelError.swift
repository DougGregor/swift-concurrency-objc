
@available(macOS 10.13, *)
let MLModelErrorDomain: String
@available(macOS 10.13, *)
struct MLModelError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var generic: MLModelError.Code { get }
  static var featureType: MLModelError.Code { get }
  static var io: MLModelError.Code { get }
  @available(macOS 10.13.2, *)
  static var customLayer: MLModelError.Code { get }
  @available(macOS 10.14, *)
  static var customModel: MLModelError.Code { get }
  @available(macOS 10.15, *)
  static var update: MLModelError.Code { get }
  @available(macOS 10.15, *)
  static var parameters: MLModelError.Code { get }
  @available(macOS 11.0, *)
  static var modelDecryptionKeyFetch: MLModelError.Code { get }
  @available(macOS 11.0, *)
  static var modelDecryption: MLModelError.Code { get }
  @available(macOS 11.0, *)
  static var modelCollection: MLModelError.Code { get }
}
