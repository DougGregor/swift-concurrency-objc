
@available(iOS 2.0, *)
class URLCredentialStorage : NSObject {
  class var shared: URLCredentialStorage { get }
  func credentials(for space: URLProtectionSpace) -> [String : URLCredential]?
  var allCredentials: [URLProtectionSpace : [String : URLCredential]] { get }
  func set(_ credential: URLCredential, for space: URLProtectionSpace)
  func remove(_ credential: URLCredential, for space: URLProtectionSpace)
  @available(iOS 7.0, *)
  func remove(_ credential: URLCredential, for space: URLProtectionSpace, options: [String : Any]? = nil)
  func defaultCredential(for space: URLProtectionSpace) -> URLCredential?
  func setDefaultCredential(_ credential: URLCredential, for space: URLProtectionSpace)
}
extension URLCredentialStorage {
  @available(iOS 8.0, *)
  func getCredentials(for protectionSpace: URLProtectionSpace, task: URLSessionTask, completionHandler: @escaping ([String : URLCredential]?) -> Void)
  @available(iOS 8.0, *)
  func set(_ credential: URLCredential, for protectionSpace: URLProtectionSpace, task: URLSessionTask)
  @available(iOS 8.0, *)
  func remove(_ credential: URLCredential, for protectionSpace: URLProtectionSpace, options: [String : Any]? = nil, task: URLSessionTask)
  @available(iOS 8.0, *)
  func getDefaultCredential(for space: URLProtectionSpace, task: URLSessionTask, completionHandler: @escaping (URLCredential?) -> Void)
  @available(iOS 8.0, *)
  func setDefaultCredential(_ credential: URLCredential, for protectionSpace: URLProtectionSpace, task: URLSessionTask)
}
extension NSNotification.Name {
  @available(iOS 2.0, *)
  static let NSURLCredentialStorageChanged: NSNotification.Name
}
@available(iOS 7.0, *)
let NSURLCredentialStorageRemoveSynchronizableCredentials: String
