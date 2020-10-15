
enum CFURLPathStyle : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case cfurlposixPathStyle
  case cfurlWindowsPathStyle
}
class CFURL : _CFObject {
}
func CFURLGetTypeID() -> CFTypeID
func CFURLCreateWithBytes(_ allocator: CFAllocator!, _ URLBytes: UnsafePointer<UInt8>!, _ length: CFIndex, _ encoding: CFStringEncoding, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateData(_ allocator: CFAllocator!, _ url: CFURL!, _ encoding: CFStringEncoding, _ escapeWhitespace: Bool) -> CFData!
func CFURLCreateWithString(_ allocator: CFAllocator!, _ URLString: CFString!, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateAbsoluteURLWithBytes(_ alloc: CFAllocator!, _ relativeURLBytes: UnsafePointer<UInt8>!, _ length: CFIndex, _ encoding: CFStringEncoding, _ baseURL: CFURL!, _ useCompatibilityMode: Bool) -> CFURL!
func CFURLCreateWithFileSystemPath(_ allocator: CFAllocator!, _ filePath: CFString!, _ pathStyle: CFURLPathStyle, _ isDirectory: Bool) -> CFURL!
func CFURLCreateFromFileSystemRepresentation(_ allocator: CFAllocator!, _ buffer: UnsafePointer<UInt8>!, _ bufLen: CFIndex, _ isDirectory: Bool) -> CFURL!
func CFURLCreateWithFileSystemPathRelativeToBase(_ allocator: CFAllocator!, _ filePath: CFString!, _ pathStyle: CFURLPathStyle, _ isDirectory: Bool, _ baseURL: CFURL!) -> CFURL!
func CFURLCreateFromFileSystemRepresentationRelativeToBase(_ allocator: CFAllocator!, _ buffer: UnsafePointer<UInt8>!, _ bufLen: CFIndex, _ isDirectory: Bool, _ baseURL: CFURL!) -> CFURL!
func CFURLGetFileSystemRepresentation(_ url: CFURL!, _ resolveAgainstBase: Bool, _ buffer: UnsafeMutablePointer<UInt8>!, _ maxBufLen: CFIndex) -> Bool
func CFURLCopyAbsoluteURL(_ relativeURL: CFURL!) -> CFURL!
func CFURLGetString(_ anURL: CFURL!) -> CFString!
func CFURLGetBaseURL(_ anURL: CFURL!) -> CFURL!
func CFURLCanBeDecomposed(_ anURL: CFURL!) -> Bool
func CFURLCopyScheme(_ anURL: CFURL!) -> CFString!
func CFURLCopyNetLocation(_ anURL: CFURL!) -> CFString!
func CFURLCopyPath(_ anURL: CFURL!) -> CFString!
func CFURLCopyStrictPath(_ anURL: CFURL!, _ isAbsolute: UnsafeMutablePointer<DarwinBoolean>!) -> CFString!
func CFURLCopyFileSystemPath(_ anURL: CFURL!, _ pathStyle: CFURLPathStyle) -> CFString!
func CFURLHasDirectoryPath(_ anURL: CFURL!) -> Bool
func CFURLCopyResourceSpecifier(_ anURL: CFURL!) -> CFString!
func CFURLCopyHostName(_ anURL: CFURL!) -> CFString!
func CFURLGetPortNumber(_ anURL: CFURL!) -> Int32
func CFURLCopyUserName(_ anURL: CFURL!) -> CFString!
func CFURLCopyPassword(_ anURL: CFURL!) -> CFString!
@available(macOS, introduced: 10.2, deprecated: 10.15, message: "The CFURLCopyParameterString function is deprecated. Post deprecation for applications linked with or after the macOS 10.15, and for all iOS, watchOS, and tvOS applications, CFURLCopyParameterString will always return NULL, and the CFURLCopyPath(), CFURLCopyStrictPath(), and CFURLCopyFileSystemPath() functions will return the complete path including the semicolon separator and params component if the URL string contains them.")
func CFURLCopyParameterString(_ anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyQueryString(_ anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyFragment(_ anURL: CFURL!, _ charactersToLeaveEscaped: CFString!) -> CFString!
func CFURLCopyLastPathComponent(_ url: CFURL!) -> CFString!
func CFURLCopyPathExtension(_ url: CFURL!) -> CFString!
func CFURLCreateCopyAppendingPathComponent(_ allocator: CFAllocator!, _ url: CFURL!, _ pathComponent: CFString!, _ isDirectory: Bool) -> CFURL!
func CFURLCreateCopyDeletingLastPathComponent(_ allocator: CFAllocator!, _ url: CFURL!) -> CFURL!
func CFURLCreateCopyAppendingPathExtension(_ allocator: CFAllocator!, _ url: CFURL!, _ extension: CFString!) -> CFURL!
func CFURLCreateCopyDeletingPathExtension(_ allocator: CFAllocator!, _ url: CFURL!) -> CFURL!
func CFURLGetBytes(_ url: CFURL!, _ buffer: UnsafeMutablePointer<UInt8>!, _ bufferLength: CFIndex) -> CFIndex
enum CFURLComponentType : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case scheme
  case netLocation
  case path
  case resourceSpecifier
  case user
  case password
  case userInfo
  case host
  case port
  case parameterString
  case query
  case fragment
}
func CFURLGetByteRangeForComponent(_ url: CFURL!, _ component: CFURLComponentType, _ rangeIncludingSeparators: UnsafeMutablePointer<CFRange>!) -> CFRange
func CFURLCreateStringByReplacingPercentEscapes(_ allocator: CFAllocator!, _ originalString: CFString!, _ charactersToLeaveEscaped: CFString!) -> CFString!
@available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use [NSString stringByRemovingPercentEncoding] or CFURLCreateStringByReplacingPercentEscapes() instead, which always uses the recommended UTF-8 encoding.")
func CFURLCreateStringByReplacingPercentEscapesUsingEncoding(_ allocator: CFAllocator!, _ origString: CFString!, _ charsToLeaveEscaped: CFString!, _ encoding: CFStringEncoding) -> CFString!
@available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use [NSString stringByAddingPercentEncodingWithAllowedCharacters:] instead, which always uses the recommended UTF-8 encoding, and which encodes for a specific URL component or subcomponent (since each URL component or subcomponent has different rules for what characters are valid).")
func CFURLCreateStringByAddingPercentEscapes(_ allocator: CFAllocator!, _ originalString: CFString!, _ charactersToLeaveUnescaped: CFString!, _ legalURLCharactersToBeEscaped: CFString!, _ encoding: CFStringEncoding) -> CFString!
@available(macOS 10.9, *)
func CFURLIsFileReferenceURL(_ url: CFURL!) -> Bool
@available(macOS 10.6, *)
func CFURLCreateFileReferenceURL(_ allocator: CFAllocator!, _ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Unmanaged<CFURL>!
@available(macOS 10.6, *)
func CFURLCreateFilePathURL(_ allocator: CFAllocator!, _ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Unmanaged<CFURL>!
@available(macOS 10.6, *)
func CFURLCopyResourcePropertyForKey(_ url: CFURL!, _ key: CFString!, _ propertyValueTypeRefPtr: UnsafeMutableRawPointer!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
@available(macOS 10.6, *)
func CFURLCopyResourcePropertiesForKeys(_ url: CFURL!, _ keys: CFArray!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Unmanaged<CFDictionary>!
@available(macOS 10.6, *)
func CFURLSetResourcePropertyForKey(_ url: CFURL!, _ key: CFString!, _ propertyValue: CFTypeRef!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
@available(macOS 10.6, *)
func CFURLSetResourcePropertiesForKeys(_ url: CFURL!, _ keyedPropertyValues: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
@available(macOS 10.7, *)
let kCFURLKeysOfUnsetValuesKey: CFString!
@available(macOS 10.6, *)
func CFURLClearResourcePropertyCacheForKey(_ url: CFURL!, _ key: CFString!)
@available(macOS 10.6, *)
func CFURLClearResourcePropertyCache(_ url: CFURL!)
@available(macOS 10.6, *)
func CFURLSetTemporaryResourcePropertyForKey(_ url: CFURL!, _ key: CFString!, _ propertyValue: CFTypeRef!)
@available(macOS 10.6, *)
func CFURLResourceIsReachable(_ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
@available(macOS 10.6, *)
let kCFURLNameKey: CFString!
@available(macOS 10.6, *)
let kCFURLLocalizedNameKey: CFString!
@available(macOS 10.6, *)
let kCFURLIsRegularFileKey: CFString!
@available(macOS 10.6, *)
let kCFURLIsDirectoryKey: CFString!
@available(macOS 10.6, *)
let kCFURLIsSymbolicLinkKey: CFString!
@available(macOS 10.6, *)
let kCFURLIsVolumeKey: CFString!
@available(macOS 10.6, *)
let kCFURLIsPackageKey: CFString!
@available(macOS 10.11, *)
let kCFURLIsApplicationKey: CFString!
@available(macOS 10.11, *)
let kCFURLApplicationIsScriptableKey: CFString!
@available(macOS 10.6, *)
let kCFURLIsSystemImmutableKey: CFString!
@available(macOS 10.6, *)
let kCFURLIsUserImmutableKey: CFString!
@available(macOS 10.6, *)
let kCFURLIsHiddenKey: CFString!
@available(macOS 10.6, *)
let kCFURLHasHiddenExtensionKey: CFString!
@available(macOS 10.6, *)
let kCFURLCreationDateKey: CFString!
@available(macOS 10.6, *)
let kCFURLContentAccessDateKey: CFString!
@available(macOS 10.6, *)
let kCFURLContentModificationDateKey: CFString!
@available(macOS 10.6, *)
let kCFURLAttributeModificationDateKey: CFString!
@available(macOS 11.0, *)
let kCFURLFileContentIdentifierKey: CFString!
@available(macOS 11.0, *)
let kCFURLMayShareFileContentKey: CFString!
@available(macOS 11.0, *)
let kCFURLMayHaveExtendedAttributesKey: CFString!
@available(macOS 11.0, *)
let kCFURLIsPurgeableKey: CFString!
@available(macOS 11.0, *)
let kCFURLIsSparseKey: CFString!
@available(macOS 10.6, *)
let kCFURLLinkCountKey: CFString!
@available(macOS 10.6, *)
let kCFURLParentDirectoryURLKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeURLKey: CFString!
@available(macOS, introduced: 10.6, deprecated: 100000, message: "Use NSURLContentTypeKey instead")
let kCFURLTypeIdentifierKey: CFString!
@available(macOS 10.6, *)
let kCFURLLocalizedTypeDescriptionKey: CFString!
@available(macOS 10.6, *)
let kCFURLLabelNumberKey: CFString!
@available(macOS, introduced: 10.6, deprecated: 10.12, message: "Use NSURLLabelColorKey")
let kCFURLLabelColorKey: CFString!
@available(macOS 10.6, *)
let kCFURLLocalizedLabelKey: CFString!
@available(macOS, introduced: 10.6, deprecated: 10.12, message: "Use NSURLEffectiveIconKey")
let kCFURLEffectiveIconKey: CFString!
@available(macOS, introduced: 10.6, deprecated: 10.12, message: "Use NSURLCustomIconKey")
let kCFURLCustomIconKey: CFString!
@available(macOS 10.7, *)
let kCFURLFileResourceIdentifierKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeIdentifierKey: CFString!
@available(macOS 10.7, *)
let kCFURLPreferredIOBlockSizeKey: CFString!
@available(macOS 10.7, *)
let kCFURLIsReadableKey: CFString!
@available(macOS 10.7, *)
let kCFURLIsWritableKey: CFString!
@available(macOS 10.7, *)
let kCFURLIsExecutableKey: CFString!
@available(macOS 10.7, *)
let kCFURLFileSecurityKey: CFString!
@available(macOS 10.8, *)
let kCFURLIsExcludedFromBackupKey: CFString!
@available(macOS 10.9, *)
let kCFURLTagNamesKey: CFString!
@available(macOS 10.8, *)
let kCFURLPathKey: CFString!
@available(macOS 10.12, *)
let kCFURLCanonicalPathKey: CFString!
@available(macOS 10.7, *)
let kCFURLIsMountTriggerKey: CFString!
@available(macOS 10.10, *)
let kCFURLGenerationIdentifierKey: CFString!
@available(macOS 10.10, *)
let kCFURLDocumentIdentifierKey: CFString!
@available(macOS 10.10, *)
let kCFURLAddedToDirectoryDateKey: CFString!
@available(macOS 10.10, *)
let kCFURLQuarantinePropertiesKey: CFString!
@available(macOS 10.7, *)
let kCFURLFileResourceTypeKey: CFString!
@available(macOS 10.7, *)
let kCFURLFileResourceTypeNamedPipe: CFString!
@available(macOS 10.7, *)
let kCFURLFileResourceTypeCharacterSpecial: CFString!
@available(macOS 10.7, *)
let kCFURLFileResourceTypeDirectory: CFString!
@available(macOS 10.7, *)
let kCFURLFileResourceTypeBlockSpecial: CFString!
@available(macOS 10.7, *)
let kCFURLFileResourceTypeRegular: CFString!
@available(macOS 10.7, *)
let kCFURLFileResourceTypeSymbolicLink: CFString!
@available(macOS 10.7, *)
let kCFURLFileResourceTypeSocket: CFString!
@available(macOS 10.7, *)
let kCFURLFileResourceTypeUnknown: CFString!
@available(macOS 10.6, *)
let kCFURLFileSizeKey: CFString!
@available(macOS 10.6, *)
let kCFURLFileAllocatedSizeKey: CFString!
@available(macOS 10.7, *)
let kCFURLTotalFileSizeKey: CFString!
@available(macOS 10.7, *)
let kCFURLTotalFileAllocatedSizeKey: CFString!
@available(macOS 10.6, *)
let kCFURLIsAliasFileKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeLocalizedFormatDescriptionKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeTotalCapacityKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeAvailableCapacityKey: CFString!
@available(macOS 10.13, *)
let kCFURLVolumeAvailableCapacityForImportantUsageKey: CFString!
@available(macOS 10.13, *)
let kCFURLVolumeAvailableCapacityForOpportunisticUsageKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeResourceCountKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeSupportsPersistentIDsKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeSupportsSymbolicLinksKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeSupportsHardLinksKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeSupportsJournalingKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeIsJournalingKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeSupportsSparseFilesKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeSupportsZeroRunsKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeSupportsCaseSensitiveNamesKey: CFString!
@available(macOS 10.6, *)
let kCFURLVolumeSupportsCasePreservedNamesKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeSupportsRootDirectoryDatesKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeSupportsVolumeSizesKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeSupportsRenamingKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeSupportsAdvisoryFileLockingKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeSupportsExtendedSecurityKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeIsBrowsableKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeMaximumFileSizeKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeIsEjectableKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeIsRemovableKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeIsInternalKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeIsAutomountedKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeIsLocalKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeIsReadOnlyKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeCreationDateKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeURLForRemountingKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeUUIDStringKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeNameKey: CFString!
@available(macOS 10.7, *)
let kCFURLVolumeLocalizedNameKey: CFString!
@available(macOS 10.12, *)
let kCFURLVolumeIsEncryptedKey: CFString!
@available(macOS 10.12, *)
let kCFURLVolumeIsRootFileSystemKey: CFString!
@available(macOS 10.12, *)
let kCFURLVolumeSupportsCompressionKey: CFString!
@available(macOS 10.12, *)
let kCFURLVolumeSupportsFileCloningKey: CFString!
@available(macOS 10.12, *)
let kCFURLVolumeSupportsSwapRenamingKey: CFString!
@available(macOS 10.12, *)
let kCFURLVolumeSupportsExclusiveRenamingKey: CFString!
@available(macOS 10.13, *)
let kCFURLVolumeSupportsImmutableFilesKey: CFString!
@available(macOS 10.13, *)
let kCFURLVolumeSupportsAccessPermissionsKey: CFString!
@available(macOS 11.0, *)
let kCFURLVolumeSupportsFileProtectionKey: CFString!
@available(macOS 10.7, *)
let kCFURLIsUbiquitousItemKey: CFString!
@available(macOS 10.7, *)
let kCFURLUbiquitousItemHasUnresolvedConflictsKey: CFString!
@available(macOS 10.7, *)
let kCFURLUbiquitousItemIsDownloadingKey: CFString!
@available(macOS 10.7, *)
let kCFURLUbiquitousItemIsUploadedKey: CFString!
@available(macOS 10.7, *)
let kCFURLUbiquitousItemIsUploadingKey: CFString!
@available(macOS 10.9, *)
let kCFURLUbiquitousItemDownloadingStatusKey: CFString!
@available(macOS 10.9, *)
let kCFURLUbiquitousItemDownloadingErrorKey: CFString!
@available(macOS 10.9, *)
let kCFURLUbiquitousItemUploadingErrorKey: CFString!
@available(macOS 10.9, *)
let kCFURLUbiquitousItemDownloadingStatusNotDownloaded: CFString!
@available(macOS 10.9, *)
let kCFURLUbiquitousItemDownloadingStatusDownloaded: CFString!
@available(macOS 10.9, *)
let kCFURLUbiquitousItemDownloadingStatusCurrent: CFString!
@available(macOS 10.6, *)
struct CFURLBookmarkCreationOptions : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var minimalBookmarkMask: CFURLBookmarkCreationOptions { get }
  static var suitableForBookmarkFile: CFURLBookmarkCreationOptions { get }
  @available(macOS 10.7, *)
  static var withSecurityScope: CFURLBookmarkCreationOptions { get }
  @available(macOS 10.7, *)
  static var securityScopeAllowOnlyReadAccess: CFURLBookmarkCreationOptions { get }
}
@available(macOS 10.6, *)
struct CFURLBookmarkResolutionOptions : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var cfurlBookmarkResolutionWithoutUIMask: CFURLBookmarkResolutionOptions { get }
  static var cfurlBookmarkResolutionWithoutMountingMask: CFURLBookmarkResolutionOptions { get }
  @available(macOS 10.7, *)
  static var cfurlBookmarkResolutionWithSecurityScope: CFURLBookmarkResolutionOptions { get }
  static var cfBookmarkResolutionWithoutUIMask: CFURLBookmarkResolutionOptions { get }
  static var cfBookmarkResolutionWithoutMountingMask: CFURLBookmarkResolutionOptions { get }
}
typealias CFURLBookmarkFileCreationOptions = CFOptionFlags
@available(macOS 10.6, *)
func CFURLCreateBookmarkData(_ allocator: CFAllocator!, _ url: CFURL!, _ options: CFURLBookmarkCreationOptions, _ resourcePropertiesToInclude: CFArray!, _ relativeToURL: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Unmanaged<CFData>!
@available(macOS 10.6, *)
func CFURLCreateByResolvingBookmarkData(_ allocator: CFAllocator!, _ bookmark: CFData!, _ options: CFURLBookmarkResolutionOptions, _ relativeToURL: CFURL!, _ resourcePropertiesToInclude: CFArray!, _ isStale: UnsafeMutablePointer<DarwinBoolean>!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Unmanaged<CFURL>!
@available(macOS 10.6, *)
func CFURLCreateResourcePropertiesForKeysFromBookmarkData(_ allocator: CFAllocator!, _ resourcePropertiesToReturn: CFArray!, _ bookmark: CFData!) -> Unmanaged<CFDictionary>!
@available(macOS 10.6, *)
func CFURLCreateResourcePropertyForKeyFromBookmarkData(_ allocator: CFAllocator!, _ resourcePropertyKey: CFString!, _ bookmark: CFData!) -> Unmanaged<CFTypeRef>!
@available(macOS 10.6, *)
func CFURLCreateBookmarkDataFromFile(_ allocator: CFAllocator!, _ fileURL: CFURL!, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Unmanaged<CFData>!
@available(macOS 10.6, *)
func CFURLWriteBookmarkDataToFile(_ bookmarkRef: CFData!, _ fileURL: CFURL!, _ options: CFURLBookmarkFileCreationOptions, _ errorRef: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
@available(macOS, introduced: 10.6, deprecated: 11.0, message: "The Carbon Alias Manager is deprecated. This function should only be used to convert Carbon AliasRecords to bookmark data.")
func CFURLCreateBookmarkDataFromAliasRecord(_ allocatorRef: CFAllocator!, _ aliasRecordDataRef: CFData!) -> Unmanaged<CFData>!
@available(macOS 10.7, *)
func CFURLStartAccessingSecurityScopedResource(_ url: CFURL!) -> Bool
@available(macOS 10.7, *)
func CFURLStopAccessingSecurityScopedResource(_ url: CFURL!)
