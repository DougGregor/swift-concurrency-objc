
@available(iOS 6.0, *)
class AVAssetResourceLoader : NSObject {
  func setDelegate(_ delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: DispatchQueue?)
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }
  var delegateQueue: DispatchQueue? { get }
}
protocol AVAssetResourceLoaderDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool
  @available(iOS 8.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool
  @available(iOS 7.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancel loadingRequest: AVAssetResourceLoadingRequest)
  @available(iOS 8.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForResponseTo authenticationChallenge: URLAuthenticationChallenge) -> Bool
  @available(iOS 8.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancel authenticationChallenge: URLAuthenticationChallenge)
}
@available(iOS 12.0, *)
class AVAssetResourceLoadingRequestor : NSObject {
  var providesExpiredSessionReports: Bool { get }
}
@available(iOS 6.0, *)
class AVAssetResourceLoadingRequest : NSObject {
  var request: URLRequest { get }
  var isFinished: Bool { get }
  @available(iOS 7.0, *)
  var isCancelled: Bool { get }
  @available(iOS 7.0, *)
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }
  @available(iOS 7.0, *)
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }
  @available(iOS 7.0, *)
  @NSCopying var response: URLResponse?
  @available(iOS 7.0, *)
  var redirect: URLRequest?
  @available(iOS 12.0, *)
  var requestor: AVAssetResourceLoadingRequestor { get }
  @available(iOS 7.0, *)
  func finishLoading()
  func finishLoading(with error: Error?)
}
@available(iOS 8.0, *)
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
@available(iOS 7.0, *)
class AVAssetResourceLoadingContentInformationRequest : NSObject {
  var contentType: String?
  @available(iOS 11.2, *)
  var allowedContentTypes: [String]? { get }
  var contentLength: Int64
  var isByteRangeAccessSupported: Bool
  @available(iOS 8.0, *)
  var renewalDate: Date?
}
@available(iOS 7.0, *)
class AVAssetResourceLoadingDataRequest : NSObject {
  var requestedOffset: Int64 { get }
  var requestedLength: Int { get }
  @available(iOS 9.0, *)
  var requestsAllDataToEndOfResource: Bool { get }
  var currentOffset: Int64 { get }
  func respond(with data: Data)
}
extension AVAssetResourceLoader {
  @available(iOS 9.0, *)
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data, options: [String : Any]? = nil) throws -> Data
  @available(iOS 9.0, *)
  func persistentContentKey(fromKeyVendorResponse keyVendorResponse: Data, options: [String : Any]? = nil) throws -> Data
}
@available(iOS 9.0, *)
let AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey: String
extension AVAssetResourceLoadingRequest {
}
