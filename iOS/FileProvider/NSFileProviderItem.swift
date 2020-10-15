
struct NSFileProviderItemIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSFileProviderItemIdentifier {
  @available(iOS 11.0, *)
  static let rootContainer: NSFileProviderItemIdentifier
  @available(iOS 11.0, *)
  static let workingSet: NSFileProviderItemIdentifier
}
@available(iOS 11.0, *)
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
  static var allowsAddingSubItems: NSFileProviderItemCapabilities { get }
  static var allowsContentEnumerating: NSFileProviderItemCapabilities { get }
  static var allowsAll: NSFileProviderItemCapabilities { get }
}
protocol NSFileProviderItemProtocol : NSObjectProtocol {
  var itemIdentifier: NSFileProviderItemIdentifier { get }
  var parentItemIdentifier: NSFileProviderItemIdentifier { get }
  var filename: String { get }
  @available(iOS, introduced: 11.0, deprecated: 100000)
  optional var typeIdentifier: String { get }
  optional var capabilities: NSFileProviderItemCapabilities { get }
  @NSCopying optional var documentSize: NSNumber? { get }
  @NSCopying optional var childItemCount: NSNumber? { get }
  optional var creationDate: Date? { get }
  optional var contentModificationDate: Date? { get }
  optional var lastUsedDate: Date? { get }
  optional var tagData: Data? { get }
  @NSCopying optional var favoriteRank: NSNumber? { get }
  optional var isTrashed: Bool { get }
  optional var isUploaded: Bool { get }
  optional var isUploading: Bool { get }
  optional var uploadingError: Error? { get }
  optional var isDownloaded: Bool { get }
  optional var isDownloading: Bool { get }
  optional var downloadingError: Error? { get }
  optional var isMostRecentVersionDownloaded: Bool { get }
  optional var isShared: Bool { get }
  optional var isSharedByCurrentUser: Bool { get }
  @available(iOS 9.0, *)
  optional var ownerNameComponents: PersonNameComponents? { get }
  @available(iOS 9.0, *)
  optional var mostRecentEditorNameComponents: PersonNameComponents? { get }
  optional var versionIdentifier: Data? { get }
  optional var userInfo: [AnyHashable : Any]? { get }
}
typealias NSFileProviderItem = NSFileProviderItemProtocol
