
@available(watchOS 2.0, *)
class AVAssetResourceLoader : NSObject {
  func setDelegate(_ delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: DispatchQueue?)
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }
  var delegateQueue: DispatchQueue? { get }
}
protocol AVAssetResourceLoaderDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool
  @available(watchOS 2.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool
  @available(watchOS 2.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancel loadingRequest: AVAssetResourceLoadingRequest)
  @available(watchOS 2.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForResponseTo authenticationChallenge: URLAuthenticationChallenge) -> Bool
  @available(watchOS 2.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancel authenticationChallenge: URLAuthenticationChallenge)
}
@available(watchOS 5.0, *)
class AVAssetResourceLoadingRequestor : NSObject {
  var providesExpiredSessionReports: Bool { get }
}
@available(watchOS 2.0, *)
class AVAssetResourceLoadingRequest : NSObject {
  var request: URLRequest { get }
  var isFinished: Bool { get }
  @available(watchOS 2.0, *)
  var isCancelled: Bool { get }
  @available(watchOS 2.0, *)
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }
  @available(watchOS 2.0, *)
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }
  @available(watchOS 2.0, *)
  @NSCopying var response: URLResponse?
  @available(watchOS 2.0, *)
  var redirect: URLRequest?
  @available(watchOS 5.0, *)
  var requestor: AVAssetResourceLoadingRequestor { get }
  @available(watchOS 2.0, *)
  func finishLoading()
  func finishLoading(with error: Error?)
}
@available(watchOS 2.0, *)
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
@available(watchOS 2.0, *)
class AVAssetResourceLoadingContentInformationRequest : NSObject {
  var contentType: String?
  @available(watchOS 4.2, *)
  var allowedContentTypes: [String]? { get }
  var contentLength: Int64
  var isByteRangeAccessSupported: Bool
  @available(watchOS 2.0, *)
  var renewalDate: Date?
}
@available(watchOS 2.0, *)
class AVAssetResourceLoadingDataRequest : NSObject {
  var requestedOffset: Int64 { get }
  var requestedLength: Int { get }
  @available(watchOS 2.0, *)
  var requestsAllDataToEndOfResource: Bool { get }
  var currentOffset: Int64 { get }
  func respond(with data: Data)
}
extension AVAssetResourceLoader {
  @available(watchOS 2.0, *)
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data, options: [String : Any]? = nil) throws -> Data
  @available(watchOS 2.0, *)
  func persistentContentKey(fromKeyVendorResponse keyVendorResponse: Data, options: [String : Any]? = nil) throws -> Data
}
@available(watchOS 2.0, *)
let AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey: String
extension AVAssetResourceLoadingRequest {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "No longer supported")
  func finishLoading(with response: URLResponse?, data: Data?, redirect: URLRequest?)
}
