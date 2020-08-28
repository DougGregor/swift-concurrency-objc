
class NSDocumentController : NSObject, NSCoding, NSMenuItemValidation, NSUserInterfaceValidations {
  class var shared: NSDocumentController { get }
  var documents: [NSDocument] { get }
  var currentDocument: NSDocument? { get }
  var currentDirectory: String? { get }
  func document(for url: URL) -> NSDocument?
  func document(for window: NSWindow) -> NSDocument?
  func addDocument(_ document: NSDocument)
  func removeDocument(_ document: NSDocument)
  @IBAction func newDocument(_ sender: Any?)
  func openUntitledDocumentAndDisplay(_ displayDocument: Bool) throws -> NSDocument
  func makeUntitledDocument(ofType typeName: String) throws -> NSDocument
  @IBAction func openDocument(_ sender: Any?)
  func urlsFromRunningOpenPanel() -> [URL]?
  func runModalOpenPanel(_ openPanel: NSOpenPanel, forTypes types: [String]?) -> Int
  @available(macOS 10.8, *)
  func beginOpenPanel(completionHandler: @escaping ([URL]?) -> Void)
  @available(macOS 10.8, *)
  func beginOpenPanel(_ openPanel: NSOpenPanel, forTypes inTypes: [String]?, completionHandler: @escaping (Int) -> Void)
  @available(macOS 10.7, *)
  func openDocument(withContentsOf url: URL, display displayDocument: Bool, completionHandler: @escaping (NSDocument?, Bool, Error?) -> Void)
  func makeDocument(withContentsOf url: URL, ofType typeName: String) throws -> NSDocument
  @available(macOS 10.7, *)
  func reopenDocument(for urlOrNil: URL?, withContentsOf contentsURL: URL, display displayDocument: Bool, completionHandler: @escaping (NSDocument?, Bool, Error?) -> Void)
  func makeDocument(for urlOrNil: URL?, withContentsOf contentsURL: URL, ofType typeName: String) throws -> NSDocument
  var autosavingDelay: TimeInterval
  @IBAction func saveAllDocuments(_ sender: Any?)
  var hasEditedDocuments: Bool { get }
  func reviewUnsavedDocuments(withAlertTitle title: String?, cancellable: Bool, delegate: Any?, didReviewAllSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func closeAllDocuments(withDelegate delegate: Any?, didCloseAllSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.7, *)
  func duplicateDocument(withContentsOf url: URL, copying duplicateByCopying: Bool, displayName displayNameOrNil: String?) throws -> NSDocument
  @available(macOS 10.13, *)
  var allowsAutomaticShareMenu: Bool { get }
  @available(macOS 10.13, *)
  func standardShareMenuItem() -> NSMenuItem
  func presentError(_ error: Error, modalFor window: NSWindow, delegate: Any?, didPresent didPresentSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func presentError(_ error: Error) -> Bool
  func willPresentError(_ error: Error) -> Error
  var maximumRecentDocumentCount: Int { get }
  @IBAction func clearRecentDocuments(_ sender: Any?)
  func noteNewRecentDocument(_ document: NSDocument)
  func noteNewRecentDocumentURL(_ url: URL)
  var recentDocumentURLs: [URL] { get }
  var defaultType: String? { get }
  func typeForContents(of url: URL) throws -> String
  var documentClassNames: [String] { get }
  func documentClass(forType typeName: String) -> AnyClass?
  func displayName(forType typeName: String) -> String?
}
extension NSDocumentController {
}
