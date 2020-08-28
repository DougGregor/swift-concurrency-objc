
extension URLCache {
  enum StoragePolicy : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case allowed
    case allowedInMemoryOnly
    case notAllowed
  }
}
@available(watchOS 2.0, *)
class CachedURLResponse : NSObject, NSSecureCoding, NSCopying {
  init(response: URLResponse, data: Data)
  init(response: URLResponse, data: Data, userInfo: [AnyHashable : Any]? = nil, storagePolicy: URLCache.StoragePolicy)
  @NSCopying var response: URLResponse { get }
  var data: Data { get }
  var userInfo: [AnyHashable : Any]? { get }
  var storagePolicy: URLCache.StoragePolicy { get }
}
@available(watchOS 2.0, *)
class URLCache : NSObject {
  class var shared: URLCache
  @available(watchOS, introduced: 2.0, deprecated: 100000)
  init(memoryCapacity: Int, diskCapacity: Int, diskPath path: String?)
  @available(watchOS 6.0, *)
  init(__memoryCapacity memoryCapacity: Int, diskCapacity: Int, directoryURL: URL?)
  func cachedResponse(for request: URLRequest) -> CachedURLResponse?
  func storeCachedResponse(_ cachedResponse: CachedURLResponse, for request: URLRequest)
  func removeCachedResponse(for request: URLRequest)
  func removeAllCachedResponses()
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  func storeCachedResponse(_ cachedResponse: CachedURLResponse, for dataTask: URLSessionDataTask)
  @available(watchOS 2.0, *)
  func getCachedResponse(for dataTask: URLSessionDataTask, completionHandler: @escaping (CachedURLResponse?) -> Void)
  @available(watchOS 2.0, *)
  func removeCachedResponse(for dataTask: URLSessionDataTask)
}
