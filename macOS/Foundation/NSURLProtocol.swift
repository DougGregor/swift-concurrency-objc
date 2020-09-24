
@available(macOS 10.2, *)
protocol URLProtocolClient : NSObjectProtocol {
  func urlProtocol(_ protocol: URLProtocol, wasRedirectedTo request: URLRequest, redirectResponse: URLResponse)
  func urlProtocol(_ protocol: URLProtocol, cachedResponseIsValid cachedResponse: CachedURLResponse)
  @asyncHandler func urlProtocol(_ protocol: URLProtocol, didReceive response: URLResponse, cacheStoragePolicy policy: URLCache.StoragePolicy)
  @asyncHandler func urlProtocol(_ protocol: URLProtocol, didLoad data: Data)
  @asyncHandler func urlProtocolDidFinishLoading(_ protocol: URLProtocol)
  @asyncHandler func urlProtocol(_ protocol: URLProtocol, didFailWithError error: Error)
  @asyncHandler func urlProtocol(_ protocol: URLProtocol, didReceive challenge: URLAuthenticationChallenge)
  @asyncHandler func urlProtocol(_ protocol: URLProtocol, didCancel challenge: URLAuthenticationChallenge)
}
@available(macOS 10.2, *)
class URLProtocol : NSObject {
  init(request: URLRequest, cachedResponse: CachedURLResponse?, client: URLProtocolClient?)
  var client: URLProtocolClient? { get }
  var request: URLRequest { get }
  @NSCopying var cachedResponse: CachedURLResponse? { get }
  class func canInit(with request: URLRequest) -> Bool
  class func canonicalRequest(for request: URLRequest) -> URLRequest
  class func requestIsCacheEquivalent(_ a: URLRequest, to b: URLRequest) -> Bool
  func startLoading()
  func stopLoading()
  class func property(forKey key: String, in request: URLRequest) -> Any?
  class func setProperty(_ value: Any, forKey key: String, in request: NSMutableURLRequest)
  class func removeProperty(forKey key: String, in request: NSMutableURLRequest)
  class func registerClass(_ protocolClass: AnyClass) -> Bool
  class func unregisterClass(_ protocolClass: AnyClass)
}
extension URLProtocol {
  @available(macOS 10.10, *)
  class func canInit(with task: URLSessionTask) -> Bool
  @available(macOS 10.10, *)
  convenience init(task: URLSessionTask, cachedResponse: CachedURLResponse?, client: URLProtocolClient?)
  @available(macOS 10.10, *)
  @NSCopying var task: URLSessionTask? { get }
}
