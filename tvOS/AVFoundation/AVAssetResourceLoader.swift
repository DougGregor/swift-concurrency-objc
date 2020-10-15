
@available(tvOS 9.0, *)
class AVAssetResourceLoader : NSObject {
  func setDelegate(_ delegate: AVAssetResourceLoaderDelegate?, queue delegateQueue: DispatchQueue?)
  weak var delegate: @sil_weak AVAssetResourceLoaderDelegate? { get }
  var delegateQueue: DispatchQueue? { get }
}
protocol AVAssetResourceLoaderDelegate : NSObjectProtocol {
  @available(tvOS 9.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForLoadingOfRequestedResource loadingRequest: AVAssetResourceLoadingRequest) -> Bool
  @available(tvOS 9.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForRenewalOfRequestedResource renewalRequest: AVAssetResourceRenewalRequest) -> Bool
  @available(tvOS 9.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancel loadingRequest: AVAssetResourceLoadingRequest)
  @available(tvOS 9.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, shouldWaitForResponseTo authenticationChallenge: URLAuthenticationChallenge) -> Bool
  @available(tvOS 9.0, *)
  optional func resourceLoader(_ resourceLoader: AVAssetResourceLoader, didCancel authenticationChallenge: URLAuthenticationChallenge)
}
@available(tvOS 12.0, *)
class AVAssetResourceLoadingRequestor : NSObject {
  var providesExpiredSessionReports: Bool { get }
}
@available(tvOS 9.0, *)
class AVAssetResourceLoadingRequest : NSObject {
  var request: URLRequest { get }
  var isFinished: Bool { get }
  @available(tvOS 9.0, *)
  var isCancelled: Bool { get }
  @available(tvOS 9.0, *)
  var contentInformationRequest: AVAssetResourceLoadingContentInformationRequest? { get }
  @available(tvOS 9.0, *)
  var dataRequest: AVAssetResourceLoadingDataRequest? { get }
  @available(tvOS 9.0, *)
  @NSCopying var response: URLResponse?
  @available(tvOS 9.0, *)
  var redirect: URLRequest?
  @available(tvOS 12.0, *)
  var requestor: AVAssetResourceLoadingRequestor { get }
  @available(tvOS 9.0, *)
  func finishLoading()
  func finishLoading(with error: Error?)
}
@available(tvOS 9.0, *)
class AVAssetResourceRenewalRequest : AVAssetResourceLoadingRequest {
}
@available(tvOS 9.0, *)
class AVAssetResourceLoadingContentInformationRequest : NSObject {
  var contentType: String?
  @available(tvOS 11.2, *)
  var allowedContentTypes: [String]? { get }
  var contentLength: Int64
  var isByteRangeAccessSupported: Bool
  @available(tvOS 9.0, *)
  var renewalDate: Date?
}
@available(tvOS 9.0, *)
class AVAssetResourceLoadingDataRequest : NSObject {
  var requestedOffset: Int64 { get }
  var requestedLength: Int { get }
  @available(tvOS 9.0, *)
  var requestsAllDataToEndOfResource: Bool { get }
  var currentOffset: Int64 { get }
  func respond(with data: Data)
}
extension AVAssetResourceLoader {
  @available(tvOS 9.0, *)
  var preloadsEligibleContentKeys: Bool
}
extension AVAssetResourceLoadingRequest {
  func streamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data, options: [String : Any]? = nil) throws -> Data
  @available(tvOS 9.0, *)
  func persistentContentKey(fromKeyVendorResponse keyVendorResponse: Data, options: [String : Any]? = nil) throws -> Data
}
@available(tvOS 9.0, *)
let AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey: String
extension AVAssetResourceLoadingRequest {
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "No longer supported")
  func finishLoading(with response: URLResponse?, data: Data?, redirect: URLRequest?)
}
