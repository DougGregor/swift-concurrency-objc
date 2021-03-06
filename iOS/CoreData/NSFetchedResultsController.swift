
@available(iOS 3.0, *)
class NSFetchedResultsController<ResultType> : NSObject where ResultType : NSFetchRequestResult {
  init(fetchRequest: NSFetchRequest<ResultType>, managedObjectContext context: NSManagedObjectContext, sectionNameKeyPath: String?, cacheName name: String?)
  func performFetch() throws
  var fetchRequest: NSFetchRequest<ResultType> { get }
  var managedObjectContext: NSManagedObjectContext { get }
  var sectionNameKeyPath: String? { get }
  var cacheName: String? { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSFetchedResultsControllerDelegate?
  class func deleteCache(withName name: String?)
  var fetchedObjects: [ResultType]? { get }
  func object(at indexPath: IndexPath) -> ResultType
  func indexPath(forObject object: ResultType) -> IndexPath?
  func sectionIndexTitle(forSectionName sectionName: String) -> String?
  var sectionIndexTitles: [String] { get }
  var sections: [NSFetchedResultsSectionInfo]? { get }
  func section(forSectionIndexTitle title: String, at sectionIndex: Int) -> Int
}
protocol NSFetchedResultsSectionInfo {
  var name: String { get }
  var indexTitle: String? { get }
  var numberOfObjects: Int { get }
  var objects: [Any]? { get }
}
@available(iOS 3.0, *)
enum NSFetchedResultsChangeType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case insert
  case delete
  case move
  case update
}
protocol NSFetchedResultsControllerDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  optional func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChangeContentWith diff: CollectionDifference<NSManagedObjectID>)
  @available(iOS 3.0, *)
  optional func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?)
  @available(iOS 3.0, *)
  optional func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange sectionInfo: NSFetchedResultsSectionInfo, atSectionIndex sectionIndex: Int, for type: NSFetchedResultsChangeType)
  @available(iOS 3.0, *)
  optional func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>)
  @available(iOS 3.0, *)
  optional func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>)
  @available(iOS 4.0, *)
  optional func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, sectionIndexTitleForSectionName sectionName: String) -> String?
}
