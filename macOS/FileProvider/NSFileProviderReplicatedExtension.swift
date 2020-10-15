
@available(macOS 11.0, *)
struct NSFileProviderCreateItemOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var mayAlreadyExist: NSFileProviderCreateItemOptions { get }
}
@available(macOS 11.0, *)
struct NSFileProviderDeleteItemOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var recursive: NSFileProviderDeleteItemOptions { get }
}
@available(macOS 11.0, *)
struct NSFileProviderModifyItemOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var mayAlreadyExist: NSFileProviderModifyItemOptions { get }
}
@available(macOS 11.0, *)
struct NSFileProviderItemFields : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var contents: NSFileProviderItemFields { get }
  static var filename: NSFileProviderItemFields { get }
  static var parentItemIdentifier: NSFileProviderItemFields { get }
  static var lastUsedDate: NSFileProviderItemFields { get }
  static var tagData: NSFileProviderItemFields { get }
  static var favoriteRank: NSFileProviderItemFields { get }
  static var creationDate: NSFileProviderItemFields { get }
  static var contentModificationDate: NSFileProviderItemFields { get }
  static var fileSystemFlags: NSFileProviderItemFields { get }
  static var extendedAttributes: NSFileProviderItemFields { get }
}
@available(macOS 11.0, *)
protocol NSFileProviderEnumerating : NSObjectProtocol {
  func enumerator(for containerItemIdentifier: NSFileProviderItemIdentifier, request: NSFileProviderRequest) throws -> NSFileProviderEnumerator
}
@available(macOS 11.0, *)
protocol NSFileProviderReplicatedExtension : NSFileProviderEnumerating {
  init(domain: NSFileProviderDomain)
  func invalidate()
  func item(for identifier: NSFileProviderItemIdentifier, request: NSFileProviderRequest, completionHandler: @escaping (NSFileProviderItem?, Error?) -> Void) -> Progress
  func fetchContents(for itemIdentifier: NSFileProviderItemIdentifier, version requestedVersion: NSFileProviderItemVersion?, request: NSFileProviderRequest, completionHandler: @escaping (URL?, NSFileProviderItem?, Error?) -> Void) -> Progress
  func createItem(basedOn itemTemplate: NSFileProviderItem, fields: NSFileProviderItemFields, contents url: URL?, options: NSFileProviderCreateItemOptions = [], request: NSFileProviderRequest, completionHandler: @escaping (NSFileProviderItem?, NSFileProviderItemFields, Bool, Error?) -> Void) -> Progress
  func modifyItem(_ item: NSFileProviderItem, baseVersion version: NSFileProviderItemVersion, changedFields: NSFileProviderItemFields, contents newContents: URL?, options: NSFileProviderModifyItemOptions = [], request: NSFileProviderRequest, completionHandler: @escaping (NSFileProviderItem?, NSFileProviderItemFields, Bool, Error?) -> Void) -> Progress
  func deleteItem(identifier: NSFileProviderItemIdentifier, baseVersion version: NSFileProviderItemVersion, options: NSFileProviderDeleteItemOptions = [], request: NSFileProviderRequest, completionHandler: @escaping (Error?) -> Void) -> Progress
  optional func importDidFinish(completionHandler: @escaping () -> Void)
  optional func materializedItemsDidChange(completionHandler: @escaping () -> Void)
}
@available(macOS 11.0, *)
protocol NSFileProviderIncrementalContentFetching : NSObjectProtocol {
  func fetchContents(for itemIdentifier: NSFileProviderItemIdentifier, version requestedVersion: NSFileProviderItemVersion?, usingExistingContentsAt existingContents: URL, existingVersion: NSFileProviderItemVersion, request: NSFileProviderRequest, completionHandler: @escaping (URL?, NSFileProviderItem?, Error?) -> Void) -> Progress
}
@available(macOS 11.0, *)
protocol NSFileProviderServicing : NSObjectProtocol {
  func supportedServiceSources(for itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping ([NSFileProviderServiceSource]?, Error?) -> Void) -> Progress
}
@available(macOS 11.0, *)
protocol NSFileProviderThumbnailing : NSObjectProtocol {
  func fetchThumbnails(for itemIdentifiers: [NSFileProviderItemIdentifier], requestedSize size: CGSize, perThumbnailCompletionHandler: @escaping (NSFileProviderItemIdentifier, Data?, Error?) -> Void, completionHandler: @escaping (Error?) -> Void) -> Progress
}
@available(macOS 11.0, *)
protocol NSFileProviderCustomAction : NSObjectProtocol {
  func performAction(identifier actionIdentifier: NSFileProviderExtensionActionIdentifier, onItemsWithIdentifiers itemIdentifiers: [NSFileProviderItemIdentifier], completionHandler: @escaping (Error?) -> Void) -> Progress
}
