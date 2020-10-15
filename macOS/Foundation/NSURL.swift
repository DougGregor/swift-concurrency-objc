
struct URLResourceKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
class NSURL : NSObject, NSSecureCoding, NSCopying {
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(macOS 10.11, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(macOS 10.11, *)
  init(fileURLWithPath path: String, relativeTo baseURL: URL?)
  @available(macOS 10.5, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(macOS 10.11, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  @available(macOS 10.11, *)
  class func fileURL(withPath path: String, relativeTo baseURL: URL?) -> URL
  @available(macOS 10.5, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool) -> URL
  class func fileURL(withPath path: String) -> URL
  @available(macOS 10.9, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<CChar>, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(macOS 10.9, *)
  class func fileURL(withFileSystemRepresentation path: UnsafePointer<CChar>, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: URL?)
  @available(macOS 10.11, *)
  init(dataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(macOS 10.11, *)
  init(absoluteURLWithDataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(macOS 10.11, *)
  class func absoluteURL(withDataRepresentation data: Data, relativeTo baseURL: URL?) -> URL
  @available(macOS 10.11, *)
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
  @available(macOS, introduced: 10.2, deprecated: 10.15, message: "The parameterString method is deprecated. Post deprecation for applications linked with or after the macOS 10.15, and for all iOS, watchOS, and tvOS applications, parameterString will always return nil, and the path method will return the complete path including the semicolon separator and params component if the URL string contains them.")
  var parameterString: String? { get }
  var query: String? { get }
  var relativePath: String? { get }
  @available(macOS 10.11, *)
  var hasDirectoryPath: Bool { get }
  @available(macOS 10.9, *)
  func getFileSystemRepresentation(_ buffer: UnsafeMutablePointer<CChar>, maxLength maxBufferLength: Int) -> Bool
  @available(macOS 10.9, *)
  var fileSystemRepresentation: UnsafePointer<CChar> { get }
  var isFileURL: Bool { get }
  var standardized: URL? { get }
  @available(macOS 10.6, *)
  func checkResourceIsReachableAndReturnError(_ error: NSErrorPointer) -> Bool
  @available(macOS 10.6, *)
  func isFileReferenceURL() -> Bool
  @available(macOS 10.6, *)
  func fileReferenceURL() -> URL?
  @available(macOS 10.6, *)
  var filePathURL: URL? { get }
  @available(macOS 10.6, *)
  func getResourceValue(_ value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: URLResourceKey) throws
  @available(macOS 10.6, *)
  func resourceValues(forKeys keys: [URLResourceKey]) throws -> [URLResourceKey : Any]
  @available(macOS 10.6, *)
  func setResourceValue(_ value: Any?, forKey key: URLResourceKey) throws
  @available(macOS 10.6, *)
  func setResourceValues(_ keyedValues: [URLResourceKey : Any]) throws
  @available(macOS 10.9, *)
  func removeCachedResourceValue(forKey key: URLResourceKey)
  @available(macOS 10.9, *)
  func removeAllCachedResourceValues()
  @available(macOS 10.9, *)
  func setTemporaryResourceValue(_ value: Any?, forKey key: URLResourceKey)
  @available(macOS 10.6, *)
  func bookmarkData(options: NSURL.BookmarkCreationOptions = [], includingResourceValuesForKeys keys: [URLResourceKey]?, relativeTo relativeURL: URL?) throws -> Data
  @available(macOS 10.6, *)
  convenience init(resolvingBookmarkData bookmarkData: Data, options: NSURL.BookmarkResolutionOptions = [], relativeTo relativeURL: URL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>?) throws
  @available(macOS 10.6, *)
  class func resourceValues(forKeys keys: [URLResourceKey], fromBookmarkData bookmarkData: Data) -> [URLResourceKey : Any]?
  @available(macOS 10.6, *)
  class func writeBookmarkData(_ bookmarkData: Data, to bookmarkFileURL: URL, options: NSURL.BookmarkFileCreationOptions) throws
  @available(macOS 10.6, *)
  class func bookmarkData(withContentsOf bookmarkFileURL: URL) throws -> Data
  @available(macOS 10.10, *)
  convenience init(resolvingAliasFileAt url: URL, options: NSURL.BookmarkResolutionOptions = []) throws
  @available(macOS 10.7, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(macOS 10.7, *)
  func stopAccessingSecurityScopedResource()
}

extension NSURL : _CustomPlaygroundQuickLookable {
}

extension NSURL : _HasCustomAnyHashableRepresentation {
}
let NSURLFileScheme: String
extension URLResourceKey {
  @available(macOS 10.7, *)
  static let keysOfUnsetValuesKey: URLResourceKey
  @available(macOS 10.6, *)
  static let nameKey: URLResourceKey
  @available(macOS 10.6, *)
  static let localizedNameKey: URLResourceKey
  @available(macOS 10.6, *)
  static let isRegularFileKey: URLResourceKey
  @available(macOS 10.6, *)
  static let isDirectoryKey: URLResourceKey
  @available(macOS 10.6, *)
  static let isSymbolicLinkKey: URLResourceKey
  @available(macOS 10.6, *)
  static let isVolumeKey: URLResourceKey
  @available(macOS 10.6, *)
  static let isPackageKey: URLResourceKey
  @available(macOS 10.11, *)
  static let isApplicationKey: URLResourceKey
  @available(macOS 10.11, *)
  static let applicationIsScriptableKey: URLResourceKey
  @available(macOS 10.6, *)
  static let isSystemImmutableKey: URLResourceKey
  @available(macOS 10.6, *)
  static let isUserImmutableKey: URLResourceKey
  @available(macOS 10.6, *)
  static let isHiddenKey: URLResourceKey
  @available(macOS 10.6, *)
  static let hasHiddenExtensionKey: URLResourceKey
  @available(macOS 10.6, *)
  static let creationDateKey: URLResourceKey
  @available(macOS 10.6, *)
  static let contentAccessDateKey: URLResourceKey
  @available(macOS 10.6, *)
  static let contentModificationDateKey: URLResourceKey
  @available(macOS 10.6, *)
  static let attributeModificationDateKey: URLResourceKey
  @available(macOS 10.6, *)
  static let linkCountKey: URLResourceKey
  @available(macOS 10.6, *)
  static let parentDirectoryURLKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeURLKey: URLResourceKey
  @available(macOS, introduced: 10.6, deprecated: 100000, message: "Use NSURLContentTypeKey instead")
  static let typeIdentifierKey: URLResourceKey
  @available(macOS 11.0, *)
  static let contentTypeKey: URLResourceKey
  @available(macOS 10.6, *)
  static let localizedTypeDescriptionKey: URLResourceKey
  @available(macOS 10.6, *)
  static let labelNumberKey: URLResourceKey
  @available(macOS 10.6, *)
  static let labelColorKey: URLResourceKey
  @available(macOS 10.6, *)
  static let localizedLabelKey: URLResourceKey
  @available(macOS 10.6, *)
  static let effectiveIconKey: URLResourceKey
  @available(macOS 10.6, *)
  static let customIconKey: URLResourceKey
  @available(macOS 10.7, *)
  static let fileResourceIdentifierKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeIdentifierKey: URLResourceKey
  @available(macOS 10.7, *)
  static let preferredIOBlockSizeKey: URLResourceKey
  @available(macOS 10.7, *)
  static let isReadableKey: URLResourceKey
  @available(macOS 10.7, *)
  static let isWritableKey: URLResourceKey
  @available(macOS 10.7, *)
  static let isExecutableKey: URLResourceKey
  @available(macOS 10.7, *)
  static let fileSecurityKey: URLResourceKey
  @available(macOS 10.8, *)
  static let isExcludedFromBackupKey: URLResourceKey
  @available(macOS 10.9, *)
  static let tagNamesKey: URLResourceKey
  @available(macOS 10.8, *)
  static let pathKey: URLResourceKey
  @available(macOS 10.12, *)
  static let canonicalPathKey: URLResourceKey
  @available(macOS 10.7, *)
  static let isMountTriggerKey: URLResourceKey
  @available(macOS 10.10, *)
  static let generationIdentifierKey: URLResourceKey
  @available(macOS 10.10, *)
  static let documentIdentifierKey: URLResourceKey
  @available(macOS 10.10, *)
  static let addedToDirectoryDateKey: URLResourceKey
  @available(macOS 10.10, *)
  static let quarantinePropertiesKey: URLResourceKey
  @available(macOS 10.7, *)
  static let fileResourceTypeKey: URLResourceKey
  @available(macOS 11.0, *)
  static let fileContentIdentifierKey: URLResourceKey
  @available(macOS 11.0, *)
  static let mayShareFileContentKey: URLResourceKey
  @available(macOS 11.0, *)
  static let mayHaveExtendedAttributesKey: URLResourceKey
  @available(macOS 11.0, *)
  static let isPurgeableKey: URLResourceKey
  @available(macOS 11.0, *)
  static let isSparseKey: URLResourceKey
  @available(macOS, introduced: 10.10, deprecated: 100000, message: "Use the QuickLookThumbnailing framework and extension point instead")
  static let thumbnailDictionaryKey: URLResourceKey
  @available(macOS, introduced: 10.10, deprecated: 100000, message: "Use the QuickLookThumbnailing framework and extension point instead")
  static let thumbnailKey: URLResourceKey
  @available(macOS 10.6, *)
  static let fileSizeKey: URLResourceKey
  @available(macOS 10.6, *)
  static let fileAllocatedSizeKey: URLResourceKey
  @available(macOS 10.7, *)
  static let totalFileSizeKey: URLResourceKey
  @available(macOS 10.7, *)
  static let totalFileAllocatedSizeKey: URLResourceKey
  @available(macOS 10.6, *)
  static let isAliasFileKey: URLResourceKey
  @available(macOS 10.11, *)
  static let fileProtectionKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeLocalizedFormatDescriptionKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeTotalCapacityKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeAvailableCapacityKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeResourceCountKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeSupportsPersistentIDsKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeSupportsSymbolicLinksKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeSupportsHardLinksKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeSupportsJournalingKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeIsJournalingKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeSupportsSparseFilesKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeSupportsZeroRunsKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeSupportsCaseSensitiveNamesKey: URLResourceKey
  @available(macOS 10.6, *)
  static let volumeSupportsCasePreservedNamesKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeSupportsRootDirectoryDatesKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeSupportsVolumeSizesKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeSupportsRenamingKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeSupportsAdvisoryFileLockingKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeSupportsExtendedSecurityKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeIsBrowsableKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeMaximumFileSizeKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeIsEjectableKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeIsRemovableKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeIsInternalKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeIsAutomountedKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeIsLocalKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeIsReadOnlyKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeCreationDateKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeURLForRemountingKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeUUIDStringKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeNameKey: URLResourceKey
  @available(macOS 10.7, *)
  static let volumeLocalizedNameKey: URLResourceKey
  @available(macOS 10.12, *)
  static let volumeIsEncryptedKey: URLResourceKey
  @available(macOS 10.12, *)
  static let volumeIsRootFileSystemKey: URLResourceKey
  @available(macOS 10.12, *)
  static let volumeSupportsCompressionKey: URLResourceKey
  @available(macOS 10.12, *)
  static let volumeSupportsFileCloningKey: URLResourceKey
  @available(macOS 10.12, *)
  static let volumeSupportsSwapRenamingKey: URLResourceKey
  @available(macOS 10.12, *)
  static let volumeSupportsExclusiveRenamingKey: URLResourceKey
  @available(macOS 10.13, *)
  static let volumeSupportsImmutableFilesKey: URLResourceKey
  @available(macOS 10.13, *)
  static let volumeSupportsAccessPermissionsKey: URLResourceKey
  @available(macOS 11.0, *)
  static let volumeSupportsFileProtectionKey: URLResourceKey
  @available(macOS 10.13, *)
  static let volumeAvailableCapacityForImportantUsageKey: URLResourceKey
  @available(macOS 10.13, *)
  static let volumeAvailableCapacityForOpportunisticUsageKey: URLResourceKey
  @available(macOS 10.7, *)
  static let isUbiquitousItemKey: URLResourceKey
  @available(macOS 10.7, *)
  static let ubiquitousItemHasUnresolvedConflictsKey: URLResourceKey
  @available(macOS 10.7, *)
  static let ubiquitousItemIsDownloadingKey: URLResourceKey
  @available(macOS 10.7, *)
  static let ubiquitousItemIsUploadedKey: URLResourceKey
  @available(macOS 10.7, *)
  static let ubiquitousItemIsUploadingKey: URLResourceKey
  @available(macOS 10.9, *)
  static let ubiquitousItemDownloadingStatusKey: URLResourceKey
  @available(macOS 10.9, *)
  static let ubiquitousItemDownloadingErrorKey: URLResourceKey
  @available(macOS 10.9, *)
  static let ubiquitousItemUploadingErrorKey: URLResourceKey
  @available(macOS 10.10, *)
  static let ubiquitousItemDownloadRequestedKey: URLResourceKey
  @available(macOS 10.10, *)
  static let ubiquitousItemContainerDisplayNameKey: URLResourceKey
  @available(macOS 10.12, *)
  static let ubiquitousItemIsSharedKey: URLResourceKey
  @available(macOS 10.12, *)
  static let ubiquitousSharedItemCurrentUserRoleKey: URLResourceKey
  @available(macOS 10.12, *)
  static let ubiquitousSharedItemCurrentUserPermissionsKey: URLResourceKey
  @available(macOS 10.12, *)
  static let ubiquitousSharedItemOwnerNameComponentsKey: URLResourceKey
  @available(macOS 10.12, *)
  static let ubiquitousSharedItemMostRecentEditorNameComponentsKey: URLResourceKey
}
struct URLFileResourceType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLFileResourceType {
  @available(macOS 10.7, *)
  static let namedPipe: URLFileResourceType
  @available(macOS 10.7, *)
  static let characterSpecial: URLFileResourceType
  @available(macOS 10.7, *)
  static let directory: URLFileResourceType
  @available(macOS 10.7, *)
  static let blockSpecial: URLFileResourceType
  @available(macOS 10.7, *)
  static let regular: URLFileResourceType
  @available(macOS 10.7, *)
  static let symbolicLink: URLFileResourceType
  @available(macOS 10.7, *)
  static let socket: URLFileResourceType
  @available(macOS 10.7, *)
  static let unknown: URLFileResourceType
}
struct URLThumbnailDictionaryItem : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLThumbnailDictionaryItem {
  @available(macOS, introduced: 10.10, deprecated: 100000, message: "Use the QuickLookThumbnailing framework and extension point instead")
  static let NSThumbnail1024x1024SizeKey: URLThumbnailDictionaryItem
}
struct URLFileProtection : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLFileProtection {
  @available(macOS 11.0, *)
  static let none: URLFileProtection
  @available(macOS 11.0, *)
  static let complete: URLFileProtection
  @available(macOS 11.0, *)
  static let completeUnlessOpen: URLFileProtection
  @available(macOS 11.0, *)
  static let completeUntilFirstUserAuthentication: URLFileProtection
}
struct URLUbiquitousItemDownloadingStatus : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLUbiquitousItemDownloadingStatus {
  @available(macOS 10.9, *)
  static let notDownloaded: URLUbiquitousItemDownloadingStatus
  @available(macOS 10.9, *)
  static let downloaded: URLUbiquitousItemDownloadingStatus
  @available(macOS 10.9, *)
  static let current: URLUbiquitousItemDownloadingStatus
}
struct URLUbiquitousSharedItemRole : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLUbiquitousSharedItemRole {
  @available(macOS 10.12, *)
  static let owner: URLUbiquitousSharedItemRole
  @available(macOS 10.12, *)
  static let participant: URLUbiquitousSharedItemRole
}
struct URLUbiquitousSharedItemPermissions : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLUbiquitousSharedItemPermissions {
  @available(macOS 10.12, *)
  static let readOnly: URLUbiquitousSharedItemPermissions
  @available(macOS 10.12, *)
  static let readWrite: URLUbiquitousSharedItemPermissions
}
extension NSURL {
  @available(macOS 10.6, *)
  struct BookmarkCreationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var minimalBookmark: NSURL.BookmarkCreationOptions { get }
    static var suitableForBookmarkFile: NSURL.BookmarkCreationOptions { get }
    @available(macOS 10.7, *)
    static var withSecurityScope: NSURL.BookmarkCreationOptions { get }
    @available(macOS 10.7, *)
    static var securityScopeAllowOnlyReadAccess: NSURL.BookmarkCreationOptions { get }
  }
  @available(macOS 10.6, *)
  struct BookmarkResolutionOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var withoutUI: NSURL.BookmarkResolutionOptions { get }
    static var withoutMounting: NSURL.BookmarkResolutionOptions { get }
    @available(macOS 10.7, *)
    static var withSecurityScope: NSURL.BookmarkResolutionOptions { get }
  }
  typealias BookmarkFileCreationOptions = Int
}
extension NSURL {
  @available(macOS 10.10, *)
  func getPromisedItemResourceValue(_ value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: URLResourceKey) throws
  @available(macOS 10.10, *)
  func promisedItemResourceValues(forKeys keys: [URLResourceKey]) throws -> [URLResourceKey : Any]
  @available(macOS 10.10, *)
  func checkPromisedItemIsReachableAndReturnError(_ error: NSErrorPointer) -> Bool
}
extension NSURL : NSItemProviderReading, NSItemProviderWriting {
}
@available(macOS 10.10, *)
class NSURLQueryItem : NSObject, NSSecureCoding, NSCopying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
}

@available(macOS 10.10, iOS 8.0, *)
extension NSURLQueryItem : _HasCustomAnyHashableRepresentation {
}
@available(macOS 10.9, *)
class NSURLComponents : NSObject, NSCopying {
  init?(url: URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  var url: URL? { get }
  func url(relativeTo baseURL: URL?) -> URL?
  @available(macOS 10.10, *)
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
  @available(macOS 10.11, *)
  var rangeOfScheme: NSRange { get }
  @available(macOS 10.11, *)
  var rangeOfUser: NSRange { get }
  @available(macOS 10.11, *)
  var rangeOfPassword: NSRange { get }
  @available(macOS 10.11, *)
  var rangeOfHost: NSRange { get }
  @available(macOS 10.11, *)
  var rangeOfPort: NSRange { get }
  @available(macOS 10.11, *)
  var rangeOfPath: NSRange { get }
  @available(macOS 10.11, *)
  var rangeOfQuery: NSRange { get }
  @available(macOS 10.11, *)
  var rangeOfFragment: NSRange { get }
  @available(macOS 10.10, *)
  var queryItems: [URLQueryItem]?
  @available(macOS 10.13, *)
  var percentEncodedQueryItems: [URLQueryItem]?
}

extension NSURLComponents : _HasCustomAnyHashableRepresentation {
}
extension NSCharacterSet {
  @available(macOS 10.9, *)
  class var urlUserAllowed: CharacterSet { get }
  @available(macOS 10.9, *)
  class var urlPasswordAllowed: CharacterSet { get }
  @available(macOS 10.9, *)
  class var urlHostAllowed: CharacterSet { get }
  @available(macOS 10.9, *)
  class var urlPathAllowed: CharacterSet { get }
  @available(macOS 10.9, *)
  class var urlQueryAllowed: CharacterSet { get }
  @available(macOS 10.9, *)
  class var urlFragmentAllowed: CharacterSet { get }
}
extension NSString {
  @available(macOS 10.9, *)
  func addingPercentEncoding(withAllowedCharacters allowedCharacters: CharacterSet) -> String?
  @available(macOS 10.9, *)
  var removingPercentEncoding: String? { get }
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func addingPercentEscapes(using enc: UInt) -> String?
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func replacingPercentEscapes(using enc: UInt) -> String?
}
extension NSURL {
  @available(macOS 10.6, *)
  class func fileURL(withPathComponents components: [String]) -> URL?
  @available(macOS 10.6, *)
  var pathComponents: [String]? { get }
  @available(macOS 10.6, *)
  var lastPathComponent: String? { get }
  @available(macOS 10.6, *)
  var pathExtension: String? { get }
  @available(macOS 10.6, *)
  func appendingPathComponent(_ pathComponent: String) -> URL?
  @available(macOS 10.7, *)
  func appendingPathComponent(_ pathComponent: String, isDirectory: Bool) -> URL?
  @available(macOS 10.6, *)
  var deletingLastPathComponent: URL? { get }
  @available(macOS 10.6, *)
  func appendingPathExtension(_ pathExtension: String) -> URL?
  @available(macOS 10.6, *)
  var deletingPathExtension: URL? { get }
  @available(macOS 10.6, *)
  var standardizingPath: URL? { get }
  @available(macOS 10.6, *)
  var resolvingSymlinksInPath: URL? { get }
}
@available(macOS 10.7, *)
class NSFileSecurity : NSObject, NSCopying, NSSecureCoding {
}
extension NSURL {
}
