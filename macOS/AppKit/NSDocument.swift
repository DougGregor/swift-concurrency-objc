
extension NSDocument {
  enum ChangeType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case changeDone
    case changeUndone
    @available(macOS 10.5, *)
    case changeRedone
    case changeCleared
    case changeReadOtherContents
    case changeAutosaved
    @available(macOS 10.7, *)
    case changeDiscardable
  }
  enum SaveOperationType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case saveOperation
    case saveAsOperation
    case saveToOperation
    @available(macOS 10.7, *)
    case autosaveInPlaceOperation
    @available(macOS 10.7, *)
    case autosaveElsewhereOperation
    @available(macOS 10.8, *)
    case autosaveAsOperation
  }
}
class NSDocument : NSObject, NSEditorRegistration, NSFilePresenter, NSMenuItemValidation, NSUserInterfaceValidations {
  convenience init(type typeName: String) throws
  @available(macOS 10.6, *)
  class func canConcurrentlyReadDocuments(ofType typeName: String) -> Bool
  convenience init(contentsOf url: URL, ofType typeName: String) throws
  convenience init(for urlOrNil: URL?, withContentsOf contentsURL: URL, ofType typeName: String) throws
  var fileType: String?
  var fileURL: URL?
  var fileModificationDate: Date?
  @available(macOS 10.8, *)
  var isDraft: Bool
  @available(macOS 10.7, *)
  func performActivity(withSynchronousWaiting waitSynchronously: Bool, using block: @escaping (@escaping () -> Void) -> Void)
  @available(macOS 10.7, *)
  func continueActivity(_ block: () -> Void)
  @available(macOS 10.7, *)
  func continueAsynchronousWorkOnMainThread(_ block: @escaping () -> Void)
  @available(macOS 10.7, *)
  func performSynchronousFileAccess(_ block: () -> Void)
  @available(macOS 10.7, *)
  func performAsynchronousFileAccess(_ block: @escaping (@escaping () -> Void) -> Void)
  @IBAction func revertToSaved(_ sender: Any?)
  func revert(toContentsOf url: URL, ofType typeName: String) throws
  func read(from url: URL, ofType typeName: String) throws
  func read(from fileWrapper: FileWrapper, ofType typeName: String) throws
  func read(from data: Data, ofType typeName: String) throws
  @available(macOS 10.7, *)
  var isEntireFileLoaded: Bool { get }
  func write(to url: URL, ofType typeName: String) throws
  func fileWrapper(ofType typeName: String) throws -> FileWrapper
  func data(ofType typeName: String) throws -> Data
  @available(macOS 10.7, *)
  func unblockUserInteraction()
  @available(macOS 10.7, *)
  var autosavingIsImplicitlyCancellable: Bool { get }
  func writeSafely(to url: URL, ofType typeName: String, for saveOperation: NSDocument.SaveOperationType) throws
  func write(to url: URL, ofType typeName: String, for saveOperation: NSDocument.SaveOperationType, originalContentsURL absoluteOriginalContentsURL: URL?) throws
  func fileAttributesToWrite(to url: URL, ofType typeName: String, for saveOperation: NSDocument.SaveOperationType, originalContentsURL absoluteOriginalContentsURL: URL?) throws -> [String : Any]
  var keepBackupFile: Bool { get }
  @available(macOS 10.8, *)
  var backupFileURL: URL? { get }
  @IBAction func save(_ sender: Any?)
  @IBAction func saveAs(_ sender: Any?)
  @IBAction func saveTo(_ sender: Any?)
  func save(withDelegate delegate: Any?, didSave didSaveSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func runModalSavePanel(for saveOperation: NSDocument.SaveOperationType, delegate: Any?, didSave didSaveSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  var shouldRunSavePanelWithAccessoryView: Bool { get }
  func prepareSavePanel(_ savePanel: NSSavePanel) -> Bool
  var fileNameExtensionWasHiddenInLastRunSavePanel: Bool { get }
  var fileTypeFromLastRunSavePanel: String? { get }
  func save(to url: URL, ofType typeName: String, for saveOperation: NSDocument.SaveOperationType, delegate: Any?, didSave didSaveSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.7, *)
  func save(to url: URL, ofType typeName: String, for saveOperation: NSDocument.SaveOperationType, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.7, *)
  func save(to url: URL, ofType typeName: String, for saveOperation: NSDocument.SaveOperationType) async throws
  @available(macOS 10.7, *)
  func canAsynchronouslyWrite(to url: URL, ofType typeName: String, for saveOperation: NSDocument.SaveOperationType) -> Bool
  @available(macOS 10.7, *)
  func checkAutosavingSafety() throws
  @available(macOS 10.7, *)
  func scheduleAutosaving()
  var hasUnautosavedChanges: Bool { get }
  func autosave(withDelegate delegate: Any?, didAutosave didAutosaveSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.7, *)
  func autosave(withImplicitCancellability autosavingIsImplicitlyCancellable: Bool, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.7, *)
  func autosave(withImplicitCancellability autosavingIsImplicitlyCancellable: Bool) async throws
  @available(macOS 10.7, *)
  class var autosavesInPlace: Bool { get }
  @available(macOS 10.7, *)
  class var preservesVersions: Bool { get }
  @available(macOS 10.8, *)
  @IBAction func browseVersions(_ sender: Any?)
  @available(macOS 10.12, *)
  var isBrowsingVersions: Bool { get }
  @available(macOS 10.12, *)
  func stopBrowsingVersions(completionHandler: (() -> Void)? = nil)
  @available(macOS 10.12, *)
  func stopBrowsingVersionsAsync() async
  @available(macOS 10.8, *)
  class var autosavesDrafts: Bool { get }
  var autosavingFileType: String? { get }
  var autosavedContentsFileURL: URL?
  func canClose(withDelegate delegate: Any, shouldClose shouldCloseSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func close()
  @available(macOS 10.7, *)
  @IBAction func duplicate(_ sender: Any?)
  @available(macOS 10.7, *)
  func duplicate(withDelegate delegate: Any?, didDuplicate didDuplicateSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.7, *)
  func duplicate() throws -> NSDocument
  @available(macOS 10.8, *)
  @IBAction func rename(_ sender: Any?)
  @available(macOS 10.8, *)
  @IBAction func moveToUbiquityContainer(_ sender: Any?)
  @available(macOS 10.8, *)
  @IBAction func move(_ sender: Any?)
  @available(macOS 10.8, *)
  func move(completionHandler: ((Bool) -> Void)? = nil)
  @available(macOS 10.8, *)
  func moveAsync() async -> Bool
  @available(macOS 10.8, *)
  func move(to url: URL, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.8, *)
  func moveAsync(to url: URL) async throws
  @available(macOS 10.8, *)
  @IBAction func lock(_ sender: Any?)
  @available(macOS 10.8, *)
  @IBAction func unlock(_ sender: Any?)
  @available(macOS 10.8, *)
  func lock(completionHandler: ((Bool) -> Void)? = nil)
  @available(macOS 10.8, *)
  func lockAsync() async -> Bool
  @available(macOS 10.8, *)
  func lock(completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.8, *)
  func lockAsync() async throws
  @available(macOS 10.8, *)
  func unlock(completionHandler: ((Bool) -> Void)? = nil)
  @available(macOS 10.8, *)
  func unlockAsync() async -> Bool
  @available(macOS 10.8, *)
  func unlock(completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.8, *)
  func unlockAsync() async throws
  @available(macOS 10.8, *)
  var isLocked: Bool { get }
  @IBAction func runPageLayout(_ sender: Any?)
  func runModalPageLayout(with printInfo: NSPrintInfo, delegate: Any?, didRun didRunSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func preparePageLayout(_ pageLayout: NSPageLayout) -> Bool
  func shouldChangePrintInfo(_ newPrintInfo: NSPrintInfo) -> Bool
  @NSCopying var printInfo: NSPrintInfo
  @IBAction func printDocument(_ sender: Any?)
  func print(withSettings printSettings: [NSPrintInfo.AttributeKey : Any], showPrintPanel: Bool, delegate: Any?, didPrint didPrintSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func printOperation(withSettings printSettings: [NSPrintInfo.AttributeKey : Any]) throws -> NSPrintOperation
  func runModalPrintOperation(_ printOperation: NSPrintOperation, delegate: Any?, didRun didRunSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.9, *)
  @IBAction func saveToPDF(_ sender: Any?)
  @available(macOS 10.9, *)
  var pdfPrintOperation: NSPrintOperation { get }
  @available(macOS 10.13, *)
  var allowsDocumentSharing: Bool { get }
  @available(macOS 10.13, *)
  func share(with sharingService: NSSharingService, completionHandler: ((Bool) -> Void)? = nil)
  @available(macOS 10.13, *)
  func shareAsync(with sharingService: NSSharingService) async -> Bool
  @available(macOS 10.13, *)
  func prepare(_ sharingServicePicker: NSSharingServicePicker)
  var isDocumentEdited: Bool { get }
  @available(macOS 10.7, *)
  var isInViewingMode: Bool { get }
  func updateChangeCount(_ change: NSDocument.ChangeType)
  @available(macOS 10.7, *)
  func changeCountToken(for saveOperation: NSDocument.SaveOperationType) -> Any
  @available(macOS 10.7, *)
  func updateChangeCount(withToken changeCountToken: Any, for saveOperation: NSDocument.SaveOperationType)
  var undoManager: UndoManager?
  var hasUndoManager: Bool
  func presentError(_ error: Error, modalFor window: NSWindow, delegate: Any?, didPresent didPresentSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func presentError(_ error: Error) -> Bool
  func willPresentError(_ error: Error) -> Error
  @available(macOS 10.7, *)
  func willNotPresentError(_ error: Error)
  func makeWindowControllers()
  var windowNibName: NSNib.Name? { get }
  func windowControllerWillLoadNib(_ windowController: NSWindowController)
  func windowControllerDidLoadNib(_ windowController: NSWindowController)
  func setWindow(_ window: NSWindow?)
  func addWindowController(_ windowController: NSWindowController)
  func removeWindowController(_ windowController: NSWindowController)
  func showWindows()
  var windowControllers: [NSWindowController] { get }
  func shouldCloseWindowController(_ windowController: NSWindowController, delegate: Any?, shouldClose shouldCloseSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  var displayName: String!
  @available(macOS 10.8, *)
  func defaultDraftName() -> String
  var windowForSheet: NSWindow? { get }
  class var readableTypes: [String] { get }
  class var writableTypes: [String] { get }
  class func isNativeType(_ type: String) -> Bool
  func writableTypes(for saveOperation: NSDocument.SaveOperationType) -> [String]
  @available(macOS 10.5, *)
  func fileNameExtension(forType typeName: String, saveOperation: NSDocument.SaveOperationType) -> String?
  @available(macOS 10.8, *)
  class var usesUbiquitousStorage: Bool { get }
}
extension NSDocument {
}
