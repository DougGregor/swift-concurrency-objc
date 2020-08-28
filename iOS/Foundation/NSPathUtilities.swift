
extension NSString {
  class func path(withComponents components: [String]) -> String
  var pathComponents: [String] { get }
  var isAbsolutePath: Bool { get }
  var lastPathComponent: String { get }
  var deletingLastPathComponent: String { get }
  func appendingPathComponent(_ str: String) -> String
  var pathExtension: String { get }
  var deletingPathExtension: String { get }
  func appendingPathExtension(_ str: String) -> String?
  var abbreviatingWithTildeInPath: String { get }
  var expandingTildeInPath: String { get }
  var standardizingPath: String { get }
  var resolvingSymlinksInPath: String { get }
  func strings(byAppendingPaths paths: [String]) -> [String]
  func completePath(into outputName: AutoreleasingUnsafeMutablePointer<NSString?>?, caseSensitive flag: Bool, matchesInto outputArray: AutoreleasingUnsafeMutablePointer<NSArray?>?, filterTypes: [String]?) -> Int
  var fileSystemRepresentation: UnsafePointer<CChar> { get }
  func getFileSystemRepresentation(_ cname: UnsafeMutablePointer<CChar>, maxLength max: Int) -> Bool
}
extension NSArray {
  func pathsMatchingExtensions(_ filterTypes: [String]) -> [String]
}
func NSUserName() -> String
func NSFullUserName() -> String
func NSHomeDirectory() -> String
func NSHomeDirectoryForUser(_ userName: String?) -> String?
func NSTemporaryDirectory() -> String
func NSOpenStepRootDirectory() -> String
extension FileManager {
  enum SearchPathDirectory : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case applicationDirectory
    case demoApplicationDirectory
    case developerApplicationDirectory
    case adminApplicationDirectory
    case libraryDirectory
    case developerDirectory
    case userDirectory
    case documentationDirectory
    case documentDirectory
    case coreServiceDirectory
    @available(iOS 4.0, *)
    case autosavedInformationDirectory
    case desktopDirectory
    case cachesDirectory
    case applicationSupportDirectory
    @available(iOS 2.0, *)
    case downloadsDirectory
    @available(iOS 4.0, *)
    case inputMethodsDirectory
    @available(iOS 4.0, *)
    case moviesDirectory
    @available(iOS 4.0, *)
    case musicDirectory
    @available(iOS 4.0, *)
    case picturesDirectory
    @available(iOS 4.0, *)
    case printerDescriptionDirectory
    @available(iOS 4.0, *)
    case sharedPublicDirectory
    @available(iOS 4.0, *)
    case preferencePanesDirectory
    @available(iOS 4.0, *)
    case itemReplacementDirectory
    case allApplicationsDirectory
    case allLibrariesDirectory
    @available(iOS 11.0, *)
    case trashDirectory
  }
  struct SearchPathDomainMask : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var userDomainMask: FileManager.SearchPathDomainMask { get }
    static var localDomainMask: FileManager.SearchPathDomainMask { get }
    static var networkDomainMask: FileManager.SearchPathDomainMask { get }
    static var systemDomainMask: FileManager.SearchPathDomainMask { get }
    static var allDomainsMask: FileManager.SearchPathDomainMask { get }
  }
}
func NSSearchPathForDirectoriesInDomains(_ directory: FileManager.SearchPathDirectory, _ domainMask: FileManager.SearchPathDomainMask, _ expandTilde: Bool) -> [String]
