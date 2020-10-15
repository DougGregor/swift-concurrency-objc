
@available(watchOS 2.0, *)
class NSMetadataQuery : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged NSMetadataQueryDelegate?
  @NSCopying var predicate: NSPredicate?
  var sortDescriptors: [NSSortDescriptor]
  var valueListAttributes: [String]
  var groupingAttributes: [String]?
  var notificationBatchingInterval: TimeInterval
  var searchScopes: [Any]
  @available(watchOS 2.0, *)
  var searchItems: [Any]?
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  func enumerateResults(_ block: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func enumerateResults(options opts: NSEnumerationOptions = [], using block: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  var results: [Any] { get }
  func index(ofResult result: Any) -> Int
  var valueLists: [String : [NSMetadataQueryAttributeValueTuple]] { get }
  var groupedResults: [NSMetadataQueryResultGroup] { get }
  func value(ofAttribute attrName: String, forResultAt idx: Int) -> Any?
}
protocol NSMetadataQueryDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  optional func metadataQuery(_ query: NSMetadataQuery, replacementObjectForResultObject result: NSMetadataItem) -> Any
  @available(watchOS 2.0, *)
  optional func metadataQuery(_ query: NSMetadataQuery, replacementValueForAttribute attrName: String, value attrValue: Any) -> Any
}
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let NSMetadataQueryDidStartGathering: NSNotification.Name
  @available(watchOS 2.0, *)
  static let NSMetadataQueryGatheringProgress: NSNotification.Name
  @available(watchOS 2.0, *)
  static let NSMetadataQueryDidFinishGathering: NSNotification.Name
  @available(watchOS 2.0, *)
  static let NSMetadataQueryDidUpdate: NSNotification.Name
}
@available(watchOS 2.0, *)
let NSMetadataQueryUpdateAddedItemsKey: String
@available(watchOS 2.0, *)
let NSMetadataQueryUpdateChangedItemsKey: String
@available(watchOS 2.0, *)
let NSMetadataQueryUpdateRemovedItemsKey: String
@available(watchOS 2.0, *)
let NSMetadataQueryResultContentRelevanceAttribute: String
@available(watchOS 2.0, *)
let NSMetadataQueryUbiquitousDocumentsScope: String
@available(watchOS 2.0, *)
let NSMetadataQueryUbiquitousDataScope: String
@available(watchOS 2.0, *)
let NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope: String
@available(watchOS 2.0, *)
class NSMetadataItem : NSObject {
  func value(forAttribute key: String) -> Any?
  func values(forAttributes keys: [String]) -> [String : Any]?
  var attributes: [String] { get }
}
@available(watchOS 2.0, *)
class NSMetadataQueryAttributeValueTuple : NSObject {
  var attribute: String { get }
  var value: Any? { get }
  var count: Int { get }
}
@available(watchOS 2.0, *)
class NSMetadataQueryResultGroup : NSObject {
  var attribute: String { get }
  var value: Any { get }
  var subgroups: [NSMetadataQueryResultGroup]? { get }
  var resultCount: Int { get }
  func result(at idx: Int) -> Any
  var results: [Any] { get }
}
