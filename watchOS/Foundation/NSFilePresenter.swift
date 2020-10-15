
protocol NSFilePresenter : NSObjectProtocol {
  var presentedItemURL: URL? { get }
  @available(watchOS 2.0, *)
  var presentedItemOperationQueue: OperationQueue { get }
  optional func relinquishPresentedItem(toReader reader: @escaping ((() -> Void)?) -> Void)
  optional func relinquishPresentedItem(toWriter writer: @escaping ((() -> Void)?) -> Void)
  optional func savePresentedItemChanges(completionHandler: @escaping (Error?) -> Void)
  optional func accommodatePresentedItemDeletion(completionHandler: @escaping (Error?) -> Void)
  optional func presentedItemDidMove(to newURL: URL)
  optional func presentedItemDidChange()
  @available(watchOS 2.0, *)
  optional func presentedItemDidGain(_ version: NSFileVersion)
  @available(watchOS 2.0, *)
  optional func presentedItemDidLose(_ version: NSFileVersion)
  @available(watchOS 2.0, *)
  optional func presentedItemDidResolveConflict(_ version: NSFileVersion)
  optional func accommodatePresentedSubitemDeletion(at url: URL, completionHandler: @escaping (Error?) -> Void)
  optional func presentedSubitemDidAppear(at url: URL)
  optional func presentedSubitem(at oldURL: URL, didMoveTo newURL: URL)
  optional func presentedSubitemDidChange(at url: URL)
  @available(watchOS 2.0, *)
  optional func presentedSubitem(at url: URL, didGain version: NSFileVersion)
  @available(watchOS 2.0, *)
  optional func presentedSubitem(at url: URL, didLose version: NSFileVersion)
  @available(watchOS 2.0, *)
  optional func presentedSubitem(at url: URL, didResolve version: NSFileVersion)
}
