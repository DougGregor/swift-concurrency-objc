
extension NSFileCoordinator {
  struct ReadingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var withoutChanges: NSFileCoordinator.ReadingOptions { get }
    static var resolvesSymbolicLink: NSFileCoordinator.ReadingOptions { get }
    @available(macOS 10.10, *)
    static var immediatelyAvailableMetadataOnly: NSFileCoordinator.ReadingOptions { get }
    @available(macOS 10.10, *)
    static var forUploading: NSFileCoordinator.ReadingOptions { get }
  }
  struct WritingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var forDeleting: NSFileCoordinator.WritingOptions { get }
    static var forMoving: NSFileCoordinator.WritingOptions { get }
    static var forMerging: NSFileCoordinator.WritingOptions { get }
    static var forReplacing: NSFileCoordinator.WritingOptions { get }
    @available(macOS 10.10, *)
    static var contentIndependentMetadataOnly: NSFileCoordinator.WritingOptions { get }
  }
}
@available(macOS 10.10, *)
class NSFileAccessIntent : NSObject {
  class func readingIntent(with url: URL, options: NSFileCoordinator.ReadingOptions = []) -> Self
  class func writingIntent(with url: URL, options: NSFileCoordinator.WritingOptions = []) -> Self
  var url: URL { get }
}
@available(macOS 10.7, *)
class NSFileCoordinator : NSObject {
  class func addFilePresenter(_ filePresenter: NSFilePresenter)
  class func removeFilePresenter(_ filePresenter: NSFilePresenter)
  class var filePresenters: [NSFilePresenter] { get }
  init(filePresenter filePresenterOrNil: NSFilePresenter?)
  @available(macOS 10.7, *)
  var purposeIdentifier: String
  @available(macOS 10.10, *)
  func coordinate(with intents: [NSFileAccessIntent], queue: OperationQueue, byAccessor accessor: @escaping (Error?) -> Void)
  func coordinate(readingItemAt url: URL, options: NSFileCoordinator.ReadingOptions = [], error outError: NSErrorPointer, byAccessor reader: (URL) -> Void)
  func coordinate(writingItemAt url: URL, options: NSFileCoordinator.WritingOptions = [], error outError: NSErrorPointer, byAccessor writer: (URL) -> Void)
  func coordinate(readingItemAt readingURL: URL, options readingOptions: NSFileCoordinator.ReadingOptions = [], writingItemAt writingURL: URL, options writingOptions: NSFileCoordinator.WritingOptions = [], error outError: NSErrorPointer, byAccessor readerWriter: (URL, URL) -> Void)
  func coordinate(writingItemAt url1: URL, options options1: NSFileCoordinator.WritingOptions = [], writingItemAt url2: URL, options options2: NSFileCoordinator.WritingOptions = [], error outError: NSErrorPointer, byAccessor writer: (URL, URL) -> Void)
  func prepare(forReadingItemsAt readingURLs: [URL], options readingOptions: NSFileCoordinator.ReadingOptions = [], writingItemsAt writingURLs: [URL], options writingOptions: NSFileCoordinator.WritingOptions = [], error outError: NSErrorPointer, byAccessor batchAccessor: (@escaping () -> Void) -> Void)
  @available(macOS 10.8, *)
  func item(at oldURL: URL, willMoveTo newURL: URL)
  func item(at oldURL: URL, didMoveTo newURL: URL)
  @available(macOS 10.13, *)
  func item(at url: URL, didChangeUbiquityAttributes attributes: Set<URLResourceKey>)
  func cancel()
}
