
@available(macOS 10.9, *)
let NSURLSessionTransferSizeUnknown: Int64
@available(macOS 10.9, *)
class URLSession : NSObject {
  class var shared: URLSession { get }
  /*not inherited*/ init(configuration: URLSessionConfiguration)
  /*not inherited*/ init(configuration: URLSessionConfiguration, delegate: URLSessionDelegate?, delegateQueue queue: OperationQueue?)
  var delegateQueue: OperationQueue { get }
  var delegate: URLSessionDelegate? { get }
  @NSCopying var configuration: URLSessionConfiguration { get }
  var sessionDescription: String?
  func finishTasksAndInvalidate()
  func invalidateAndCancel()
  func reset(completionHandler: @escaping () -> Void)
  func reset() async
  func flush(completionHandler: @escaping () -> Void)
  func flush() async
  func getTasksWithCompletionHandler(_ completionHandler: @escaping ([URLSessionDataTask], [URLSessionUploadTask], [URLSessionDownloadTask]) -> Void)
  func tasks() async -> ([URLSessionDataTask], [URLSessionUploadTask], [URLSessionDownloadTask])
  @available(macOS 10.11, *)
  func getAllTasks(completionHandler: @escaping ([URLSessionTask]) -> Void)
  @available(macOS 10.11, *)
  func allTasks() async -> [URLSessionTask]
  func dataTask(with request: URLRequest) -> URLSessionDataTask
  func dataTask(with url: URL) -> URLSessionDataTask
  func uploadTask(with request: URLRequest, fromFile fileURL: URL) -> URLSessionUploadTask
  func uploadTask(with request: URLRequest, from bodyData: Data) -> URLSessionUploadTask
  func uploadTask(withStreamedRequest request: URLRequest) -> URLSessionUploadTask
  func downloadTask(with request: URLRequest) -> URLSessionDownloadTask
  func downloadTask(with url: URL) -> URLSessionDownloadTask
  func downloadTask(withResumeData resumeData: Data) -> URLSessionDownloadTask
  @available(macOS 10.11, *)
  func streamTask(withHostName hostname: String, port: Int) -> URLSessionStreamTask
  @available(macOS 10.11, *)
  func streamTask(with service: NetService) -> URLSessionStreamTask
  @available(macOS 10.15, *)
  func webSocketTask(with url: URL) -> URLSessionWebSocketTask
  @available(macOS 10.15, *)
  func webSocketTask(with url: URL, protocols: [String]) -> URLSessionWebSocketTask
  @available(macOS 10.15, *)
  func webSocketTask(with request: URLRequest) -> URLSessionWebSocketTask
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension URLSession {
  func dataTaskPublisher(for url: URL) -> URLSession.DataTaskPublisher
  func dataTaskPublisher(for request: URLRequest) -> URLSession.DataTaskPublisher
  struct DataTaskPublisher : Publisher {
    let request: URLRequest
    let session: URLSession
    init(request: URLRequest, session: URLSession)
    typealias Parent = URLSession.DataTaskPublisher
    final class Inner<Downstream> : Subscription, CustomStringConvertible, CustomReflectable, CustomPlaygroundDisplayConvertible where Downstream : Subscriber, Downstream.Failure == URLSession.DataTaskPublisher.Parent.Failure, Downstream.Input == URLSession.DataTaskPublisher.Parent.Output {
      typealias Input = Downstream.Input
      typealias Failure = Downstream.Failure
      let lock: Lock
      var parent: URLSession.DataTaskPublisher.Parent?
      var downstream: Downstream?
      var demand: Subscribers.Demand
      var task: URLSessionDataTask!
      init(_ parent: URLSession.DataTaskPublisher.Parent, _ downstream: Downstream)
      func handleResponse(data: Data?, response: URLResponse?, error: Error?)
    }
  }
}
extension URLSession {
  func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
  func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
  func uploadTask(with request: URLRequest, fromFile fileURL: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionUploadTask
  func uploadTask(with request: URLRequest, from bodyData: Data?, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionUploadTask
  func downloadTask(with request: URLRequest, completionHandler: @escaping (URL?, URLResponse?, Error?) -> Void) -> URLSessionDownloadTask
  func downloadTask(with url: URL, completionHandler: @escaping (URL?, URLResponse?, Error?) -> Void) -> URLSessionDownloadTask
  func downloadTask(withResumeData resumeData: Data, completionHandler: @escaping (URL?, URLResponse?, Error?) -> Void) -> URLSessionDownloadTask
}
extension URLSessionTask {
  @available(macOS 10.9, *)
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case running
    case suspended
    case canceling
    case completed
  }
  @available(macOS 10.10, *)
  class let defaultPriority: Float
  @available(macOS 10.10, *)
  class let lowPriority: Float
  @available(macOS 10.10, *)
  class let highPriority: Float
}
@available(macOS 10.9, *)
class URLSessionTask : NSObject, NSCopying, ProgressReporting {
  var taskIdentifier: Int { get }
  var originalRequest: URLRequest? { get }
  var currentRequest: URLRequest? { get }
  @NSCopying var response: URLResponse? { get }
  @available(macOS 10.13, *)
  var earliestBeginDate: Date?
  @available(macOS 10.13, *)
  var countOfBytesClientExpectsToSend: Int64
  @available(macOS 10.13, *)
  var countOfBytesClientExpectsToReceive: Int64
  var countOfBytesReceived: Int64 { get }
  var countOfBytesSent: Int64 { get }
  var countOfBytesExpectedToSend: Int64 { get }
  var countOfBytesExpectedToReceive: Int64 { get }
  var taskDescription: String?
  func cancel()
  var state: URLSessionTask.State { get }
  var error: Error? { get }
  func suspend()
  func resume()
  @available(macOS 10.10, *)
  var priority: Float
}
@available(macOS 10.9, *)
class URLSessionDataTask : URLSessionTask {
}
@available(macOS 10.9, *)
class URLSessionUploadTask : URLSessionDataTask {
}
@available(macOS 10.9, *)
class URLSessionDownloadTask : URLSessionTask {
  func cancel(byProducingResumeData completionHandler: @escaping (Data?) -> Void)
  func cancelByProducingResumeData() async -> Data?
}
@available(macOS 10.11, *)
class URLSessionStreamTask : URLSessionTask {
  func readData(ofMinLength minBytes: Int, maxLength maxBytes: Int, timeout: TimeInterval, completionHandler: @escaping (Data?, Bool, Error?) -> Void)
  func readData(ofMinLength minBytes: Int, maxLength maxBytes: Int, timeout: TimeInterval) async throws -> (Data, Bool)
  func write(_ data: Data, timeout: TimeInterval, completionHandler: @escaping (Error?) -> Void)
  func write(_ data: Data, timeout: TimeInterval) async throws
  func captureStreams()
  func closeWrite()
  func closeRead()
  func startSecureConnection()
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "TLS cannot be disabled once it is enabled")
  func stopSecureConnection()
}
@available(macOS 10.15, *)
enum __NSURLSessionWebSocketMessageType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case data
  case string
}
@available(macOS 10.15, *)
class __NSURLSessionWebSocketMessage : NSObject {
  init(data: Data)
  init(string: String)
  var type: __NSURLSessionWebSocketMessageType { get }
  var data: Data? { get }
  var string: String? { get }
}
extension URLSessionWebSocketTask {
  @available(macOS 10.15, *)
  enum CloseCode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case invalid
    case normalClosure
    case goingAway
    case protocolError
    case unsupportedData
    case noStatusReceived
    case abnormalClosure
    case invalidFramePayloadData
    case policyViolation
    case messageTooBig
    case mandatoryExtensionMissing
    case internalServerError
    case tlsHandshakeFailure
  }
}
@available(macOS 10.15, *)
class URLSessionWebSocketTask : URLSessionTask {
  func __send(_ message: __NSURLSessionWebSocketMessage, completionHandler: @escaping (Error?) -> Void)
  func __send(_ message: __NSURLSessionWebSocketMessage) async throws
  func __receiveMessage(completionHandler: @escaping (__NSURLSessionWebSocketMessage?, Error?) -> Void)
  func __receiveMessage() async throws -> __NSURLSessionWebSocketMessage
  func sendPing(pongReceiveHandler: @escaping (Error?) -> Void)
  func cancel(with closeCode: URLSessionWebSocketTask.CloseCode, reason: Data?)
  var maximumMessageSize: Int
  var closeCode: URLSessionWebSocketTask.CloseCode { get }
  var closeReason: Data? { get }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension URLSessionWebSocketTask {
  enum Message {
    case data(Data)
    case string(String)
  }
  func send(_ message: URLSessionWebSocketTask.Message, completionHandler: @escaping (Error?) -> Void)
  func receive(completionHandler: @escaping (Result<URLSessionWebSocketTask.Message, Error>) -> Void)
}
extension URLSessionConfiguration {
}
@available(macOS 10.9, *)
class URLSessionConfiguration : NSObject, NSCopying {
  class var `default`: URLSessionConfiguration { get }
  class var ephemeral: URLSessionConfiguration { get }
  @available(macOS 10.10, *)
  class func background(withIdentifier identifier: String) -> URLSessionConfiguration
  var identifier: String? { get }
  var requestCachePolicy: NSURLRequest.CachePolicy
  var timeoutIntervalForRequest: TimeInterval
  var timeoutIntervalForResource: TimeInterval
  var networkServiceType: NSURLRequest.NetworkServiceType
  var allowsCellularAccess: Bool
  @available(macOS 10.15, *)
  var allowsExpensiveNetworkAccess: Bool
  @available(macOS 10.15, *)
  var allowsConstrainedNetworkAccess: Bool
  @available(macOS 10.13, *)
  var waitsForConnectivity: Bool
  @available(macOS 10.10, *)
  var isDiscretionary: Bool
  @available(macOS 10.10, *)
  var sharedContainerIdentifier: String?
  @available(macOS 11.0, *)
  var sessionSendsLaunchEvents: Bool
  var connectionProxyDictionary: [AnyHashable : Any]?
  @available(macOS, introduced: 10.9, deprecated: 100000)
  var tlsMinimumSupportedProtocol: SSLProtocol
  @available(macOS, introduced: 10.9, deprecated: 100000)
  var tlsMaximumSupportedProtocol: SSLProtocol
  @available(macOS 10.15, *)
  var tlsMinimumSupportedProtocolVersion: tls_protocol_version_t
  @available(macOS 10.15, *)
  var tlsMaximumSupportedProtocolVersion: tls_protocol_version_t
  var httpShouldUsePipelining: Bool
  var httpShouldSetCookies: Bool
  var httpCookieAcceptPolicy: HTTPCookie.AcceptPolicy
  var httpAdditionalHeaders: [AnyHashable : Any]?
  var httpMaximumConnectionsPerHost: Int
  var httpCookieStorage: HTTPCookieStorage?
  var urlCredentialStorage: URLCredentialStorage?
  var urlCache: URLCache?
  @available(macOS 10.11, *)
  var shouldUseExtendedBackgroundIdleMode: Bool
  var protocolClasses: [AnyClass]?
}
extension URLSession {
  @available(macOS 10.13, *)
  enum DelayedRequestDisposition : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case continueLoading
    case useNewRequest
    case cancel
  }
  @available(macOS 10.9, *)
  enum AuthChallengeDisposition : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case useCredential
    case performDefaultHandling
    case cancelAuthenticationChallenge
    case rejectProtectionSpace
  }
  @available(macOS 10.9, *)
  enum ResponseDisposition : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case cancel
    case allow
    case becomeDownload
    @available(macOS 10.11, *)
    case becomeStream
  }
}
@available(macOS 10.9, *)
protocol URLSessionDelegate : NSObjectProtocol {
  @asyncHandler optional func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?)
  @asyncHandler optional func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
  optional func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge) async -> (URLSession.AuthChallengeDisposition, URLCredential?)
  @available(macOS 11.0, *)
  @asyncHandler optional func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession)
}
@available(macOS 10.9, *)
protocol URLSessionTaskDelegate : URLSessionDelegate {
  @available(macOS 10.13, *)
  optional func urlSession(_ session: URLSession, task: URLSessionTask, willBeginDelayedRequest request: URLRequest, completionHandler: @escaping (URLSession.DelayedRequestDisposition, URLRequest?) -> Void)
  @available(macOS 10.13, *)
  optional func urlSession(_ session: URLSession, task: URLSessionTask, willBeginDelayedRequest request: URLRequest) async -> (URLSession.DelayedRequestDisposition, URLRequest?)
  @available(macOS 10.13, *)
  optional func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask)
  optional func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest request: URLRequest, completionHandler: @escaping (URLRequest?) -> Void)
  optional func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest request: URLRequest) async -> URLRequest?
  @asyncHandler optional func urlSession(_ session: URLSession, task: URLSessionTask, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
  optional func urlSession(_ session: URLSession, task: URLSessionTask, didReceive challenge: URLAuthenticationChallenge) async -> (URLSession.AuthChallengeDisposition, URLCredential?)
  optional func urlSession(_ session: URLSession, task: URLSessionTask, needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
  optional func urlSession(_ session: URLSession, task: URLSessionTask) async -> InputStream?
  @asyncHandler optional func urlSession(_ session: URLSession, task: URLSessionTask, didSendBodyData bytesSent: Int64, totalBytesSent: Int64, totalBytesExpectedToSend: Int64)
  @available(macOS 10.12, *)
  @asyncHandler optional func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics)
  @asyncHandler optional func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?)
}
@available(macOS 10.9, *)
protocol URLSessionDataDelegate : URLSessionTaskDelegate {
  @asyncHandler optional func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive response: URLResponse, completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
  optional func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive response: URLResponse) async -> URLSession.ResponseDisposition
  @asyncHandler optional func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didBecome downloadTask: URLSessionDownloadTask)
  @available(macOS 10.11, *)
  @asyncHandler optional func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didBecome streamTask: URLSessionStreamTask)
  @asyncHandler optional func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data)
  optional func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, willCacheResponse proposedResponse: CachedURLResponse, completionHandler: @escaping (CachedURLResponse?) -> Void)
  optional func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, willCacheResponse proposedResponse: CachedURLResponse) async -> CachedURLResponse?
}
@available(macOS 10.9, *)
protocol URLSessionDownloadDelegate : URLSessionTaskDelegate {
  @asyncHandler func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL)
  @asyncHandler optional func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64)
  @asyncHandler optional func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didResumeAtOffset fileOffset: Int64, expectedTotalBytes: Int64)
}
@available(macOS 10.11, *)
protocol URLSessionStreamDelegate : URLSessionTaskDelegate {
  optional func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask)
  optional func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask)
  optional func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask)
  @asyncHandler optional func urlSession(_ session: URLSession, streamTask: URLSessionStreamTask, didBecome inputStream: InputStream, outputStream: OutputStream)
}
@available(macOS 10.15, *)
protocol URLSessionWebSocketDelegate : URLSessionTaskDelegate {
  @asyncHandler optional func urlSession(_ session: URLSession, webSocketTask: URLSessionWebSocketTask, didOpenWithProtocol protocol: String?)
  @asyncHandler optional func urlSession(_ session: URLSession, webSocketTask: URLSessionWebSocketTask, didCloseWith closeCode: URLSessionWebSocketTask.CloseCode, reason: Data?)
}
@available(macOS 10.9, *)
let NSURLSessionDownloadTaskResumeData: String
extension URLSessionConfiguration {
  @available(macOS, introduced: 10.9, deprecated: 10.10)
  class func backgroundSessionConfiguration(_ identifier: String) -> URLSessionConfiguration
}
extension URLSessionTaskMetrics {
  @available(macOS 10.12, *)
  enum ResourceFetchType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case networkLoad
    case serverPush
    case localCache
  }
  @available(macOS 11.0, *)
  enum DomainResolutionProtocol : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case udp
    case tcp
    case tls
    case https
  }
}
@available(macOS 10.12, *)
class URLSessionTaskTransactionMetrics : NSObject {
  var request: URLRequest { get }
  @NSCopying var response: URLResponse? { get }
  var fetchStartDate: Date? { get }
  var domainLookupStartDate: Date? { get }
  var domainLookupEndDate: Date? { get }
  var connectStartDate: Date? { get }
  var secureConnectionStartDate: Date? { get }
  var secureConnectionEndDate: Date? { get }
  var connectEndDate: Date? { get }
  var requestStartDate: Date? { get }
  var requestEndDate: Date? { get }
  var responseStartDate: Date? { get }
  var responseEndDate: Date? { get }
  var networkProtocolName: String? { get }
  var isProxyConnection: Bool { get }
  var isReusedConnection: Bool { get }
  var resourceFetchType: URLSessionTaskMetrics.ResourceFetchType { get }
  @available(macOS 10.15, *)
  var countOfRequestHeaderBytesSent: Int64 { get }
  @available(macOS 10.15, *)
  var countOfRequestBodyBytesSent: Int64 { get }
  @available(macOS 10.15, *)
  var countOfRequestBodyBytesBeforeEncoding: Int64 { get }
  @available(macOS 10.15, *)
  var countOfResponseHeaderBytesReceived: Int64 { get }
  @available(macOS 10.15, *)
  var countOfResponseBodyBytesReceived: Int64 { get }
  @available(macOS 10.15, *)
  var countOfResponseBodyBytesAfterDecoding: Int64 { get }
  @available(macOS 10.15, *)
  var localAddress: String? { get }
  @available(macOS 10.15, *)
  @NSCopying var __localPort: NSNumber? { get }
  @available(macOS 10.15, *)
  var remoteAddress: String? { get }
  @available(macOS 10.15, *)
  @NSCopying var __remotePort: NSNumber? { get }
  @available(macOS 10.15, *)
  @NSCopying var __negotiatedTLSProtocolVersion: NSNumber? { get }
  @available(macOS 10.15, *)
  @NSCopying var __negotiatedTLSCipherSuite: NSNumber? { get }
  @available(macOS 10.15, *)
  var isCellular: Bool { get }
  @available(macOS 10.15, *)
  var isExpensive: Bool { get }
  @available(macOS 10.15, *)
  var isConstrained: Bool { get }
  @available(macOS 10.15, *)
  var isMultipath: Bool { get }
  @available(macOS 11.0, *)
  var domainResolutionProtocol: URLSessionTaskMetrics.DomainResolutionProtocol { get }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension URLSessionTaskTransactionMetrics {
  var localPort: Int? { get }
  var remotePort: Int? { get }
  var negotiatedTLSProtocolVersion: tls_protocol_version_t? { get }
  var negotiatedTLSCipherSuite: tls_ciphersuite_t? { get }
}
@available(macOS 10.12, *)
class URLSessionTaskMetrics : NSObject {
  var transactionMetrics: [URLSessionTaskTransactionMetrics] { get }
  var taskInterval: DateInterval { get }
  var redirectCount: Int { get }
}
