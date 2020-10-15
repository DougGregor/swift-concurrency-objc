
@available(macOS 10.4, *)
class NSMetadataQuery : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSMetadataQueryDelegate?
  @NSCopying var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: TimeInterval
  var searchScopes: [Any]
  @available(macOS 10.9, *)
  var searchItems: [Any]?
  @available(macOS 10.9, *)
  var operationQueue: OperationQueue?
  func start() -> Bool
  func stop()
  var isStarted: Bool { get }
  var isGathering: Bool { get }
  var isStopped: Bool { get }
  func disableUpdates()
  func enableUpdates()
  var resultCount: Int { get }
  func result(at idx: Int) -> Any
  @available(macOS 10.9, *)
  func enumerateResults(_ block: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.9, *)
  func enumerateResults(options opts: NSEnumerationOptions = [], using block: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [Any] { get }
  func index(ofResult result: Any) -> Int
  var valueLists: [String : [NSMetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [NSMetadataQueryResultGroup] { get }
  func value(ofAttribute attrName: String, forResultAt idx: Int) -> Any?
}
protocol NSMetadataQueryDelegate : NSObjectProtocol {
  @available(macOS 10.4, *)
  optional func metadataQuery(_ query: NSMetadataQuery, replacementObjectForResultObject result: NSMetadataItem) -> Any
  @available(macOS 10.4, *)
  optional func metadataQuery(_ query: NSMetadataQuery, replacementValueForAttribute attrName: String, value attrValue: Any) -> Any
}
extension NSNotification.Name {
  @available(macOS 10.4, *)
  static let NSMetadataQueryDidStartGathering: NSNotification.Name
  @available(macOS 10.4, *)
  static let NSMetadataQueryGatheringProgress: NSNotification.Name
  @available(macOS 10.4, *)
  static let NSMetadataQueryDidFinishGathering: NSNotification.Name
  @available(macOS 10.4, *)
  static let NSMetadataQueryDidUpdate: NSNotification.Name
}
@available(macOS 10.9, *)
let NSMetadataQueryUpdateAddedItemsKey: String
@available(macOS 10.9, *)
let NSMetadataQueryUpdateChangedItemsKey: String
@available(macOS 10.9, *)
let NSMetadataQueryUpdateRemovedItemsKey: String
@available(macOS 10.4, *)
let NSMetadataQueryResultContentRelevanceAttribute: String
@available(macOS 10.4, *)
let NSMetadataQueryUserHomeScope: String
@available(macOS 10.4, *)
let NSMetadataQueryLocalComputerScope: String
@available(macOS 10.4, *)
let NSMetadataQueryNetworkScope: String
@available(macOS 10.9, *)
let NSMetadataQueryIndexedLocalComputerScope: String
@available(macOS 10.9, *)
let NSMetadataQueryIndexedNetworkScope: String
@available(macOS 10.7, *)
let NSMetadataQueryUbiquitousDocumentsScope: String
@available(macOS 10.7, *)
let NSMetadataQueryUbiquitousDataScope: String
@available(macOS 10.10, *)
let NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(macOS 10.4, *)
class NSMetadataItem : NSObject {
  @available(macOS 10.9, *)
  init?(url: URL)
  func value(forAttribute key: String) -> Any?
  func values(forAttributes keys: [String]) -> [String : Any]?
  var attributes: [String] { get }
}
@available(macOS 10.4, *)
class NSMetadataQueryAttributeValueTuple : NSObject {
  var attribute: String { get }
  var value: Any? { get }
  var count: Int { get }
}
@available(macOS 10.4, *)
class NSMetadataQueryResultGroup : NSObject {
  var attribute: String { get }
  var value: Any { get }
  var subgroups: [NSMetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func result(at idx: Int) -> Any
  var results: [Any] { get }
}
