
struct URLResourceKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
class NSURL : NSObject, NSSecureCoding, NSCopying {
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(iOS 9.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(iOS 9.0, *)
  init(fileURLWithPath path: String, relativeTo baseURL: URL?)
  @available(iOS 2.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(iOS 9.0, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  @available(iOS 9.0, *)
  class func fileURL(withPath path: String, relativeTo baseURL: URL?) -> URL
  @available(iOS 2.0, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool) -> URL
  class func fileURL(withPath path: String) -> URL
  @available(iOS 7.0, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<CChar>, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(iOS 7.0, *)
  class func fileURL(withFileSystemRepresentation path: UnsafePointer<CChar>, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: URL?)
  @available(iOS 9.0, *)
  init(dataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(iOS 9.0, *)
  init(absoluteURLWithDataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(iOS 9.0, *)
  class func absoluteURL(withDataRepresentation data: Data, relativeTo baseURL: URL?) -> URL
  @available(iOS 9.0, *)
  var dataRepresentation: Data { get }
  var absoluteString: String? { get }
  var relativeString: String { get }
  var baseURL: URL? { get }
  var absoluteURL: URL? { get }
  var scheme: String? { get }
  var resourceSpecifier: String? { get }
  var host: String? { get }
  @NSCopying var port: NSNumber? { get }
  var user: String? { get }
  var password: String? { get }
  var path: String? { get }
  var fragment: String? { get }
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "The parameterString method is deprecated. Post deprecation for applications linked with or after the macOS 10.15, and for all iOS, watchOS, and tvOS applications, parameterString will always return nil, and the path method will return the complete path including the semicolon separator and params component if the URL string contains them.")
  var parameterString: String? { get }
  var query: String? { get }
  var relativePath: String? { get }
  @available(iOS 9.0, *)
  var hasDirectoryPath: Bool { get }
  @available(iOS 7.0, *)
  func getFileSystemRepresentation(_ buffer: UnsafeMutablePointer<CChar>, maxLength maxBufferLength: Int) -> Bool
  @available(iOS 7.0, *)
  var fileSystemRepresentation: UnsafePointer<CChar> { get }
  var isFileURL: Bool { get }
  var standardized: URL? { get }
  @available(iOS 4.0, *)
  func checkResourceIsReachableAndReturnError(_ error: NSErrorPointer) -> Bool
  @available(iOS 4.0, *)
  func isFileReferenceURL() -> Bool
  @available(iOS 4.0, *)
  func fileReferenceURL() -> URL?
  @available(iOS 4.0, *)
  var filePathURL: URL? { get }
  @available(iOS 4.0, *)
  func getResourceValue(_ value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: URLResourceKey) throws
  @available(iOS 4.0, *)
  func resourceValues(forKeys keys: [URLResourceKey]) throws -> [URLResourceKey : Any]
  @available(iOS 4.0, *)
  func setResourceValue(_ value: Any?, forKey key: URLResourceKey) throws
  @available(iOS 4.0, *)
  func setResourceValues(_ keyedValues: [URLResourceKey : Any]) throws
  @available(iOS 7.0, *)
  func removeCachedResourceValue(forKey key: URLResourceKey)
  @available(iOS 7.0, *)
  func removeAllCachedResourceValues()
  @available(iOS 7.0, *)
  func setTemporaryResourceValue(_ value: Any?, forKey key: URLResourceKey)
  @available(iOS 4.0, *)
  func bookmarkData(options: NSURL.BookmarkCreationOptions = [], includingResourceValuesForKeys keys: [URLResourceKey]?, relativeTo relativeURL: URL?) throws -> Data
  @available(iOS 4.0, *)
  convenience init(resolvingBookmarkData bookmarkData: Data, options: NSURL.BookmarkResolutionOptions = [], relativeTo relativeURL: URL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>?) throws
  @available(iOS 4.0, *)
  class func resourceValues(forKeys keys: [URLResourceKey], fromBookmarkData bookmarkData: Data) -> [URLResourceKey : Any]?
  @available(iOS 4.0, *)
  class func writeBookmarkData(_ bookmarkData: Data, to bookmarkFileURL: URL, options: NSURL.BookmarkFileCreationOptions) throws
  @available(iOS 4.0, *)
  class func bookmarkData(withContentsOf bookmarkFileURL: URL) throws -> Data
  @available(iOS 8.0, *)
  convenience init(resolvingAliasFileAt url: URL, options: NSURL.BookmarkResolutionOptions = []) throws
  @available(iOS 8.0, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(iOS 8.0, *)
  func stopAccessingSecurityScopedResource()
}

extension NSURL : _CustomPlaygroundQuickLookable {
}

extension NSURL : _HasCustomAnyHashableRepresentation {
}
let NSURLFileScheme: String
extension URLResourceKey {
  @available(iOS 5.0, *)
  static let keysOfUnsetValuesKey: URLResourceKey
  @available(iOS 4.0, *)
  static let nameKey: URLResourceKey
  @available(iOS 4.0, *)
  static let localizedNameKey: URLResourceKey
  @available(iOS 4.0, *)
  static let isRegularFileKey: URLResourceKey
  @available(iOS 4.0, *)
  static let isDirectoryKey: URLResourceKey
  @available(iOS 4.0, *)
  static let isSymbolicLinkKey: URLResourceKey
  @available(iOS 4.0, *)
  static let isVolumeKey: URLResourceKey
  @available(iOS 4.0, *)
  static let isPackageKey: URLResourceKey
  @available(iOS 9.0, *)
  static let isApplicationKey: URLResourceKey
  @available(iOS 4.0, *)
  static let isSystemImmutableKey: URLResourceKey
  @available(iOS 4.0, *)
  static let isUserImmutableKey: URLResourceKey
  @available(iOS 4.0, *)
  static let isHiddenKey: URLResourceKey
  @available(iOS 4.0, *)
  static let hasHiddenExtensionKey: URLResourceKey
  @available(iOS 4.0, *)
  static let creationDateKey: URLResourceKey
  @available(iOS 4.0, *)
  static let contentAccessDateKey: URLResourceKey
  @available(iOS 4.0, *)
  static let contentModificationDateKey: URLResourceKey
  @available(iOS 4.0, *)
  static let attributeModificationDateKey: URLResourceKey
  @available(iOS 4.0, *)
  static let linkCountKey: URLResourceKey
  @available(iOS 4.0, *)
  static let parentDirectoryURLKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeURLKey: URLResourceKey
  @available(iOS, introduced: 4.0, deprecated: 100000, message: "Use NSURLContentTypeKey instead")
  static let typeIdentifierKey: URLResourceKey
  @available(iOS 14.0, *)
  static let contentTypeKey: URLResourceKey
  @available(iOS 4.0, *)
  static let localizedTypeDescriptionKey: URLResourceKey
  @available(iOS 4.0, *)
  static let labelNumberKey: URLResourceKey
  @available(iOS 4.0, *)
  static let labelColorKey: URLResourceKey
  @available(iOS 4.0, *)
  static let localizedLabelKey: URLResourceKey
  @available(iOS 4.0, *)
  static let effectiveIconKey: URLResourceKey
  @available(iOS 4.0, *)
  static let customIconKey: URLResourceKey
  @available(iOS 5.0, *)
  static let fileResourceIdentifierKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeIdentifierKey: URLResourceKey
  @available(iOS 5.0, *)
  static let preferredIOBlockSizeKey: URLResourceKey
  @available(iOS 5.0, *)
  static let isReadableKey: URLResourceKey
  @available(iOS 5.0, *)
  static let isWritableKey: URLResourceKey
  @available(iOS 5.0, *)
  static let isExecutableKey: URLResourceKey
  @available(iOS 5.0, *)
  static let fileSecurityKey: URLResourceKey
  @available(iOS 5.1, *)
  static let isExcludedFromBackupKey: URLResourceKey
  @available(iOS 6.0, *)
  static let pathKey: URLResourceKey
  @available(iOS 10.0, *)
  static let canonicalPathKey: URLResourceKey
  @available(iOS 5.0, *)
  static let isMountTriggerKey: URLResourceKey
  @available(iOS 8.0, *)
  static let generationIdentifierKey: URLResourceKey
  @available(iOS 8.0, *)
  static let documentIdentifierKey: URLResourceKey
  @available(iOS 8.0, *)
  static let addedToDirectoryDateKey: URLResourceKey
  @available(iOS 5.0, *)
  static let fileResourceTypeKey: URLResourceKey
  @available(iOS 14.0, *)
  static let fileContentIdentifierKey: URLResourceKey
  @available(iOS 14.0, *)
  static let mayShareFileContentKey: URLResourceKey
  @available(iOS 14.0, *)
  static let mayHaveExtendedAttributesKey: URLResourceKey
  @available(iOS 14.0, *)
  static let isPurgeableKey: URLResourceKey
  @available(iOS 14.0, *)
  static let isSparseKey: URLResourceKey
  @available(iOS, introduced: 8.0, deprecated: 100000, message: "Use the QuickLookThumbnailing framework and extension point instead")
  static let thumbnailDictionaryKey: URLResourceKey
  @available(iOS 4.0, *)
  static let fileSizeKey: URLResourceKey
  @available(iOS 4.0, *)
  static let fileAllocatedSizeKey: URLResourceKey
  @available(iOS 5.0, *)
  static let totalFileSizeKey: URLResourceKey
  @available(iOS 5.0, *)
  static let totalFileAllocatedSizeKey: URLResourceKey
  @available(iOS 4.0, *)
  static let isAliasFileKey: URLResourceKey
  @available(iOS 9.0, *)
  static let fileProtectionKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeLocalizedFormatDescriptionKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeTotalCapacityKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeAvailableCapacityKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeResourceCountKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeSupportsPersistentIDsKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeSupportsSymbolicLinksKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeSupportsHardLinksKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeSupportsJournalingKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeIsJournalingKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeSupportsSparseFilesKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeSupportsZeroRunsKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeSupportsCaseSensitiveNamesKey: URLResourceKey
  @available(iOS 4.0, *)
  static let volumeSupportsCasePreservedNamesKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeSupportsRootDirectoryDatesKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeSupportsVolumeSizesKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeSupportsRenamingKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeSupportsAdvisoryFileLockingKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeSupportsExtendedSecurityKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeIsBrowsableKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeMaximumFileSizeKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeIsEjectableKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeIsRemovableKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeIsInternalKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeIsAutomountedKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeIsLocalKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeIsReadOnlyKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeCreationDateKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeURLForRemountingKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeUUIDStringKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeNameKey: URLResourceKey
  @available(iOS 5.0, *)
  static let volumeLocalizedNameKey: URLResourceKey
  @available(iOS 10.0, *)
  static let volumeIsEncryptedKey: URLResourceKey
  @available(iOS 10.0, *)
  static let volumeIsRootFileSystemKey: URLResourceKey
  @available(iOS 10.0, *)
  static let volumeSupportsCompressionKey: URLResourceKey
  @available(iOS 10.0, *)
  static let volumeSupportsFileCloningKey: URLResourceKey
  @available(iOS 10.0, *)
  static let volumeSupportsSwapRenamingKey: URLResourceKey
  @available(iOS 10.0, *)
  static let volumeSupportsExclusiveRenamingKey: URLResourceKey
  @available(iOS 11.0, *)
  static let volumeSupportsImmutableFilesKey: URLResourceKey
  @available(iOS 11.0, *)
  static let volumeSupportsAccessPermissionsKey: URLResourceKey
  @available(iOS 14.0, *)
  static let volumeSupportsFileProtectionKey: URLResourceKey
  @available(iOS 11.0, *)
  static let volumeAvailableCapacityForImportantUsageKey: URLResourceKey
  @available(iOS 11.0, *)
  static let volumeAvailableCapacityForOpportunisticUsageKey: URLResourceKey
  @available(iOS 5.0, *)
  static let isUbiquitousItemKey: URLResourceKey
  @available(iOS 5.0, *)
  static let ubiquitousItemHasUnresolvedConflictsKey: URLResourceKey
  @available(iOS 5.0, *)
  static let ubiquitousItemIsDownloadingKey: URLResourceKey
  @available(iOS 5.0, *)
  static let ubiquitousItemIsUploadedKey: URLResourceKey
  @available(iOS 5.0, *)
  static let ubiquitousItemIsUploadingKey: URLResourceKey
  @available(iOS 7.0, *)
  static let ubiquitousItemDownloadingStatusKey: URLResourceKey
  @available(iOS 7.0, *)
  static let ubiquitousItemDownloadingErrorKey: URLResourceKey
  @available(iOS 7.0, *)
  static let ubiquitousItemUploadingErrorKey: URLResourceKey
  @available(iOS 8.0, *)
  static let ubiquitousItemDownloadRequestedKey: URLResourceKey
  @available(iOS 8.0, *)
  static let ubiquitousItemContainerDisplayNameKey: URLResourceKey
  @available(iOS 10.0, *)
  static let ubiquitousItemIsSharedKey: URLResourceKey
  @available(iOS 10.0, *)
  static let ubiquitousSharedItemCurrentUserRoleKey: URLResourceKey
  @available(iOS 10.0, *)
  static let ubiquitousSharedItemCurrentUserPermissionsKey: URLResourceKey
  @available(iOS 10.0, *)
  static let ubiquitousSharedItemOwnerNameComponentsKey: URLResourceKey
  @available(iOS 10.0, *)
  static let ubiquitousSharedItemMostRecentEditorNameComponentsKey: URLResourceKey
}
struct URLFileResourceType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLFileResourceType {
  @available(iOS 5.0, *)
  static let namedPipe: URLFileResourceType
  @available(iOS 5.0, *)
  static let characterSpecial: URLFileResourceType
  @available(iOS 5.0, *)
  static let directory: URLFileResourceType
  @available(iOS 5.0, *)
  static let blockSpecial: URLFileResourceType
  @available(iOS 5.0, *)
  static let regular: URLFileResourceType
  @available(iOS 5.0, *)
  static let symbolicLink: URLFileResourceType
  @available(iOS 5.0, *)
  static let socket: URLFileResourceType
  @available(iOS 5.0, *)
  static let unknown: URLFileResourceType
}
struct URLThumbnailDictionaryItem : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLThumbnailDictionaryItem {
  @available(iOS, introduced: 8.0, deprecated: 100000, message: "Use the QuickLookThumbnailing framework and extension point instead")
  static let NSThumbnail1024x1024SizeKey: URLThumbnailDictionaryItem
}
struct URLFileProtection : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLFileProtection {
  @available(iOS 9.0, *)
  static let none: URLFileProtection
  @available(iOS 9.0, *)
  static let complete: URLFileProtection
  @available(iOS 9.0, *)
  static let completeUnlessOpen: URLFileProtection
  @available(iOS 9.0, *)
  static let completeUntilFirstUserAuthentication: URLFileProtection
}
struct URLUbiquitousItemDownloadingStatus : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLUbiquitousItemDownloadingStatus {
  @available(iOS 7.0, *)
  static let notDownloaded: URLUbiquitousItemDownloadingStatus
  @available(iOS 7.0, *)
  static let downloaded: URLUbiquitousItemDownloadingStatus
  @available(iOS 7.0, *)
  static let current: URLUbiquitousItemDownloadingStatus
}
struct URLUbiquitousSharedItemRole : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLUbiquitousSharedItemRole {
  @available(iOS 10.0, *)
  static let owner: URLUbiquitousSharedItemRole
  @available(iOS 10.0, *)
  static let participant: URLUbiquitousSharedItemRole
}
struct URLUbiquitousSharedItemPermissions : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLUbiquitousSharedItemPermissions {
  @available(iOS 10.0, *)
  static let readOnly: URLUbiquitousSharedItemPermissions
  @available(iOS 10.0, *)
  static let readWrite: URLUbiquitousSharedItemPermissions
}
extension NSURL {
  @available(iOS 4.0, *)
  struct BookmarkCreationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var minimalBookmark: NSURL.BookmarkCreationOptions { get }
    static var suitableForBookmarkFile: NSURL.BookmarkCreationOptions { get }
  }
  @available(iOS 4.0, *)
  struct BookmarkResolutionOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var withoutUI: NSURL.BookmarkResolutionOptions { get }
    static var withoutMounting: NSURL.BookmarkResolutionOptions { get }
  }
  typealias BookmarkFileCreationOptions = Int
}
extension NSURL {
  @available(iOS 8.0, *)
  func getPromisedItemResourceValue(_ value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: URLResourceKey) throws
  @available(iOS 8.0, *)
  func promisedItemResourceValues(forKeys keys: [URLResourceKey]) throws -> [URLResourceKey : Any]
  @available(iOS 8.0, *)
  func checkPromisedItemIsReachableAndReturnError(_ error: NSErrorPointer) -> Bool
}
extension NSURL : NSItemProviderReading, NSItemProviderWriting {
}
@available(iOS 8.0, *)
class NSURLQueryItem : NSObject, NSSecureCoding, NSCopying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
}

@available(macOS 10.10, iOS 8.0, *)
extension NSURLQueryItem : _HasCustomAnyHashableRepresentation {
}
@available(iOS 7.0, *)
class NSURLComponents : NSObject, NSCopying {
  init?(url: URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  var url: URL? { get }
  func url(relativeTo baseURL: URL?) -> URL?
  @available(iOS 8.0, *)
  var string: String? { get }
  var scheme: String?
  var user: String?
  var password: String?
  var host: String?
  @NSCopying var port: NSNumber?
  var path: String?
  var query: String?
  var fragment: String?
  var percentEncodedUser: String?
  var percentEncodedPassword: String?
  var percentEncodedHost: String?
  var percentEncodedPath: String?
  var percentEncodedQuery: String?
  var percentEncodedFragment: String?
  @available(iOS 9.0, *)
  var rangeOfScheme: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfUser: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPassword: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfHost: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPort: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfPath: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfQuery: NSRange { get }
  @available(iOS 9.0, *)
  var rangeOfFragment: NSRange { get }
  @available(iOS 8.0, *)
  var queryItems: [URLQueryItem]?
  @available(iOS 11.0, *)
  var percentEncodedQueryItems: [URLQueryItem]?
}

extension NSURLComponents : _HasCustomAnyHashableRepresentation {
}
extension NSCharacterSet {
  @available(iOS 7.0, *)
  class var urlUserAllowed: CharacterSet { get }
  @available(iOS 7.0, *)
  class var urlPasswordAllowed: CharacterSet { get }
  @available(iOS 7.0, *)
  class var urlHostAllowed: CharacterSet { get }
  @available(iOS 7.0, *)
  class var urlPathAllowed: CharacterSet { get }
  @available(iOS 7.0, *)
  class var urlQueryAllowed: CharacterSet { get }
  @available(iOS 7.0, *)
  class var urlFragmentAllowed: CharacterSet { get }
}
extension NSString {
  @available(iOS 7.0, *)
  func addingPercentEncoding(withAllowedCharacters allowedCharacters: CharacterSet) -> String?
  @available(iOS 7.0, *)
  var removingPercentEncoding: String? { get }
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func addingPercentEscapes(using enc: UInt) -> String?
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func replacingPercentEscapes(using enc: UInt) -> String?
}
extension NSURL {
  @available(iOS 4.0, *)
  class func fileURL(withPathComponents components: [String]) -> URL?
  @available(iOS 4.0, *)
  var pathComponents: [String]? { get }
  @available(iOS 4.0, *)
  var lastPathComponent: String? { get }
  @available(iOS 4.0, *)
  var pathExtension: String? { get }
  @available(iOS 4.0, *)
  func appendingPathComponent(_ pathComponent: String) -> URL?
  @available(iOS 5.0, *)
  func appendingPathComponent(_ pathComponent: String, isDirectory: Bool) -> URL?
  @available(iOS 4.0, *)
  var deletingLastPathComponent: URL? { get }
  @available(iOS 4.0, *)
  func appendingPathExtension(_ pathExtension: String) -> URL?
  @available(iOS 4.0, *)
  var deletingPathExtension: URL? { get }
  @available(iOS 4.0, *)
  var standardizingPath: URL? { get }
  @available(iOS 4.0, *)
  var resolvingSymlinksInPath: URL? { get }
}
@available(iOS 5.0, *)
class NSFileSecurity : NSObject, NSCopying, NSSecureCoding {
}
