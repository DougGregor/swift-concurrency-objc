
struct URLResourceKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
class NSURL : NSObject, NSSecureCoding, NSCopying {
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use NSURLComponents instead, which lets you create a valid URL with any valid combination of URL components and subcomponents (not just scheme, host and path), and lets you set components and subcomponents with either percent-encoded or un-percent-encoded strings.")
  convenience init?(scheme: String, host: String?, path: String)
  @available(tvOS 9.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(tvOS 9.0, *)
  init(fileURLWithPath path: String, relativeTo baseURL: URL?)
  @available(tvOS 9.0, *)
  init(fileURLWithPath path: String, isDirectory isDir: Bool)
  init(fileURLWithPath path: String)
  @available(tvOS 9.0, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  @available(tvOS 9.0, *)
  class func fileURL(withPath path: String, relativeTo baseURL: URL?) -> URL
  @available(tvOS 9.0, *)
  class func fileURL(withPath path: String, isDirectory isDir: Bool) -> URL
  class func fileURL(withPath path: String) -> URL
  @available(tvOS 9.0, *)
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<CChar>, isDirectory isDir: Bool, relativeTo baseURL: URL?)
  @available(tvOS 9.0, *)
  class func fileURL(withFileSystemRepresentation path: UnsafePointer<CChar>, isDirectory isDir: Bool, relativeTo baseURL: URL?) -> URL
  convenience init?(string URLString: String)
  init?(string URLString: String, relativeTo baseURL: URL?)
  @available(tvOS 9.0, *)
  init(dataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(tvOS 9.0, *)
  init(absoluteURLWithDataRepresentation data: Data, relativeTo baseURL: URL?)
  @available(tvOS 9.0, *)
  class func absoluteURL(withDataRepresentation data: Data, relativeTo baseURL: URL?) -> URL
  @available(tvOS 9.0, *)
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
  @available(tvOS, introduced: 9.0, deprecated: 13.0, message: "The parameterString method is deprecated. Post deprecation for applications linked with or after the macOS 10.15, and for all iOS, watchOS, and tvOS applications, parameterString will always return nil, and the path method will return the complete path including the semicolon separator and params component if the URL string contains them.")
  var parameterString: String? { get }
  var query: String? { get }
  var relativePath: String? { get }
  @available(tvOS 9.0, *)
  var hasDirectoryPath: Bool { get }
  @available(tvOS 9.0, *)
  func getFileSystemRepresentation(_ buffer: UnsafeMutablePointer<CChar>, maxLength maxBufferLength: Int) -> Bool
  @available(tvOS 9.0, *)
  var fileSystemRepresentation: UnsafePointer<CChar> { get }
  var isFileURL: Bool { get }
  var standardized: URL? { get }
  @available(tvOS 9.0, *)
  func checkResourceIsReachableAndReturnError(_ error: NSErrorPointer) -> Bool
  @available(tvOS 9.0, *)
  func isFileReferenceURL() -> Bool
  @available(tvOS 9.0, *)
  func fileReferenceURL() -> URL?
  @available(tvOS 9.0, *)
  var filePathURL: URL? { get }
  @available(tvOS 9.0, *)
  func getResourceValue(_ value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: URLResourceKey) throws
  @available(tvOS 9.0, *)
  func resourceValues(forKeys keys: [URLResourceKey]) throws -> [URLResourceKey : Any]
  @available(tvOS 9.0, *)
  func setResourceValue(_ value: Any?, forKey key: URLResourceKey) throws
  @available(tvOS 9.0, *)
  func setResourceValues(_ keyedValues: [URLResourceKey : Any]) throws
  @available(tvOS 9.0, *)
  func removeCachedResourceValue(forKey key: URLResourceKey)
  @available(tvOS 9.0, *)
  func removeAllCachedResourceValues()
  @available(tvOS 9.0, *)
  func setTemporaryResourceValue(_ value: Any?, forKey key: URLResourceKey)
  @available(tvOS 9.0, *)
  func bookmarkData(options: NSURL.BookmarkCreationOptions = [], includingResourceValuesForKeys keys: [URLResourceKey]?, relativeTo relativeURL: URL?) throws -> Data
  @available(tvOS 9.0, *)
  convenience init(resolvingBookmarkData bookmarkData: Data, options: NSURL.BookmarkResolutionOptions = [], relativeTo relativeURL: URL?, bookmarkDataIsStale isStale: UnsafeMutablePointer<ObjCBool>?) throws
  @available(tvOS 9.0, *)
  class func resourceValues(forKeys keys: [URLResourceKey], fromBookmarkData bookmarkData: Data) -> [URLResourceKey : Any]?
  @available(tvOS 9.0, *)
  class func writeBookmarkData(_ bookmarkData: Data, to bookmarkFileURL: URL, options: NSURL.BookmarkFileCreationOptions) throws
  @available(tvOS 9.0, *)
  class func bookmarkData(withContentsOf bookmarkFileURL: URL) throws -> Data
  @available(tvOS 9.0, *)
  convenience init(resolvingAliasFileAt url: URL, options: NSURL.BookmarkResolutionOptions = []) throws
  @available(tvOS 9.0, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(tvOS 9.0, *)
  func stopAccessingSecurityScopedResource()
}

extension NSURL : _CustomPlaygroundQuickLookable {
}

extension NSURL : _HasCustomAnyHashableRepresentation {
}
let NSURLFileScheme: String
extension URLResourceKey {
  @available(tvOS 9.0, *)
  static let keysOfUnsetValuesKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let nameKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let localizedNameKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isRegularFileKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isDirectoryKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isSymbolicLinkKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isVolumeKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isPackageKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isApplicationKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isSystemImmutableKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isUserImmutableKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isHiddenKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let hasHiddenExtensionKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let creationDateKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let contentAccessDateKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let contentModificationDateKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let attributeModificationDateKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let linkCountKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let parentDirectoryURLKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeURLKey: URLResourceKey
  @available(tvOS, introduced: 9.0, deprecated: 100000, message: "Use NSURLContentTypeKey instead")
  static let typeIdentifierKey: URLResourceKey
  @available(tvOS 14.0, *)
  static let contentTypeKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let localizedTypeDescriptionKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let labelNumberKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let labelColorKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let localizedLabelKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let effectiveIconKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let customIconKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let fileResourceIdentifierKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeIdentifierKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let preferredIOBlockSizeKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isReadableKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isWritableKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isExecutableKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let fileSecurityKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isExcludedFromBackupKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let pathKey: URLResourceKey
  @available(tvOS 10.0, *)
  static let canonicalPathKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isMountTriggerKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let generationIdentifierKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let documentIdentifierKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let addedToDirectoryDateKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let fileResourceTypeKey: URLResourceKey
  @available(tvOS 14.0, *)
  static let fileContentIdentifierKey: URLResourceKey
  @available(tvOS 14.0, *)
  static let mayShareFileContentKey: URLResourceKey
  @available(tvOS 14.0, *)
  static let mayHaveExtendedAttributesKey: URLResourceKey
  @available(tvOS 14.0, *)
  static let isPurgeableKey: URLResourceKey
  @available(tvOS 14.0, *)
  static let isSparseKey: URLResourceKey
  @available(tvOS, introduced: 9.0, deprecated: 100000, message: "Use the QuickLookThumbnailing framework and extension point instead")
  static let thumbnailDictionaryKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let fileSizeKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let fileAllocatedSizeKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let totalFileSizeKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let totalFileAllocatedSizeKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isAliasFileKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let fileProtectionKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeLocalizedFormatDescriptionKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeTotalCapacityKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeAvailableCapacityKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeResourceCountKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsPersistentIDsKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsSymbolicLinksKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsHardLinksKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsJournalingKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeIsJournalingKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsSparseFilesKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsZeroRunsKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsCaseSensitiveNamesKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsCasePreservedNamesKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsRootDirectoryDatesKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsVolumeSizesKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsRenamingKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsAdvisoryFileLockingKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeSupportsExtendedSecurityKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeIsBrowsableKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeMaximumFileSizeKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeIsEjectableKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeIsRemovableKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeIsInternalKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeIsAutomountedKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeIsLocalKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeIsReadOnlyKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeCreationDateKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeURLForRemountingKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeUUIDStringKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeNameKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let volumeLocalizedNameKey: URLResourceKey
  @available(tvOS 10.0, *)
  static let volumeIsEncryptedKey: URLResourceKey
  @available(tvOS 10.0, *)
  static let volumeIsRootFileSystemKey: URLResourceKey
  @available(tvOS 10.0, *)
  static let volumeSupportsCompressionKey: URLResourceKey
  @available(tvOS 10.0, *)
  static let volumeSupportsFileCloningKey: URLResourceKey
  @available(tvOS 10.0, *)
  static let volumeSupportsSwapRenamingKey: URLResourceKey
  @available(tvOS 10.0, *)
  static let volumeSupportsExclusiveRenamingKey: URLResourceKey
  @available(tvOS 11.0, *)
  static let volumeSupportsImmutableFilesKey: URLResourceKey
  @available(tvOS 11.0, *)
  static let volumeSupportsAccessPermissionsKey: URLResourceKey
  @available(tvOS 14.0, *)
  static let volumeSupportsFileProtectionKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let isUbiquitousItemKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let ubiquitousItemHasUnresolvedConflictsKey: URLResourceKey
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use NSURLUbiquitousItemDownloadingStatusKey instead")
  static let ubiquitousItemIsDownloadedKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let ubiquitousItemIsDownloadingKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let ubiquitousItemIsUploadedKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let ubiquitousItemIsUploadingKey: URLResourceKey
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use NSMetadataUbiquitousItemPercentDownloadedKey instead")
  static let ubiquitousItemPercentDownloadedKey: URLResourceKey
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use NSMetadataUbiquitousItemPercentUploadedKey instead")
  static let ubiquitousItemPercentUploadedKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let ubiquitousItemDownloadingStatusKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let ubiquitousItemDownloadingErrorKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let ubiquitousItemUploadingErrorKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let ubiquitousItemDownloadRequestedKey: URLResourceKey
  @available(tvOS 9.0, *)
  static let ubiquitousItemContainerDisplayNameKey: URLResourceKey
}
struct URLFileResourceType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLFileResourceType {
  @available(tvOS 9.0, *)
  static let namedPipe: URLFileResourceType
  @available(tvOS 9.0, *)
  static let characterSpecial: URLFileResourceType
  @available(tvOS 9.0, *)
  static let directory: URLFileResourceType
  @available(tvOS 9.0, *)
  static let blockSpecial: URLFileResourceType
  @available(tvOS 9.0, *)
  static let regular: URLFileResourceType
  @available(tvOS 9.0, *)
  static let symbolicLink: URLFileResourceType
  @available(tvOS 9.0, *)
  static let socket: URLFileResourceType
  @available(tvOS 9.0, *)
  static let unknown: URLFileResourceType
}
struct URLThumbnailDictionaryItem : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLThumbnailDictionaryItem {
  @available(tvOS, introduced: 9.0, deprecated: 100000, message: "Use the QuickLookThumbnailing framework and extension point instead")
  static let NSThumbnail1024x1024SizeKey: URLThumbnailDictionaryItem
}
struct URLFileProtection : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLFileProtection {
  @available(tvOS 9.0, *)
  static let none: URLFileProtection
  @available(tvOS 9.0, *)
  static let complete: URLFileProtection
  @available(tvOS 9.0, *)
  static let completeUnlessOpen: URLFileProtection
  @available(tvOS 9.0, *)
  static let completeUntilFirstUserAuthentication: URLFileProtection
}
struct URLUbiquitousItemDownloadingStatus : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension URLUbiquitousItemDownloadingStatus {
  @available(tvOS 9.0, *)
  static let notDownloaded: URLUbiquitousItemDownloadingStatus
  @available(tvOS 9.0, *)
  static let downloaded: URLUbiquitousItemDownloadingStatus
  @available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  struct BookmarkCreationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Not supported")
    static var preferFileIDResolution: NSURL.BookmarkCreationOptions { get }
    static var minimalBookmark: NSURL.BookmarkCreationOptions { get }
    static var suitableForBookmarkFile: NSURL.BookmarkCreationOptions { get }
  }
  @available(tvOS 9.0, *)
  struct BookmarkResolutionOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var withoutUI: NSURL.BookmarkResolutionOptions { get }
    static var withoutMounting: NSURL.BookmarkResolutionOptions { get }
  }
  typealias BookmarkFileCreationOptions = Int
}
extension NSURL {
  @available(tvOS 9.0, *)
  func getPromisedItemResourceValue(_ value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: URLResourceKey) throws
  @available(tvOS 9.0, *)
  func promisedItemResourceValues(forKeys keys: [URLResourceKey]) throws -> [URLResourceKey : Any]
  @available(tvOS 9.0, *)
  func checkPromisedItemIsReachableAndReturnError(_ error: NSErrorPointer) -> Bool
}
extension NSURL : NSItemProviderReading, NSItemProviderWriting {
}
@available(tvOS 9.0, *)
class NSURLQueryItem : NSObject, NSSecureCoding, NSCopying {
  init(name: String, value: String?)
  var name: String { get }
  var value: String? { get }
}

@available(macOS 10.10, iOS 8.0, *)
extension NSURLQueryItem : _HasCustomAnyHashableRepresentation {
}
@available(tvOS 9.0, *)
class NSURLComponents : NSObject, NSCopying {
  init?(url: URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string URLString: String)
  var url: URL? { get }
  func url(relativeTo baseURL: URL?) -> URL?
  @available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  var rangeOfScheme: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfUser: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfPassword: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfHost: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfPort: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfPath: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfQuery: NSRange { get }
  @available(tvOS 9.0, *)
  var rangeOfFragment: NSRange { get }
  @available(tvOS 9.0, *)
  var queryItems: [URLQueryItem]?
  @available(tvOS 11.0, *)
  var percentEncodedQueryItems: [URLQueryItem]?
}

extension NSURLComponents : _HasCustomAnyHashableRepresentation {
}
extension NSCharacterSet {
  @available(tvOS 9.0, *)
  class var urlUserAllowed: CharacterSet { get }
  @available(tvOS 9.0, *)
  class var urlPasswordAllowed: CharacterSet { get }
  @available(tvOS 9.0, *)
  class var urlHostAllowed: CharacterSet { get }
  @available(tvOS 9.0, *)
  class var urlPathAllowed: CharacterSet { get }
  @available(tvOS 9.0, *)
  class var urlQueryAllowed: CharacterSet { get }
  @available(tvOS 9.0, *)
  class var urlFragmentAllowed: CharacterSet { get }
}
extension NSString {
  @available(tvOS 9.0, *)
  func addingPercentEncoding(withAllowedCharacters allowedCharacters: CharacterSet) -> String?
  @available(tvOS 9.0, *)
  var removingPercentEncoding: String? { get }
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use -stringByAddingPercentEncodingWithAllowedCharacters: instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent since each URL component or subcomponent has different rules for what characters are valid.")
  func addingPercentEscapes(using enc: UInt) -> String?
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use -stringByRemovingPercentEncoding instead, which always uses the recommended UTF-8 encoding.")
  func replacingPercentEscapes(using enc: UInt) -> String?
}
extension NSURL {
  @available(tvOS 9.0, *)
  class func fileURL(withPathComponents components: [String]) -> URL?
  @available(tvOS 9.0, *)
  var pathComponents: [String]? { get }
  @available(tvOS 9.0, *)
  var lastPathComponent: String? { get }
  @available(tvOS 9.0, *)
  var pathExtension: String? { get }
  @available(tvOS 9.0, *)
  func appendingPathComponent(_ pathComponent: String) -> URL?
  @available(tvOS 9.0, *)
  func appendingPathComponent(_ pathComponent: String, isDirectory: Bool) -> URL?
  @available(tvOS 9.0, *)
  var deletingLastPathComponent: URL? { get }
  @available(tvOS 9.0, *)
  func appendingPathExtension(_ pathExtension: String) -> URL?
  @available(tvOS 9.0, *)
  var deletingPathExtension: URL? { get }
  @available(tvOS 9.0, *)
  var standardizingPath: URL? { get }
  @available(tvOS 9.0, *)
  var resolvingSymlinksInPath: URL? { get }
}
@available(tvOS 9.0, *)
class NSFileSecurity : NSObject, NSCopying, NSSecureCoding {
}
