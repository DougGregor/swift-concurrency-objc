
struct NSFileProviderSyncAnchor : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Data)
  init(rawValue: Data)
  var _rawValue: NSData
  var rawValue: Data { get }
}
struct NSFileProviderPage : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: Data)
  init(rawValue: Data)
  var _rawValue: NSData
  var rawValue: Data { get }
}
extension NSFileProviderPage {
  @available(macOS 11.0, *)
  static let initialPageSortedByDate: NSData
  @available(macOS 11.0, *)
  static let initialPageSortedByName: NSData
}
protocol NSFileProviderEnumerationObserver : NSObjectProtocol {
  func didEnumerate(_ updatedItems: [NSFileProviderItemProtocol])
  func finishEnumerating(upTo nextPage: NSFileProviderPage?)
  func finishEnumeratingWithError(_ error: Error)
  @available(macOS 11.0, *)
  optional var suggestedPageSize: Int { get }
}
protocol NSFileProviderChangeObserver : NSObjectProtocol {
  func didUpdate(_ updatedItems: [NSFileProviderItemProtocol])
  func didDeleteItems(withIdentifiers deletedItemIdentifiers: [NSFileProviderItemIdentifier])
  func finishEnumeratingChanges(upTo anchor: NSFileProviderSyncAnchor, moreComing: Bool)
  func finishEnumeratingWithError(_ error: Error)
  @available(macOS 11.0, *)
  optional var suggestedBatchSize: Int { get }
}
protocol NSFileProviderEnumerator : NSObjectProtocol {
  func invalidate()
  func enumerateItems(for observer: NSFileProviderEnumerationObserver, startingAt page: NSFileProviderPage)
  optional func enumerateChanges(for observer: NSFileProviderChangeObserver, from syncAnchor: NSFileProviderSyncAnchor)
  optional func currentSyncAnchor(completionHandler: @escaping (NSFileProviderSyncAnchor?) -> Void)
  optional func currentSyncAnchor() async -> NSFileProviderSyncAnchor?
}
extension NSFileProviderExtension {
  func enumerator(for containerItemIdentifier: NSFileProviderItemIdentifier) throws -> NSFileProviderEnumerator
}
