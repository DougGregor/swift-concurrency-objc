
struct URLResourceKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
class NSURL : NSObject, NSSecureCoding, NSCopying {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(watchOS 2.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  init(fileURLWithPath path: String, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(watchOS 2.0, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  @available(watchOS 2.0, *)
  class func fileURL(withPath path: String, relativeTo baseURL: URL?) -> URL
  @available(watchOS 2.0, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool) -> URL
  class func fileURL(withPath path: String) -> URL
  @available(watchOS 2.0, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<CChar>, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  class func fileURL(withFileSystemRepresentation path: UnsafePointer<CChar>, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  init(dataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  init(absoluteURLWithDataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(watchOS 2.0, *)
  class func absoluteURL(withDataRepresentation data: Data, relativeTo baseURL: URL?) -> URL
  @available(watchOS 2.0, *)
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
  @available(watchOS, introduced: 2.0, deprecated: 6.0, message: "The parameterString method is deprecated. Post deprecation for applications linked with or after the macOS 10.15, and for all iOS, watchOS, and tvOS applications, parameterString will always return nil, and the path method will return the complete path including the semicolon separator and params component if the URL string contains them.")
  var parameterString: String? { get }
  var query: String? { get }
  var relativePath: String? { get }
  @available(watchOS 2.0, *)
  var hasDirectoryPath: Bool { get }
  @available(watchOS 2.0, *)
  func getFileSystemRepresentation(_ buffer: UnsafeMutablePointer<CChar>, maxLength maxBufferLength: Int) -> Bool
  @available(watchOS 2.0, *)
  var fileSystemRepresentation: UnsafePointer<CChar> { get }
  var isFileURL: Bool { get }
  var standardized: URL? { get }
  @available(watchOS 2.0, *)
  func checkResourceIsReachableAndReturnError(_ error: NSErrorPointer) -> Bool
  @available(watchOS 2.0, *)
  func isFileReferenceURL() -> Bool
  @available(watchOS 2.0, *)
  func fileReferenceURL() -> URL?
  @available(watchOS 2.0, *)
  var filePathURL: URL? { get }
  @available(watchOS 2.0, *)
  func getResourceValue(_ value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: URLResourceKey) throws
  @available(watchOS 2.0, *)
  func resourceValues(forKeys keys: [URLResourceKey]) throws -> [URLResourceKey : Any]
  @available(watchOS 2.0, *)
  func setResourceValue(_ value: Any?, forKey key: URLResourceKey) throws
  @available(watchOS 2.0, *)
  func setResourceValues(_ keyedValues: [URLResourceKey : Any]) throws
  @available(watchOS 2.0, *)
  func removeCachedResourceValue(forKey key: URLResourceKey)
  @available(watchOS 2.0, *)
  func removeAllCachedResourceValues()
  @available(watchOS 2.0, *)
  func setTemporaryResourceValue(_ value: Any?, forKey key: URLResourceKey)
  @available(watchOS 2.0, *)
  func bookmarkData(options: NSURL.BookmarkCreationOptions = [], includingResourceValuesForKeys keys: [URLResourceKey]?, relativeTo relativeURL: URL?) throws -> Data
  @available(watchOS 2.0, *)
  convenience init(resolvingBookmarkData bookmarkData: Data, options: NSURL.BookmarkResolutionOptions = [], relativeTo relativeURL: URL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>?) throws
  @available(watchOS 2.0, *)
  class func resourceValues(forKeys keys: [URLResourceKey], fromBookmarkData bookmarkData: Data) -> [URLResourceKey : Any]?
  @available(watchOS 2.0, *)
  class func writeBookmarkData(_ bookmarkData: Data, to bookmarkFileURL: URL, options: NSURL.BookmarkFileCreationOptions) throws
  @available(watchOS 2.0, *)
  class func bookmarkData(withContentsOf bookmarkFileURL: URL) throws -> Data
  @available(watchOS 2.0, *)
  convenience init(resolvingAliasFileAt url: URL, options: NSURL.BookmarkResolutionOptions = []) throws
  @available(watchOS 2.0, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(watchOS 2.0, *)
  func stopAccessingSecurityScopedResource()
}

extension NSURL : _CustomPlaygroundQuickLookable {
}

extension NSURL : _HasCustomAnyHashableRepresentation {
}
let NSURLFileScheme: String
extension URLResourceKey {
  @available(watchOS 2.0, *)
  static let keysOfUnsetValuesKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let nameKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let localizedNameKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isRegularFileKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isDirectoryKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isSymbolicLinkKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isVolumeKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isPackageKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isApplicationKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isSystemImmutableKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isUserImmutableKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isHiddenKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let hasHiddenExtensionKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let creationDateKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let contentAccessDateKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let contentModificationDateKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let attributeModificationDateKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let linkCountKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let parentDirectoryURLKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeURLKey: URLResourceKey
  @available(watchOS, introduced: 2.0, deprecated: 100000, message: "Use NSURLContentTypeKey instead")
  static let typeIdentifierKey: URLResourceKey
  @available(watchOS 7.0, *)
  static let contentTypeKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let localizedTypeDescriptionKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let labelNumberKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let labelColorKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let localizedLabelKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let effectiveIconKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let customIconKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let fileResourceIdentifierKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeIdentifierKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let preferredIOBlockSizeKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isReadableKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isWritableKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isExecutableKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let fileSecurityKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isExcludedFromBackupKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let pathKey: URLResourceKey
  @available(watchOS 3.0, *)
  static let canonicalPathKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isMountTriggerKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let generationIdentifierKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let documentIdentifierKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let addedToDirectoryDateKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let fileResourceTypeKey: URLResourceKey
  @available(watchOS 7.0, *)
  static let fileContentIdentifierKey: URLResourceKey
  @available(watchOS 7.0, *)
  static let mayShareFileContentKey: URLResourceKey
  @available(watchOS 7.0, *)
  static let mayHaveExtendedAttributesKey: URLResourceKey
  @available(watchOS 7.0, *)
  static let isPurgeableKey: URLResourceKey
  @available(watchOS 7.0, *)
  static let isSparseKey: URLResourceKey
  @available(watchOS, introduced: 2.0, deprecated: 100000, message: "Use the QuickLookThumbnailing framework and extension point instead")
  static let thumbnailDictionaryKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let fileSizeKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let fileAllocatedSizeKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let totalFileSizeKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let totalFileAllocatedSizeKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isAliasFileKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let fileProtectionKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeLocalizedFormatDescriptionKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeTotalCapacityKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeAvailableCapacityKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeResourceCountKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsPersistentIDsKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsSymbolicLinksKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsHardLinksKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsJournalingKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeIsJournalingKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsSparseFilesKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsZeroRunsKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsCaseSensitiveNamesKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsCasePreservedNamesKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsRootDirectoryDatesKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsVolumeSizesKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsRenamingKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsAdvisoryFileLockingKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeSupportsExtendedSecurityKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeIsBrowsableKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeMaximumFileSizeKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeIsEjectableKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeIsRemovableKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeIsInternalKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeIsAutomountedKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeIsLocalKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeIsReadOnlyKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeCreationDateKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeURLForRemountingKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeUUIDStringKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeNameKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let volumeLocalizedNameKey: URLResourceKey
  @available(watchOS 3.0, *)
  static let volumeIsEncryptedKey: URLResourceKey
  @available(watchOS 3.0, *)
  static let volumeIsRootFileSystemKey: URLResourceKey
  @available(watchOS 3.0, *)
  static let volumeSupportsCompressionKey: URLResourceKey
  @available(watchOS 3.0, *)
  static let volumeSupportsFileCloningKey: URLResourceKey
  @available(watchOS 3.0, *)
  static let volumeSupportsSwapRenamingKey: URLResourceKey
  @available(watchOS 3.0, *)
  static let volumeSupportsExclusiveRenamingKey: URLResourceKey
  @available(watchOS 4.0, *)
  static let volumeSupportsImmutableFilesKey: URLResourceKey
  @available(watchOS 4.0, *)
  static let volumeSupportsAccessPermissionsKey: URLResourceKey
  @available(watchOS 7.0, *)
  static let volumeSupportsFileProtectionKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let isUbiquitousItemKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let ubiquitousItemHasUnresolvedConflictsKey: URLResourceKey
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use NSURLUbiquitousItemDownloadingStatusKey instead")
  static let ubiquitousItemIsDownloadedKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let ubiquitousItemIsDownloadingKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let ubiquitousItemIsUploadedKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let ubiquitousItemIsUploadingKey: URLResourceKey
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use NSMetadataUbiquitousItemPercentDownloadedKey instead")
  static let ubiquitousItemPercentDownloadedKey: URLResourceKey
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use NSMetadataUbiquitousItemPercentUploadedKey instead")
  static let ubiquitousItemPercentUploadedKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let ubiquitousItemDownloadingStatusKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let ubiquitousItemDownloadingErrorKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let ubiquitousItemUploadingErrorKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let ubiquitousItemDownloadRequestedKey: URLResourceKey
  @available(watchOS 2.0, *)
  static let ubiquitousItemContainerDisplayNameKey: URLResourceKey
}
struct URLFileResourceType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLFileResourceType {
  @available(watchOS 2.0, *)
  static let namedPipe: URLFileResourceType
  @available(watchOS 2.0, *)
  static let characterSpecial: URLFileResourceType
  @available(watchOS 2.0, *)
  static let directory: URLFileResourceType
  @available(watchOS 2.0, *)
  static let blockSpecial: URLFileResourceType
  @available(watchOS 2.0, *)
  static let regular: URLFileResourceType
  @available(watchOS 2.0, *)
  static let symbolicLink: URLFileResourceType
  @available(watchOS 2.0, *)
  static let socket: URLFileResourceType
  @available(watchOS 2.0, *)
  static let unknown: URLFileResourceType
}
struct URLThumbnailDictionaryItem : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLThumbnailDictionaryItem {
  @available(watchOS, introduced: 2.0, deprecated: 100000, message: "Use the QuickLookThumbnailing framework and extension point instead")
  static let NSThumbnail1024x1024SizeKey: URLThumbnailDictionaryItem
}
struct URLFileProtection : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLFileProtection {
  @available(watchOS 2.0, *)
  static let none: URLFileProtection
  @available(watchOS 2.0, *)
  static let complete: URLFileProtection
  @available(watchOS 2.0, *)
  static let completeUnlessOpen: URLFileProtection
  @available(watchOS 2.0, *)
  static let completeUntilFirstUserAuthentication: URLFileProtection
}
struct URLUbiquitousItemDownloadingStatus : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLUbiquitousItemDownloadingStatus {
  @available(watchOS 2.0, *)
  static let notDownloaded: URLUbiquitousItemDownloadingStatus
  @available(watchOS 2.0, *)
  static let downloaded: URLUbiquitousItemDownloadingStatus
  @available(watchOS 2.0, *)
  static let current: URLUbiquitousItemDownloadingStatus
}
struct URLUbiquitousSharedItemRole : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLUbiquitousSharedItemRole {
}
struct URLUbiquitousSharedItemPermissions : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLUbiquitousSharedItemPermissions {
}
extension NSURL {
  @available(watchOS 2.0, *)
  struct BookmarkCreationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Not supported")
    static var preferFileIDResolution: NSURL.BookmarkCreationOptions { get }
    static var minimalBookmark: NSURL.BookmarkCreationOptions { get }
    static var suitableForBookmarkFile: NSURL.BookmarkCreationOptions { get }
  }
  @available(watchOS 2.0, *)
  struct BookmarkResolutionOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var withoutUI: NSURL.BookmarkResolutionOptions { get }
    static var withoutMounting: NSURL.BookmarkResolutionOptions { get }
  }
  typealias BookmarkFileCreationOptions = Int
}
extension NSURL {
  @available(watchOS 2.0, *)
  func getPromisedItemResourceValue(_ value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: URLResourceKey) throws
  @available(watchOS 2.0, *)
  func promisedItemResourceValues(forKeys keys: [URLResourceKey]) throws -> [URLResourceKey : Any]
  @available(watchOS 2.0, *)
  func checkPromisedItemIsReachableAndReturnError(_ error: NSErrorPointer) -> Bool
}
extension NSURL : NSItemProviderReading, NSItemProviderWriting {
}
@available(watchOS 2.0, *)
class NSURLQueryItem : NSObject, NSSecureCoding, NSCopying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
}

@available(macOS 10.10, iOS 8.0, *)
extension NSURLQueryItem : _HasCustomAnyHashableRepresentation {
}
@available(watchOS 2.0, *)
class NSURLComponents : NSObject, NSCopying {
  init?(url: URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  var url: URL? { get }
  func url(relativeTo baseURL: URL?) -> URL?
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  var rangeOfScheme: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfUser: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfPassword: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfHost: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfPort: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfPath: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfQuery: NSRange { get }
  @available(watchOS 2.0, *)
  var rangeOfFragment: NSRange { get }
  @available(watchOS 2.0, *)
  var queryItems: [URLQueryItem]?
  @available(watchOS 4.0, *)
  var percentEncodedQueryItems: [URLQueryItem]?
}

extension NSURLComponents : _HasCustomAnyHashableRepresentation {
}
extension NSCharacterSet {
  @available(watchOS 2.0, *)
  class var urlUserAllowed: CharacterSet { get }
  @available(watchOS 2.0, *)
  class var urlPasswordAllowed: CharacterSet { get }
  @available(watchOS 2.0, *)
  class var urlHostAllowed: CharacterSet { get }
  @available(watchOS 2.0, *)
  class var urlPathAllowed: CharacterSet { get }
  @available(watchOS 2.0, *)
  class var urlQueryAllowed: CharacterSet { get }
  @available(watchOS 2.0, *)
  class var urlFragmentAllowed: CharacterSet { get }
}
extension NSString {
  @available(watchOS 2.0, *)
  func addingPercentEncoding(withAllowedCharacters allowedCharacters: CharacterSet) -> String?
  @available(watchOS 2.0, *)
  var removingPercentEncoding: String? { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func addingPercentEscapes(using enc: UInt) -> String?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func replacingPercentEscapes(using enc: UInt) -> String?
}
extension NSURL {
  @available(watchOS 2.0, *)
  class func fileURL(withPathComponents components: [String]) -> URL?
  @available(watchOS 2.0, *)
  var pathComponents: [String]? { get }
  @available(watchOS 2.0, *)
  var lastPathComponent: String? { get }
  @available(watchOS 2.0, *)
  var pathExtension: String? { get }
  @available(watchOS 2.0, *)
  func appendingPathComponent(_ pathComponent: String) -> URL?
  @available(watchOS 2.0, *)
  func appendingPathComponent(_ pathComponent: String, isDirectory: Bool) -> URL?
  @available(watchOS 2.0, *)
  var deletingLastPathComponent: URL? { get }
  @available(watchOS 2.0, *)
  func appendingPathExtension(_ pathExtension: String) -> URL?
  @available(watchOS 2.0, *)
  var deletingPathExtension: URL? { get }
  @available(watchOS 2.0, *)
  var standardizingPath: URL? { get }
  @available(watchOS 2.0, *)
  var resolvingSymlinksInPath: URL? { get }
}
@available(watchOS 2.0, *)
class NSFileSecurity : NSObject, NSCopying, NSSecureCoding {
}
