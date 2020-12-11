
extension NSFileProviderExtension {
}
@available(macOS 11.0, *)
class NSFileProviderManager : NSObject {
  convenience init?(for domain: NSFileProviderDomain)
  func signalEnumerator(for containerItemIdentifier: NSFileProviderItemIdentifier, completionHandler completion: @escaping (Error?) -> Void)
  func signalEnumerator(for containerItemIdentifier: NSFileProviderItemIdentifier) async throws
  @available(macOS 11.0, *)
  func getUserVisibleURL(for itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (URL?, Error?) -> Void)
  @available(macOS 11.0, *)
  func getUserVisibleURL(for itemIdentifier: NSFileProviderItemIdentifier) async throws -> URL
  @available(macOS 11.0, *)
  class func getIdentifierForUserVisibleFile(at url: URL, completionHandler: @escaping (NSFileProviderItemIdentifier?, NSFileProviderDomainIdentifier?, Error?) -> Void)
  @available(macOS 11.0, *)
  class func identifierForUserVisibleFile(at url: URL) async throws -> (NSFileProviderItemIdentifier, NSFileProviderDomainIdentifier)
  func register(_ task: URLSessionTask, forItemWithIdentifier identifier: NSFileProviderItemIdentifier, completionHandler completion: @escaping (Error?) -> Void)
  func register(_ task: URLSessionTask, forItemWithIdentifier identifier: NSFileProviderItemIdentifier) async throws
  @available(macOS 11.0, *)
  func temporaryDirectoryURL() throws -> URL
  class func add(_ domain: NSFileProviderDomain, completionHandler: @escaping (Error?) -> Void)
  class func add(_ domain: NSFileProviderDomain) async throws
  class func remove(_ domain: NSFileProviderDomain, completionHandler: @escaping (Error?) -> Void)
  class func remove(_ domain: NSFileProviderDomain) async throws
  class func getDomainsWithCompletionHandler(_ completionHandler: @escaping ([NSFileProviderDomain], Error?) -> Void)
  class func domains() async throws -> [NSFileProviderDomain]
  class func removeAllDomains(completionHandler: @escaping (Error?) -> Void)
  class func removeAllDomains() async throws
  @available(macOS 11.0, *)
  func signalErrorResolved(_ error: Error, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func signalErrorResolved(_ error: Error) async throws
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  func enumeratorForMaterializedItems() -> NSFileProviderEnumerator
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  class func `import`(_ domain: NSFileProviderDomain, fromDirectoryAt url: URL, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  class func `import`(_ domain: NSFileProviderDomain, fromDirectoryAt url: URL) async throws
  @available(macOS 11.0, *)
  func reimportItems(below itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func reimportItems(below itemIdentifier: NSFileProviderItemIdentifier) async throws
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  func evictItem(identifier itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func evictItem(identifier itemIdentifier: NSFileProviderItemIdentifier) async throws
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  func waitForChanges(below itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func waitForChanges(below itemIdentifier: NSFileProviderItemIdentifier) async throws
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  func waitForStabilization(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func waitForStabilization() async throws
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  struct DisconnectionOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var temporary: NSFileProviderManager.DisconnectionOptions { get }
  }
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  func disconnect(reason localizedReason: String, options: NSFileProviderManager.DisconnectionOptions = [], completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func disconnect(reason localizedReason: String, options: NSFileProviderManager.DisconnectionOptions = []) async throws
  @available(macOS 11.0, *)
  func reconnect(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func reconnect() async throws
}
