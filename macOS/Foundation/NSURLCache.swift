
extension URLCache {
  enum StoragePolicy : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case allowed
    case allowedInMemoryOnly
    case notAllowed
  }
}
@available(macOS 10.2, *)
class CachedURLResponse : NSObject, NSSecureCoding, NSCopying {
  init(response: URLResponse, data: Data)
  init(response: URLResponse, data: Data, userInfo: [AnyHashable : Any]? = nil, storagePolicy: URLCache.StoragePolicy)
  @NSCopying var response: URLResponse { get }
  var data: Data { get }
  var userInfo: [AnyHashable : Any]? { get }
  var storagePolicy: URLCache.StoragePolicy { get }
}
@available(macOS 10.2, *)
class URLCache : NSObject {
  class var shared: URLCache
  @available(macOS, introduced: 10.2, deprecated: 100000)
  init(memoryCapacity: Int, diskCapacity: Int, diskPath path: String?)
  @available(macOS 10.15, *)
  init(__memoryCapacity memoryCapacity: Int, diskCapacity: Int, directoryURL: URL?)
  func cachedResponse(for request: URLRequest) -> CachedURLResponse?
  func storeCachedResponse(_ cachedResponse: CachedURLResponse, for request: URLRequest)
  func removeCachedResponse(for request: URLRequest)
  func removeAllCachedResponses()
  @available(macOS 10.10, *)
  func removeCachedResponses(since date: Date)
  var memoryCapacity: Int
  var diskCapacity: Int
  var currentMemoryUsage: Int { get }
  var currentDiskUsage: Int { get }
}

extension URLCache {
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  convenience init(memoryCapacity: Int, diskCapacity: Int, directory: URL? = nil)
}
extension URLCache {
  @available(macOS 10.10, *)
  func storeCachedResponse(_ cachedResponse: CachedURLResponse, for dataTask: URLSessionDataTask)
  @available(macOS 10.10, *)
  func getCachedResponse(for dataTask: URLSessionDataTask, completionHandler: @escaping (CachedURLResponse?) -> Void)
  @available(macOS 10.10, *)
  func removeCachedResponse(for dataTask: URLSessionDataTask)
}
