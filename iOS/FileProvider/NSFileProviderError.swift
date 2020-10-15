
@available(iOS 11.0, *)
let NSFileProviderErrorDomain: String
@available(iOS, introduced: 8.0, deprecated: 13.0, message: "NSFileProviderErrorItemKey")
let NSFileProviderErrorCollidingItemKey: String
@available(iOS 11.0, *)
let NSFileProviderErrorNonExistentItemIdentifierKey: String
@available(iOS 11.0, *)
struct NSFileProviderError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var notAuthenticated: NSFileProviderError.Code { get }
  static var filenameCollision: NSFileProviderError.Code { get }
  static var syncAnchorExpired: NSFileProviderError.Code { get }
  static var pageExpired: NSFileProviderError.Code { get }
  static var insufficientQuota: NSFileProviderError.Code { get }
  static var serverUnreachable: NSFileProviderError.Code { get }
  static var noSuchItem: NSFileProviderError.Code { get }
}
extension NSError {
  @available(iOS 11.0, *)
  class func fileProviderErrorForCollision(with existingItem: NSFileProviderItem) -> Self
  @available(iOS 11.0, *)
  class func fileProviderErrorForNonExistentItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier) -> Self
}
