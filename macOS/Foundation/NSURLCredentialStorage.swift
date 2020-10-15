
@available(macOS 10.2, *)
class URLCredentialStorage : NSObject {
  class var shared: URLCredentialStorage { get }
  func credentials(for space: URLProtectionSpace) -> [String : URLCredential]?
  var allCredentials: [URLProtectionSpace : [String : URLCredential]] { get }
  func set(_ credential: URLCredential, for space: URLProtectionSpace)
  func remove(_ credential: URLCredential, for space: URLProtectionSpace)
  @available(macOS 10.9, *)
  func remove(_ credential: URLCredential, for space: URLProtectionSpace, options: [String : Any]? = nil)
  func defaultCredential(for space: URLProtectionSpace) -> URLCredential?
  func setDefaultCredential(_ credential: URLCredential, for space: URLProtectionSpace)
}
extension URLCredentialStorage {
  @available(macOS 10.10, *)
  func getCredentials(for protectionSpace: URLProtectionSpace, task: URLSessionTask, completionHandler: @escaping ([String : URLCredential]?) -> Void)
  @available(macOS 10.10, *)
  func getCredentials(for protectionSpace: URLProtectionSpace, task: URLSessionTask) async -> [String : URLCredential]?
  @available(macOS 10.10, *)
  func set(_ credential: URLCredential, for protectionSpace: URLProtectionSpace, task: URLSessionTask)
  @available(macOS 10.10, *)
  func remove(_ credential: URLCredential, for protectionSpace: URLProtectionSpace, options: [String : Any]? = nil, task: URLSessionTask)
  @available(macOS 10.10, *)
  func getDefaultCredential(for space: URLProtectionSpace, task: URLSessionTask, completionHandler: @escaping (URLCredential?) -> Void)
  @available(macOS 10.10, *)
  func getDefaultCredential(for space: URLProtectionSpace, task: URLSessionTask) async -> URLCredential?
  @available(macOS 10.10, *)
  func setDefaultCredential(_ credential: URLCredential, for protectionSpace: URLProtectionSpace, task: URLSessionTask)
}
extension NSNotification.Name {
  @available(macOS 10.2, *)
  static let NSURLCredentialStorageChanged: NSNotification.Name
}
@available(macOS 10.9, *)
let NSURLCredentialStorageRemoveSynchronizableCredentials: String
