
struct NSFileProviderItemIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSFileProviderItemIdentifier {
  @available(macOS 11.0, *)
  static let rootContainer: NSFileProviderItemIdentifier
  @available(macOS 11.0, *)
  static let workingSet: NSFileProviderItemIdentifier
  @available(macOS 11.0, *)
  static let trashContainer: NSFileProviderItemIdentifier
}
@available(macOS 11.0, *)
class NSFileProviderItemVersion : NSObject {
  init(contentVersion: Data, metadataVersion: Data)
  var contentVersion: Data { get }
  var metadataVersion: Data { get }
}
@available(macOS 11.0, *)
let NSFileProviderFavoriteRankUnranked: UInt64
struct NSFileProviderItemCapabilities : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var allowsReading: NSFileProviderItemCapabilities { get }
  static var allowsWriting: NSFileProviderItemCapabilities { get }
  static var allowsReparenting: NSFileProviderItemCapabilities { get }
  static var allowsRenaming: NSFileProviderItemCapabilities { get }
  static var allowsTrashing: NSFileProviderItemCapabilities { get }
  static var allowsDeleting: NSFileProviderItemCapabilities { get }
  @available(macOS 11.0, *)
  static var allowsEvicting: NSFileProviderItemCapabilities { get }
  static var allowsAddingSubItems: NSFileProviderItemCapabilities { get }
  static var allowsContentEnumerating: NSFileProviderItemCapabilities { get }
  static var allowsAll: NSFileProviderItemCapabilities { get }
}
@available(macOS 11.0, *)
struct NSFileProviderFileSystemFlags : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var userExecutable: NSFileProviderFileSystemFlags { get }
  static var userReadable: NSFileProviderFileSystemFlags { get }
  static var userWritable: NSFileProviderFileSystemFlags { get }
  static var hidden: NSFileProviderFileSystemFlags { get }
  static var pathExtensionHidden: NSFileProviderFileSystemFlags { get }
}
protocol NSFileProviderItemProtocol : NSObjectProtocol {
  var itemIdentifier: NSFileProviderItemIdentifier { get }
  var parentItemIdentifier: NSFileProviderItemIdentifier { get }
  var filename: String { get }
  optional var capabilities: NSFileProviderItemCapabilities { get }
  @available(macOS 11.0, *)
  optional var fileSystemFlags: NSFileProviderFileSystemFlags { get }
  @NSCopying optional var documentSize: NSNumber? { get }
  @NSCopying optional var childItemCount: NSNumber? { get }
  optional var creationDate: Date? { get }
  optional var contentModificationDate: Date? { get }
  @available(macOS 11.0, *)
  optional var extendedAttributes: [String : Data] { get }
  optional var lastUsedDate: Date? { get }
  optional var tagData: Data? { get }
  @NSCopying optional var favoriteRank: NSNumber? { get }
  optional var isUploaded: Bool { get }
  optional var isUploading: Bool { get }
  optional var uploadingError: Error? { get }
  optional var isDownloaded: Bool { get }
  optional var isDownloading: Bool { get }
  optional var downloadingError: Error? { get }
  @available(macOS 11.0, *)
  optional var isExcludedFromSync: Bool { get }
  optional var isMostRecentVersionDownloaded: Bool { get }
  optional var isShared: Bool { get }
  optional var isSharedByCurrentUser: Bool { get }
  @available(macOS 10.11, *)
  optional var ownerNameComponents: PersonNameComponents? { get }
  @available(macOS 10.11, *)
  optional var mostRecentEditorNameComponents: PersonNameComponents? { get }
  @available(macOS 11.0, *)
  optional var itemVersion: NSFileProviderItemVersion { get }
  @available(macOS 11.0, *)
  optional var symlinkTargetPath: String? { get }
  optional var userInfo: [AnyHashable : Any]? { get }
}
typealias NSFileProviderItem = NSFileProviderItemProtocol
