
@available(iOS 5.0, *)
class UIDocument : NSObject, NSFilePresenter, ProgressReporting {
  init(fileURL url: URL)
  var fileURL: URL { get }
  var localizedName: String { get }
  var fileType: String? { get }
  var fileModificationDate: Date?
  var documentState: UIDocument.State { get }
  func open(completionHandler: ((Bool) -> Void)? = nil)
  func openAsync() async -> Bool
  func close(completionHandler: ((Bool) -> Void)? = nil)
  func closeAsync() async -> Bool
  func load(fromContents contents: Any, ofType typeName: String?) throws
  func contents(forType typeName: String) throws -> Any
  func disableEditing()
  func enableEditing()
  var undoManager: UndoManager!
  var hasUnsavedChanges: Bool { get }
  func updateChangeCount(_ change: UIDocument.ChangeKind)
  func changeCountToken(for saveOperation: UIDocument.SaveOperation) -> Any
  func updateChangeCount(withToken changeCountToken: Any, for saveOperation: UIDocument.SaveOperation)
  func save(to url: URL, for saveOperation: UIDocument.SaveOperation, completionHandler: ((Bool) -> Void)? = nil)
  func saveAsync(to url: URL, for saveOperation: UIDocument.SaveOperation) async -> Bool
  func autosave(completionHandler: ((Bool) -> Void)? = nil)
  func autosaveAsync() async -> Bool
  var savingFileType: String? { get }
  func fileNameExtension(forType typeName: String?, saveOperation: UIDocument.SaveOperation) -> String
  func writeContents(_ contents: Any, andAttributes additionalFileAttributes: [AnyHashable : Any]? = nil, safelyTo url: URL, for saveOperation: UIDocument.SaveOperation) throws
  func writeContents(_ contents: Any, to url: URL, for saveOperation: UIDocument.SaveOperation, originalContentsURL: URL?) throws
  func fileAttributesToWrite(to url: URL, for saveOperation: UIDocument.SaveOperation) throws -> [AnyHashable : Any]
  func read(from url: URL) throws
  func performAsynchronousFileAccess(_ block: @escaping () -> Void)
  func handleError(_ error: Error, userInteractionPermitted: Bool)
  func finishedHandlingError(_ error: Error, recovered: Bool)
  func userInteractionNoLongerPermitted(forError error: Error)
  func revert(toContentsOf url: URL, completionHandler: ((Bool) -> Void)? = nil)
  func revertAsync(toContentsOf url: URL) async -> Bool
}
extension UIDocument {
  @available(iOS 8.0, *)
  class let userActivityURLKey: String
  enum ChangeKind : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case done
    case undone
    case redone
    case cleared
  }
  enum SaveOperation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case forCreating
    case forOverwriting
  }
  struct State : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var normal: UIDocument.State { get }
    static var closed: UIDocument.State { get }
    static var inConflict: UIDocument.State { get }
    static var savingError: UIDocument.State { get }
    static var editingDisabled: UIDocument.State { get }
    static var progressAvailable: UIDocument.State { get }
  }
  @available(iOS 5.0, *)
  class let stateChangedNotification: NSNotification.Name
}
extension UIDocument : UIUserActivityRestoring {
  @available(iOS 8.0, *)
  var userActivity: NSUserActivity?
  @available(iOS 8.0, *)
  func updateUserActivityState(_ userActivity: NSUserActivity)
}
