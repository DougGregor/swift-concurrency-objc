
@available(macOS 10.11, *)
let CSIndexErrorDomain: String
@available(macOS 10.11, *)
struct CSIndexError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknownError: CSIndexError.Code { get }
  static var indexUnavailableError: CSIndexError.Code { get }
  static var invalidItemError: CSIndexError.Code { get }
  static var invalidClientStateError: CSIndexError.Code { get }
  static var remoteConnectionError: CSIndexError.Code { get }
  static var quotaExceeded: CSIndexError.Code { get }
  static var indexingUnsupported: CSIndexError.Code { get }
}
@available(macOS 10.11, *)
class CSSearchableIndex : NSObject {
  weak var indexDelegate: @sil_weak CSSearchableIndexDelegate?
  class func isIndexingAvailable() -> Bool
  class func `default`() -> Self
  init(name: String)
  init(name: String, protectionClass: FileProtectionType?)
  func indexSearchableItems(_ items: [CSSearchableItem], completionHandler: ((Error?) -> Void)? = nil)
  func deleteSearchableItems(withIdentifiers identifiers: [String], completionHandler: ((Error?) -> Void)? = nil)
  func deleteSearchableItems(withDomainIdentifiers domainIdentifiers: [String], completionHandler: ((Error?) -> Void)? = nil)
  func deleteAllSearchableItems(completionHandler: ((Error?) -> Void)? = nil)
}
extension CSSearchableIndex {
  func beginBatch()
  func endBatch(withClientState clientState: Data, completionHandler: ((Error?) -> Void)? = nil)
  func fetchLastClientState(completionHandler: @escaping (Data?, Error?) -> Void)
}
@available(macOS 10.11, *)
protocol CSSearchableIndexDelegate : NSObjectProtocol {
  func searchableIndex(_ searchableIndex: CSSearchableIndex, reindexAllSearchableItemsWithAcknowledgementHandler acknowledgementHandler: @escaping () -> Void)
  func searchableIndex(_ searchableIndex: CSSearchableIndex, reindexSearchableItemsWithIdentifiers identifiers: [String], acknowledgementHandler: @escaping () -> Void)
  optional func searchableIndexDidThrottle(_ searchableIndex: CSSearchableIndex)
  optional func searchableIndexDidFinishThrottle(_ searchableIndex: CSSearchableIndex)
  @available(macOS 10.11, *)
  optional func data(for searchableIndex: CSSearchableIndex, itemIdentifier: String, typeIdentifier: String) throws -> Data
  @available(macOS 10.11, *)
  optional func fileURL(for searchableIndex: CSSearchableIndex, itemIdentifier: String, typeIdentifier: String, inPlace: Bool) throws -> URL
}
