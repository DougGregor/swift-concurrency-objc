
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
@available(iOS 5.0, *)
class NSFileVersion : NSObject {
  class func currentVersionOfItem(at url: URL) -> NSFileVersion?
  class func otherVersionsOfItem(at url: URL) -> [NSFileVersion]?
  class func unresolvedConflictVersionsOfItem(at url: URL) -> [NSFileVersion]?
  @available(iOS 8.0, *)
  class func getNonlocalVersionsOfItem(at url: URL, completionHandler: @escaping ([NSFileVersion]?, Error?) -> Void)
  @available(iOS 8.0, *)
  class func nonlocalVersionsOfItem(at url: URL) async throws -> [NSFileVersion]?
  class func version(itemAt url: URL, forPersistentIdentifier persistentIdentifier: Any) -> NSFileVersion?
  var url: URL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @available(iOS 10.0, *)
  var originatorNameComponents: PersonNameComponents? { get }
  var modificationDate: Date? { get }
  var persistentIdentifier: NSCoding { get }
  var isConflict: Bool { get }
  var isResolved: Bool
  @available(iOS 8.0, *)
  var hasLocalContents: Bool { get }
  @available(iOS 8.0, *)
  var hasThumbnail: Bool { get }
  func replaceItem(at url: URL, options: NSFileVersion.ReplacingOptions = []) throws -> URL
  func remove() throws
  class func removeOtherVersionsOfItem(at url: URL) throws
}
