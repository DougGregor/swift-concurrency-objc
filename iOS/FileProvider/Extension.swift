
@available(iOS 8.0, *)
class NSFileProviderExtension : NSObject {
  @available(iOS 11.0, *)
  func item(for identifier: NSFileProviderItemIdentifier) throws -> NSFileProviderItem
  func urlForItem(withPersistentIdentifier identifier: NSFileProviderItemIdentifier) -> URL?
  func persistentIdentifierForItem(at url: URL) -> NSFileProviderItemIdentifier?
  func providePlaceholder(at url: URL, completionHandler: @escaping (Error?) -> Void)
  func providePlaceholder(at url: URL) async throws
  func startProvidingItem(at url: URL, completionHandler: @escaping (Error?) -> Void)
  func startProvidingItem(at url: URL) async throws
  func stopProvidingItem(at url: URL)
  func itemChanged(at url: URL)
}
extension NSFileProviderExtension {
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use the corresponding method on NSFileProviderManager instead")
  class func writePlaceholder(at placeholderURL: URL, withMetadata metadata: [URLResourceKey : Any]) throws
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  class func placeholderURL(for url: URL) -> URL
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  var providerIdentifier: String { get }
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  var documentStorageURL: URL { get }
}
@available(iOS 11.0, *)
class NSFileProviderManager : NSObject {
  class var `default`: NSFileProviderManager { get }
  convenience init?(for domain: NSFileProviderDomain)
  func signalEnumerator(for containerItemIdentifier: NSFileProviderItemIdentifier, completionHandler completion: @escaping (Error?) -> Void)
  func signalEnumerator(for containerItemIdentifier: NSFileProviderItemIdentifier) async throws
  func register(_ task: URLSessionTask, forItemWithIdentifier identifier: NSFileProviderItemIdentifier, completionHandler completion: @escaping (Error?) -> Void)
  func register(_ task: URLSessionTask, forItemWithIdentifier identifier: NSFileProviderItemIdentifier) async throws
  var providerIdentifier: String { get }
  var documentStorageURL: URL { get }
  class func writePlaceholder(at placeholderURL: URL, withMetadata metadata: NSFileProviderItem) throws
  class func placeholderURL(for url: URL) -> URL
  class func add(_ domain: NSFileProviderDomain, completionHandler: @escaping (Error?) -> Void)
  class func add(_ domain: NSFileProviderDomain) async throws
  class func remove(_ domain: NSFileProviderDomain, completionHandler: @escaping (Error?) -> Void)
  class func remove(_ domain: NSFileProviderDomain) async throws
  class func getDomainsWithCompletionHandler(_ completionHandler: @escaping ([NSFileProviderDomain], Error?) -> Void)
  class func domains() async throws -> [NSFileProviderDomain]
  class func removeAllDomains(completionHandler: @escaping (Error?) -> Void)
  class func removeAllDomains() async throws
}
