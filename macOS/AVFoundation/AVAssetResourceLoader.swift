
@available(macOS 10.9, *)
class AVAssetResourceLoader : NSObject {
  func setDelegate(_ delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: DispatchQueue?)
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }
  var delegateQueue: DispatchQueue? { get }
}
protocol AVAssetResourceLoaderDelegate : NSObjectProtocol {
  @available(macOS 10.9, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool
  @available(macOS 10.10, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool
  @available(macOS 10.9, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancel loadingRequest: AVAssetResourceLoadingRequest)
  @available(macOS 10.10, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForResponseTo authenticationChallenge: URLAuthenticationChallenge) -> Bool
  @available(macOS 10.10, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancel authenticationChallenge: URLAuthenticationChallenge)
}
@available(macOS 10.14, *)
class AVAssetResourceLoadingRequestor : NSObject {
  var providesExpiredSessionReports: Bool { get }
}
@available(macOS 10.9, *)
class AVAssetResourceLoadingRequest : NSObject {
  var request: URLRequest { get }
  var isFinished: Bool { get }
  @available(macOS 10.9, *)
  var isCancelled: Bool { get }
  @available(macOS 10.9, *)
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }
  @available(macOS 10.9, *)
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }
  @available(macOS 10.9, *)
  @NSCopying var response: URLResponse?
  @available(macOS 10.9, *)
  var redirect: URLRequest?
  @available(macOS 10.14, *)
  var requestor: AVAssetResourceLoadingRequestor { get }
  @available(macOS 10.9, *)
  func finishLoading()
  func finishLoading(with error: Error?)
}
@available(macOS 10.10, *)
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
@available(macOS 10.9, *)
class AVAssetResourceLoadingContentInformationRequest : NSObject {
  var contentType: String?
  @available(macOS 10.13.2, *)
  var allowedContentTypes: [String]? { get }
  var contentLength: Int64
  var isByteRangeAccessSupported: Bool
  @available(macOS 10.10, *)
  var renewalDate: Date?
}
@available(macOS 10.9, *)
class AVAssetResourceLoadingDataRequest : NSObject {
  var requestedOffset: Int64 { get }
  var requestedLength: Int { get }
  @available(macOS 10.11, *)
  var requestsAllDataToEndOfResource: Bool { get }
  var currentOffset: Int64 { get }
  func respond(with data: Data)
}
extension AVAssetResourceLoader {
  @available(macOS 10.11, *)
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data, options: [String : Any]? = nil) throws -> Data
  @available(macOS 10.15, *)
  func persistentContentKey(fromKeyVendorResponse keyVendorResponse: Data, options: [String : Any]? = nil) throws -> Data
}
@available(macOS 10.14, *)
let AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey: String
extension AVAssetResourceLoadingRequest {
  @available(macOS, introduced: 10.15, deprecated: 10.15, message: "No longer supported")
  func finishLoading(with response: URLResponse?, data: Data?, redirect: URLRequest?)
}
