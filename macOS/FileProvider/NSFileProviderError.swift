
@available(macOS 11.0, *)
let NSFileProviderErrorDomain: String
@available(macOS 10.15, *)
let NSFileProviderErrorItemKey: String
@available(macOS 11.0, *)
let NSFileProviderErrorNonExistentItemIdentifierKey: String
@available(macOS 11.0, *)
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
  @available(macOS 11.0, *)
  static var deletionRejected: NSFileProviderError.Code { get }
  @available(macOS 11.0, *)
  static var directoryNotEmpty: NSFileProviderError.Code { get }
  @available(macOS 11.0, *)
  static var providerNotFound: NSFileProviderError.Code { get }
  @available(macOS 11.0, *)
  static var providerTranslocated: NSFileProviderError.Code { get }
  @available(macOS 11.0, *)
  static var olderExtensionVersionRunning: NSFileProviderError.Code { get }
  @available(macOS 11.0, *)
  static var newerExtensionVersionFound: NSFileProviderError.Code { get }
  @available(macOS 11.0, *)
  static var cannotSynchronize: NSFileProviderError.Code { get }
}
extension NSError {
  @available(macOS 11.0, *)
  class func fileProviderErrorForCollision(with existingItem: NSFileProviderItem) -> Self
  @available(macOS 11.0, *)
  class func fileProviderErrorForNonExistentItem(withIdentifier itemIdentifier: NSFileProviderItemIdentifier) -> Self
  @available(macOS 11.0, *)
  class func fileProviderErrorForRejectedDeletion(of updatedVersion: NSFileProviderItem) -> Self
}
