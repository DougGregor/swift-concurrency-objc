
extension NSFileProviderExtension {
}
@available(macOS 11.0, *)
class NSFileProviderManager : NSObject {
  convenience init?(for domain: NSFileProviderDomain)
  func signalEnumerator(for containerItemIdentifier: NSFileProviderItemIdentifier, completionHandler completion: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func getUserVisibleURL(for itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (URL?, Error?) -> Void)
  @available(macOS 11.0, *)
  class func getIdentifierForUserVisibleFile(at url: URL, completionHandler: @escaping (NSFileProviderItemIdentifier?, NSFileProviderDomainIdentifier?, Error?) -> Void)
  func register(_ task: URLSessionTask, forItemWithIdentifier identifier: NSFileProviderItemIdentifier, completionHandler completion: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func temporaryDirectoryURL() throws -> URL
  class func add(_ domain: NSFileProviderDomain, completionHandler: @escaping (Error?) -> Void)
  class func remove(_ domain: NSFileProviderDomain, completionHandler: @escaping (Error?) -> Void)
  class func getDomainsWithCompletionHandler(_ completionHandler: @escaping ([NSFileProviderDomain], Error?) -> Void)
  class func removeAllDomains(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func signalErrorResolved(_ error: Error, completionHandler: @escaping (Error?) -> Void)
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  func enumeratorForMaterializedItems() -> NSFileProviderEnumerator
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  class func `import`(_ domain: NSFileProviderDomain, fromDirectoryAt url: URL, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func reimportItems(below itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (Error?) -> Void)
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  func evictItem(identifier itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (Error?) -> Void)
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  func waitForChanges(below itemIdentifier: NSFileProviderItemIdentifier, completionHandler: @escaping (Error?) -> Void)
}
extension NSFileProviderManager {
  @available(macOS 11.0, *)
  func waitForStabilization(completionHandler: @escaping (Error?) -> Void)
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
  func reconnect(completionHandler: @escaping (Error?) -> Void)
}
