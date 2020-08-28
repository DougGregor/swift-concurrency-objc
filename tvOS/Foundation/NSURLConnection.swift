
@available(tvOS 9.0, *)
class NSURLConnection : NSObject {
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use NSURLSession (see NSURLSession.h)")
  init?(request: URLRequest, delegate: Any?, startImmediately: Bool)
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use NSURLSession (see NSURLSession.h)")
  init?(request: URLRequest, delegate: Any?)
  @available(tvOS 9.0, *)
  var originalRequest: URLRequest { get }
  @available(tvOS 9.0, *)
  var currentRequest: URLRequest { get }
  @available(tvOS 9.0, *)
  func start()
  func cancel()
  @available(tvOS 9.0, *)
  func schedule(in aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  @available(tvOS 9.0, *)
  func unschedule(from aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  @available(tvOS 9.0, *)
  func setDelegateQueue(_ queue: OperationQueue?)
  class func canHandle(_ request: URLRequest) -> Bool
}
@available(tvOS 9.0, *)
protocol NSURLConnectionDelegate : NSObjectProtocol {
  optional func connection(_ connection: NSURLConnection, didFailWithError error: Error)
  optional func connectionShouldUseCredentialStorage(_ connection: NSURLConnection) -> Bool
  optional func connection(_ connection: NSURLConnection, willSendRequestFor challenge: URLAuthenticationChallenge)
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(_ connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: URLProtectionSpace) -> Bool
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(_ connection: NSURLConnection, didReceive challenge: URLAuthenticationChallenge)
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(_ connection: NSURLConnection, didCancel challenge: URLAuthenticationChallenge)
}
@available(tvOS 9.0, *)
protocol NSURLConnectionDataDelegate : NSURLConnectionDelegate {
  optional func connection(_ connection: NSURLConnection, willSend request: URLRequest, redirectResponse response: URLResponse?) -> URLRequest?
  optional func connection(_ connection: NSURLConnection, didReceive response: URLResponse)
  optional func connection(_ connection: NSURLConnection, didReceive data: Data)
  optional func connection(_ connection: NSURLConnection, needNewBodyStream request: URLRequest) -> InputStream?
  optional func connection(_ connection: NSURLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten: Int, totalBytesExpectedToWrite: Int)
  optional func connection(_ connection: NSURLConnection, willCacheResponse cachedResponse: CachedURLResponse) -> CachedURLResponse?
  optional func connectionDidFinishLoading(_ connection: NSURLConnection)
}
@available(tvOS 9.0, *)
protocol NSURLConnectionDownloadDelegate : NSURLConnectionDelegate {
  optional func connection(_ connection: NSURLConnection, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  optional func connectionDidResumeDownloading(_ connection: NSURLConnection, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  func connectionDidFinishDownloading(_ connection: NSURLConnection, destinationURL: URL)
}
extension NSURLConnection {
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendSynchronousRequest(_ request: URLRequest, returning response: AutoreleasingUnsafeMutablePointer<URLResponse?>?) throws -> Data
}
extension NSURLConnection {
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendAsynchronousRequest(_ request: URLRequest, queue: OperationQueue, completionHandler handler: @escaping (URLResponse?, Data?, Error?) -> Void)
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendAsynchronousRequest(_ request: URLRequest, queue: OperationQueue) async throws -> (URLResponse?, Data?)
}
