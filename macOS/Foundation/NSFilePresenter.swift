
protocol NSFilePresenter : NSObjectProtocol {
  var presentedItemURL: URL? { get }
  @available(macOS 10.5, *)
  var presentedItemOperationQueue: OperationQueue { get }
  @available(macOS 10.8, *)
  optional var primaryPresentedItemURL: URL? { get }
  optional func relinquishPresentedItem(toReader reader: @escaping ((() -> Void)?) -> Void)
  optional func relinquishPresentedItem(toWriter writer: @escaping ((() -> Void)?) -> Void)
  optional func savePresentedItemChanges(completionHandler: @escaping (Error?) -> Void)
  optional func savePresentedItemChanges() async throws
  optional func accommodatePresentedItemDeletion(completionHandler: @escaping (Error?) -> Void)
  optional func accommodatePresentedItemDeletion() async throws
  @asyncHandler optional func presentedItemDidMove(to newURL: URL)
  @asyncHandler optional func presentedItemDidChange()
  @available(macOS 10.13, *)
  @asyncHandler optional func presentedItemDidChangeUbiquityAttributes(_ attributes: Set<URLResourceKey>)
  @available(macOS 10.13, *)
  optional var observedPresentedItemUbiquityAttributes: Set<URLResourceKey> { get }
  @available(macOS 10.7, *)
  @asyncHandler optional func presentedItemDidGain(_ version: NSFileVersion)
  @available(macOS 10.7, *)
  @asyncHandler optional func presentedItemDidLose(_ version: NSFileVersion)
  @available(macOS 10.7, *)
  @asyncHandler optional func presentedItemDidResolveConflict(_ version: NSFileVersion)
  optional func accommodatePresentedSubitemDeletion(at url: URL, completionHandler: @escaping (Error?) -> Void)
  optional func accommodatePresentedSubitemDeletion(at url: URL) async throws
  @asyncHandler optional func presentedSubitemDidAppear(at url: URL)
  @asyncHandler optional func presentedSubitem(at oldURL: URL, didMoveTo newURL: URL)
  @asyncHandler optional func presentedSubitemDidChange(at url: URL)
  @available(macOS 10.7, *)
  @asyncHandler optional func presentedSubitem(at url: URL, didGain version: NSFileVersion)
  @available(macOS 10.7, *)
  @asyncHandler optional func presentedSubitem(at url: URL, didLose version: NSFileVersion)
  @available(macOS 10.7, *)
  @asyncHandler optional func presentedSubitem(at url: URL, didResolve version: NSFileVersion)
}
