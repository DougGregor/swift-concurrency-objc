
extension NSFileVersion {
  struct AddingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var byMoving: NSFileVersion.AddingOptions { get }
  }
  struct ReplacingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var byMoving: NSFileVersion.ReplacingOptions { get }
  }
}
@available(macOS 10.7, *)
class NSFileVersion : NSObject {
  class func currentVersionOfItem(at url: URL) -> NSFileVersion?
  class func otherVersionsOfItem(at url: URL) -> [NSFileVersion]?
  class func unresolvedConflictVersionsOfItem(at url: URL) -> [NSFileVersion]?
  @available(macOS 10.10, *)
  class func getNonlocalVersionsOfItem(at url: URL, completionHandler: @escaping ([NSFileVersion]?, Error?) -> Void)
  @available(macOS 10.10, *)
  class func nonlocalVersionsOfItem(at url: URL) async throws -> [NSFileVersion]?
  class func version(itemAt url: URL, forPersistentIdentifier persistentIdentifier: Any) -> NSFileVersion?
  @available(macOS 10.7, *)
  class func addOfItem(at url: URL, withContentsOf contentsURL: URL, options: NSFileVersion.AddingOptions = []) throws -> NSFileVersion
  @available(macOS 10.7, *)
  class func temporaryDirectoryURLForNewVersionOfItem(at url: URL) -> URL
  var url: URL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @available(macOS 10.12, *)
  var originatorNameComponents: PersonNameComponents? { get }
  var modificationDate: Date? { get }
  var persistentIdentifier: NSCoding { get }
  var isConflict: Bool { get }
  var isResolved: Bool
  @available(macOS 10.7, *)
  var isDiscardable: Bool
  @available(macOS 10.10, *)
  var hasLocalContents: Bool { get }
  @available(macOS 10.10, *)
  var hasThumbnail: Bool { get }
  func replaceItem(at url: URL, options: NSFileVersion.ReplacingOptions = []) throws -> URL
  func remove() throws
  class func removeOtherVersionsOfItem(at url: URL) throws
}
