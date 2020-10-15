
@available(watchOS 2.0, *)
class NSURLConnection : NSObject {
  @available(watchOS 2.0, *)
  var originalRequest: URLRequest { get }
  @available(watchOS 2.0, *)
  var currentRequest: URLRequest { get }
  @available(watchOS 2.0, *)
  func start()
  func cancel()
  @available(watchOS 2.0, *)
  func schedule(in aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  @available(watchOS 2.0, *)
  func unschedule(from aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  @available(watchOS 2.0, *)
  func setDelegateQueue(_ queue: OperationQueue?)
  class func canHandle(_ request: URLRequest) -> Bool
}
@available(watchOS 2.0, *)
protocol NSURLConnectionDelegate : NSObjectProtocol {
  @asyncHandler optional func connection(_ connection: NSURLConnection, didFailWithError error: Error)
  optional func connectionShouldUseCredentialStorage(_ connection: NSURLConnection) -> Bool
  optional func connection(_ connection: NSURLConnection, willSendRequestFor challenge: URLAuthenticationChallenge)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(_ connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: URLProtectionSpace) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  @asyncHandler optional func connection(_ connection: NSURLConnection, didReceive challenge: URLAuthenticationChallenge)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  @asyncHandler optional func connection(_ connection: NSURLConnection, didCancel challenge: URLAuthenticationChallenge)
}
@available(watchOS 2.0, *)
protocol NSURLConnectionDataDelegate : NSURLConnectionDelegate {
  optional func connection(_ connection: NSURLConnection, willSend request: URLRequest, redirectResponse response: URLResponse?) -> URLRequest?
  @asyncHandler optional func connection(_ connection: NSURLConnection, didReceive response: URLResponse)
  @asyncHandler optional func connection(_ connection: NSURLConnection, didReceive data: Data)
  optional func connection(_ connection: NSURLConnection, needNewBodyStream request: URLRequest) -> InputStream?
  @asyncHandler optional func connection(_ connection: NSURLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten: Int, totalBytesExpectedToWrite: Int)
  optional func connection(_ connection: NSURLConnection, willCacheResponse cachedResponse: CachedURLResponse) -> CachedURLResponse?
  @asyncHandler optional func connectionDidFinishLoading(_ connection: NSURLConnection)
}
@available(watchOS 2.0, *)
protocol NSURLConnectionDownloadDelegate : NSURLConnectionDelegate {
  @asyncHandler optional func connection(_ connection: NSURLConnection, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  @asyncHandler optional func connectionDidResumeDownloading(_ connection: NSURLConnection, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  @asyncHandler func connectionDidFinishDownloading(_ connection: NSURLConnection, destinationURL: URL)
}
extension NSURLConnection {
}
extension NSURLConnection {
}
