
class FIFinderSyncController : NSExtensionContext {
  class func `default`() -> Self
  var directoryURLs: Set<URL>!
  func setBadgeImage(_ image: NSImage, label: String?, forBadgeIdentifier badgeID: String)
  func setBadgeIdentifier(_ badgeID: String, for url: URL)
  func targetedURL() -> URL?
  func selectedItemURLs() -> [URL]?
  func lastUsedDateForItem(with itemURL: URL) -> Date?
  func setLastUsedDate(_ lastUsedDate: Date, forItemWith itemURL: URL, completion: @escaping (Error) -> Void)
  func setLastUsedDate(_ lastUsedDate: Date, forItemWith itemURL: URL) async -> Error
  func tagDataForItem(with itemURL: URL) -> Data?
  func setTagData(_ tagData: Data?, forItemWith itemURL: URL, completion: @escaping (Error) -> Void)
  func setTagData(_ tagData: Data?, forItemWith itemURL: URL) async -> Error
  @available(macOS 10.14, *)
  class var isExtensionEnabled: Bool { get }
  @available(macOS 10.14, *)
  class func showExtensionManagementInterface()
}
enum FIMenuKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case contextualMenuForItems
  case contextualMenuForContainer
  case contextualMenuForSidebar
  case toolbarItemMenu
}
protocol FIFinderSyncProtocol {
  optional func menu(for menu: FIMenuKind) -> NSMenu?
  optional func beginObservingDirectory(at url: URL)
  optional func endObservingDirectory(at url: URL)
  optional func requestBadgeIdentifier(for url: URL)
  optional var toolbarItemName: String { get }
  @NSCopying optional var toolbarItemImage: NSImage { get }
  optional var toolbarItemToolTip: String { get }
  optional func supportedServiceNamesForItem(with itemURL: URL) -> [NSFileProviderServiceName]
  @available(macOS 10.8, *)
  optional func makeListenerEndpoint(forServiceName serviceName: NSFileProviderServiceName, itemURL: URL) throws -> NSXPCListenerEndpoint
  optional func values(forAttributes attributes: [URLResourceKey], forItemWith itemURL: URL, completion: @escaping ([URLResourceKey : Any], Error?) -> Void)
  optional func values(forAttributes attributes: [URLResourceKey], forItemWith itemURL: URL) async throws -> [URLResourceKey : Any]
}
class FIFinderSync : NSObject, FIFinderSyncProtocol, NSExtensionRequestHandling {
}
