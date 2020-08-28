
@available(macOS 10.2, *)
class NSURLConnection : NSObject {
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use NSURLSession (see NSURLSession.h)")
  init?(request: URLRequest, delegate: Any?, startImmediately: Bool)
  @available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use NSURLSession (see NSURLSession.h)")
  init?(request: URLRequest, delegate: Any?)
  @available(macOS 10.8, *)
  var originalRequest: URLRequest { get }
  @available(macOS 10.8, *)
  var currentRequest: URLRequest { get }
  @available(macOS 10.5, *)
  func start()
  func cancel()
  @available(macOS 10.5, *)
  func schedule(in aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  @available(macOS 10.5, *)
  func unschedule(from aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  @available(macOS 10.7, *)
  func setDelegateQueue(_ queue: OperationQueue?)
  class func canHandle(_ request: URLRequest) -> Bool
}
@available(macOS 10.2, *)
protocol NSURLConnectionDelegate : NSObjectProtocol {
  optional func connection(_ connection: NSURLConnection, didFailWithError error: Error)
  optional func connectionShouldUseCredentialStorage(_ connection: NSURLConnection) -> Bool
  optional func connection(_ connection: NSURLConnection, willSendRequestFor challenge: URLAuthenticationChallenge)
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(_ connection: NSURLConnection, canAuthenticateAgainstProtectionSpace protectionSpace: URLProtectionSpace) -> Bool
  @available(macOS, introduced: 10.2, deprecated: 10.10, message: "Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(_ connection: NSURLConnection, didReceive challenge: URLAuthenticationChallenge)
  @available(macOS, introduced: 10.2, deprecated: 10.10, message: "Use -connection:willSendRequestForAuthenticationChallenge: instead.")
  optional func connection(_ connection: NSURLConnection, didCancel challenge: URLAuthenticationChallenge)
}
@available(macOS 10.2, *)
protocol NSURLConnectionDataDelegate : NSURLConnectionDelegate {
  optional func connection(_ connection: NSURLConnection, willSend request: URLRequest, redirectResponse response: URLResponse?) -> URLRequest?
  optional func connection(_ connection: NSURLConnection, didReceive response: URLResponse)
  optional func connection(_ connection: NSURLConnection, didReceive data: Data)
  optional func connection(_ connection: NSURLConnection, needNewBodyStream request: URLRequest) -> InputStream?
  optional func connection(_ connection: NSURLConnection, didSendBodyData bytesWritten: Int, totalBytesWritten: Int, totalBytesExpectedToWrite: Int)
  optional func connection(_ connection: NSURLConnection, willCacheResponse cachedResponse: CachedURLResponse) -> CachedURLResponse?
  optional func connectionDidFinishLoading(_ connection: NSURLConnection)
}
@available(macOS 10.2, *)
protocol NSURLConnectionDownloadDelegate : NSURLConnectionDelegate {
  optional func connection(_ connection: NSURLConnection, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  optional func connectionDidResumeDownloading(_ connection: NSURLConnection, totalBytesWritten: Int64, expectedTotalBytes: Int64)
  func connectionDidFinishDownloading(_ connection: NSURLConnection, destinationURL: URL)
}
extension NSURLConnection {
  @available(macOS, introduced: 10.3, deprecated: 10.11, message: "Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendSynchronousRequest(_ request: URLRequest, returning response: AutoreleasingUnsafeMutablePointer<URLResponse?>?) throws -> Data
}
extension NSURLConnection {
  @available(macOS, introduced: 10.7, deprecated: 10.11, message: "Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendAsynchronousRequest(_ request: URLRequest, queue: OperationQueue, completionHandler handler: @escaping (URLResponse?, Data?, Error?) -> Void)
  @available(macOS, introduced: 10.7, deprecated: 10.11, message: "Use [NSURLSession dataTaskWithRequest:completionHandler:] (see NSURLSession.h")
  class func sendAsynchronousRequest(_ request: URLRequest, queue: OperationQueue) async throws -> (URLResponse?, Data?)
}
