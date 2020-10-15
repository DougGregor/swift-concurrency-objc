
struct FileAttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct FileAttributeType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct FileProtectionType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct NSFileProviderServiceName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
var NSFoundationVersionWithFileManagerResourceForkSupport: Int32 { get }
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let NSUbiquityIdentityDidChange: NSNotification.Name
}
class FileManager : NSObject {
  class var `default`: FileManager { get }
  @available(watchOS 2.0, *)
  func mountedVolumeURLs(includingResourceValuesForKeys propertyKeys: [URLResourceKey]?, options: FileManager.VolumeEnumerationOptions = []) -> [URL]?
  @available(watchOS 2.0, *)
  func contentsOfDirectory(at url: URL, includingPropertiesForKeys keys: [URLResourceKey]?, options mask: FileManager.DirectoryEnumerationOptions = []) throws -> [URL]
  @available(watchOS 2.0, *)
  func urls(for directory: FileManager.SearchPathDirectory, in domainMask: FileManager.SearchPathDomainMask) -> [URL]
  @available(watchOS 2.0, *)
  func url(for directory: FileManager.SearchPathDirectory, in domain: FileManager.SearchPathDomainMask, appropriateFor url: URL?, create shouldCreate: Bool) throws -> URL
  @available(watchOS 2.0, *)
  func getRelationship(_ outRelationship: UnsafeMutablePointer<FileManager.URLRelationship>, ofDirectoryAt directoryURL: URL, toItemAt otherURL: URL) throws
  @available(watchOS 2.0, *)
  func getRelationship(_ outRelationship: UnsafeMutablePointer<FileManager.URLRelationship>, of directory: FileManager.SearchPathDirectory, in domainMask: FileManager.SearchPathDomainMask, toItemAt url: URL) throws
  @available(watchOS 2.0, *)
  func createDirectory(at url: URL, withIntermediateDirectories createIntermediates: Bool, attributes: [FileAttributeKey : Any]? = nil) throws
  @available(watchOS 2.0, *)
  func createSymbolicLink(at url: URL, withDestinationURL destURL: URL) throws
  @available(watchOS 2.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged FileManagerDelegate?
  @available(watchOS 2.0, *)
  func setAttributes(_ attributes: [FileAttributeKey : Any], ofItemAtPath path: String) throws
  @available(watchOS 2.0, *)
  func createDirectory(atPath path: String, withIntermediateDirectories createIntermediates: Bool, attributes: [FileAttributeKey : Any]? = nil) throws
  @available(watchOS 2.0, *)
  func contentsOfDirectory(atPath path: String) throws -> [String]
  @available(watchOS 2.0, *)
  func subpathsOfDirectory(atPath path: String) throws -> [String]
  @available(watchOS 2.0, *)
  func attributesOfItem(atPath path: String) throws -> [FileAttributeKey : Any]
  @available(watchOS 2.0, *)
  func attributesOfFileSystem(forPath path: String) throws -> [FileAttributeKey : Any]
  @available(watchOS 2.0, *)
  func createSymbolicLink(atPath path: String, withDestinationPath destPath: String) throws
  @available(watchOS 2.0, *)
  func destinationOfSymbolicLink(atPath path: String) throws -> String
  @available(watchOS 2.0, *)
  func copyItem(atPath srcPath: String, toPath dstPath: String) throws
  @available(watchOS 2.0, *)
  func moveItem(atPath srcPath: String, toPath dstPath: String) throws
  @available(watchOS 2.0, *)
  func linkItem(atPath srcPath: String, toPath dstPath: String) throws
  @available(watchOS 2.0, *)
  func removeItem(atPath path: String) throws
  @available(watchOS 2.0, *)
  func copyItem(at srcURL: URL, to dstURL: URL) throws
  @available(watchOS 2.0, *)
  func moveItem(at srcURL: URL, to dstURL: URL) throws
  @available(watchOS 2.0, *)
  func linkItem(at srcURL: URL, to dstURL: URL) throws
  @available(watchOS 2.0, *)
  func removeItem(at URL: URL) throws
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -attributesOfItemAtPath:error: instead")
  func fileAttributes(atPath path: String, traverseLink yorn: Bool) -> [AnyHashable : Any]?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -setAttributes:ofItemAtPath:error: instead")
  func changeFileAttributes(_ attributes: [AnyHashable : Any] = [:], atPath path: String) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -contentsOfDirectoryAtPath:error: instead")
  func directoryContents(atPath path: String) -> [Any]?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -attributesOfFileSystemForPath:error: instead")
  func fileSystemAttributes(atPath path: String) -> [AnyHashable : Any]?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -destinationOfSymbolicLinkAtPath:error:")
  func pathContentOfSymbolicLink(atPath path: String) -> String?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -createSymbolicLinkAtPath:error: instead")
  func createSymbolicLink(atPath path: String, pathContent otherpath: String) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -createDirectoryAtPath:withIntermediateDirectories:attributes:error: instead")
  func createDirectory(atPath path: String, attributes: [AnyHashable : Any] = [:]) -> Bool
  var currentDirectoryPath: String { get }
  func changeCurrentDirectoryPath(_ path: String) -> Bool
  func fileExists(atPath path: String) -> Bool
  func fileExists(atPath path: String, isDirectory: UnsafeMutablePointer<ObjCBool>?) -> Bool
  func isReadableFile(atPath path: String) -> Bool
  func isWritableFile(atPath path: String) -> Bool
  func isExecutableFile(atPath path: String) -> Bool
  func isDeletableFile(atPath path: String) -> Bool
  func contentsEqual(atPath path1: String, andPath path2: String) -> Bool
  func displayName(atPath path: String) -> String
  func componentsToDisplay(forPath path: String) -> [String]?
  func enumerator(atPath path: String) -> FileManager.DirectoryEnumerator?
  @available(watchOS 2.0, *)
  func __enumerator(at url: URL, includingPropertiesForKeys keys: [URLResourceKey]?, options mask: FileManager.DirectoryEnumerationOptions = [], errorHandler handler: ((URL, Error) -> Bool)? = nil) -> FileManager.DirectoryEnumerator?
  func subpaths(atPath path: String) -> [String]?
  func contents(atPath path: String) -> Data?
  func createFile(atPath path: String, contents data: Data?, attributes attr: [FileAttributeKey : Any]? = nil) -> Bool
  func fileSystemRepresentation(withPath path: String) -> UnsafePointer<CChar>
  func string(withFileSystemRepresentation str: UnsafePointer<CChar>, length len: Int) -> String
  @available(watchOS 2.0, *)
  func replaceItem(at originalItemURL: URL, withItemAt newItemURL: URL, backupItemName: String?, options: FileManager.ItemReplacementOptions = [], resultingItemURL resultingURL: AutoreleasingUnsafeMutablePointer<NSURL?>?) throws
  @available(watchOS 2.0, *)
  func setUbiquitous(_ flag: Bool, itemAt url: URL, destinationURL: URL) throws
  @available(watchOS 2.0, *)
  func isUbiquitousItem(at url: URL) -> Bool
  @available(watchOS 2.0, *)
  func startDownloadingUbiquitousItem(at url: URL) throws
  @available(watchOS 2.0, *)
  func evictUbiquitousItem(at url: URL) throws
  @available(watchOS 2.0, *)
  func url(forUbiquityContainerIdentifier containerIdentifier: String?) -> URL?
  @available(watchOS 2.0, *)
  func url(forPublishingUbiquitousItemAt url: URL, expiration outDate: AutoreleasingUnsafeMutablePointer<NSDate?>?) throws -> URL
  @available(watchOS 2.0, *)
  @NSCopying var ubiquityIdentityToken: (NSCoding & NSCopying & NSObjectProtocol)? { get }
  @available(watchOS 2.0, *)
  func containerURL(forSecurityApplicationGroupIdentifier groupIdentifier: String) -> URL?
}

extension FileManager {
  @available(*, deprecated, renamed: "replaceItemAt(_:withItemAt:backupItemName:options:)")
  func replaceItemAtURL(originalItemURL: NSURL, withItemAtURL newItemURL: NSURL, backupItemName: String? = nil, options: FileManager.ItemReplacementOptions = []) throws -> NSURL?
  @available(swift 4)
  @available(macOS 10.6, iOS 4.0, *)
  func replaceItemAt(_ originalItemURL: URL, withItemAt newItemURL: URL, backupItemName: String? = nil, options: FileManager.ItemReplacementOptions = []) throws -> URL?
  @available(macOS 10.6, iOS 4.0, *)
  @nonobjc func enumerator(at url: URL, includingPropertiesForKeys keys: [URLResourceKey]?, options mask: FileManager.DirectoryEnumerationOptions = [], errorHandler handler: ((URL, Error) -> Bool)? = nil) -> FileManager.DirectoryEnumerator?
}
extension FileManager {
  @available(watchOS 3.0, *)
  var temporaryDirectory: URL { get }
}
extension NSObject {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: " Handler API no longer supported")
  class func fileManager(_ fm: FileManager, shouldProceedAfterError errorInfo: [AnyHashable : Any]) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: " Handler API no longer supported")
  func fileManager(_ fm: FileManager, shouldProceedAfterError errorInfo: [AnyHashable : Any]) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Handler API no longer supported")
  class func fileManager(_ fm: FileManager, willProcessPath path: String)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Handler API no longer supported")
  func fileManager(_ fm: FileManager, willProcessPath path: String)
}
protocol FileManagerDelegate : NSObjectProtocol {
  optional func fileManager(_ fileManager: FileManager, shouldCopyItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: FileManager, shouldCopyItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(_ fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: FileManager, shouldProceedAfterError error: Error, copyingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(_ fileManager: FileManager, shouldMoveItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: FileManager, shouldMoveItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(_ fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: FileManager, shouldProceedAfterError error: Error, movingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(_ fileManager: FileManager, shouldLinkItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: FileManager, shouldLinkItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(_ fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAtPath srcPath: String, toPath dstPath: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: FileManager, shouldProceedAfterError error: Error, linkingItemAt srcURL: URL, to dstURL: URL) -> Bool
  optional func fileManager(_ fileManager: FileManager, shouldRemoveItemAtPath path: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: FileManager, shouldRemoveItemAt URL: URL) -> Bool
  optional func fileManager(_ fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAtPath path: String) -> Bool
  @available(watchOS 2.0, *)
  optional func fileManager(_ fileManager: FileManager, shouldProceedAfterError error: Error, removingItemAt URL: URL) -> Bool
}
extension FileManager {
  class DirectoryEnumerator : NSEnumerator {
    var fileAttributes: [FileAttributeKey : Any]? { get }
    var directoryAttributes: [FileAttributeKey : Any]? { get }
    @available(watchOS 6.0, *)
    var isEnumeratingDirectoryPostOrder: Bool { get }
    func skipDescendents()
    @available(watchOS 2.0, *)
    var level: Int { get }
    @available(watchOS 2.0, *)
    func skipDescendants()
  }
  @available(watchOS 2.0, *)
  struct VolumeEnumerationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var skipHiddenVolumes: FileManager.VolumeEnumerationOptions { get }
    static var produceFileReferenceURLs: FileManager.VolumeEnumerationOptions { get }
  }
  @available(watchOS 2.0, *)
  struct DirectoryEnumerationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var skipsSubdirectoryDescendants: FileManager.DirectoryEnumerationOptions { get }
    static var skipsPackageDescendants: FileManager.DirectoryEnumerationOptions { get }
    static var skipsHiddenFiles: FileManager.DirectoryEnumerationOptions { get }
    @available(watchOS 6.0, *)
    static var includesDirectoriesPostOrder: FileManager.DirectoryEnumerationOptions { get }
    @available(watchOS 6.0, *)
    static var producesRelativePathURLs: FileManager.DirectoryEnumerationOptions { get }
  }
  @available(watchOS 2.0, *)
  struct ItemReplacementOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var usingNewMetadataOnly: FileManager.ItemReplacementOptions { get }
    static var withoutDeletingBackupItem: FileManager.ItemReplacementOptions { get }
  }
  @available(watchOS 2.0, *)
  enum URLRelationship : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case contains
    case same
    case other
  }
}
extension FileAttributeKey {
  static let type: FileAttributeKey
  static let size: FileAttributeKey
  static let modificationDate: FileAttributeKey
  static let referenceCount: FileAttributeKey
  static let deviceIdentifier: FileAttributeKey
  static let ownerAccountName: FileAttributeKey
  static let groupOwnerAccountName: FileAttributeKey
  static let posixPermissions: FileAttributeKey
  static let systemNumber: FileAttributeKey
  static let systemFileNumber: FileAttributeKey
  static let extensionHidden: FileAttributeKey
  static let hfsCreatorCode: FileAttributeKey
  static let hfsTypeCode: FileAttributeKey
  static let immutable: FileAttributeKey
  static let appendOnly: FileAttributeKey
  static let creationDate: FileAttributeKey
  static let ownerAccountID: FileAttributeKey
  static let groupOwnerAccountID: FileAttributeKey
  static let busy: FileAttributeKey
  @available(watchOS 2.0, *)
  static let protectionKey: FileAttributeKey
  static let systemSize: FileAttributeKey
  static let systemFreeSize: FileAttributeKey
  static let systemNodes: FileAttributeKey
  static let systemFreeNodes: FileAttributeKey
}
extension FileAttributeType {
  static let typeDirectory: FileAttributeType
  static let typeRegular: FileAttributeType
  static let typeSymbolicLink: FileAttributeType
  static let typeSocket: FileAttributeType
  static let typeCharacterSpecial: FileAttributeType
  static let typeBlockSpecial: FileAttributeType
  static let typeUnknown: FileAttributeType
}
extension FileProtectionType {
  @available(watchOS 2.0, *)
  static let none: FileProtectionType
  @available(watchOS 2.0, *)
  static let complete: FileProtectionType
  @available(watchOS 2.0, *)
  static let completeUnlessOpen: FileProtectionType
  @available(watchOS 2.0, *)
  static let completeUntilFirstUserAuthentication: FileProtectionType
}
extension NSDictionary {
  func fileSize() -> UInt64
  func fileModificationDate() -> Date?
  func fileType() -> String?
  func filePosixPermissions() -> Int
  func fileOwnerAccountName() -> String?
  func fileGroupOwnerAccountName() -> String?
  func fileSystemNumber() -> Int
  func fileSystemFileNumber() -> Int
  func fileExtensionHidden() -> Bool
  func fileHFSCreatorCode() -> OSType
  func fileHFSTypeCode() -> OSType
  func fileIsImmutable() -> Bool
  func fileIsAppendOnly() -> Bool
  func fileCreationDate() -> Date?
  func fileOwnerAccountID() -> NSNumber?
  func fileGroupOwnerAccountID() -> NSNumber?
}
