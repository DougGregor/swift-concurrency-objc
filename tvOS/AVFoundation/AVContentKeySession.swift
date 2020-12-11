
@available(tvOS 10.2, *)
struct AVContentKeySystem : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVContentKeySystem {
  @available(tvOS 10.2, *)
  static let fairPlayStreaming: AVContentKeySystem
  @available(tvOS 11.0, *)
  static let clearKey: AVContentKeySystem
  @available(tvOS 13.0, *)
  static let authorizationToken: AVContentKeySystem
}
@available(tvOS 10.2, *)
class AVContentKeySession : NSObject {
  @available(tvOS 11.0, *)
  convenience init(keySystem: AVContentKeySystem)
  convenience init(keySystem: AVContentKeySystem, storageDirectoryAt storageURL: URL)
  func setDelegate(_ delegate: AVContentKeySessionDelegate?, queue delegateQueue: DispatchQueue?)
  weak var delegate: @sil_weak AVContentKeySessionDelegate? { get }
  var delegateQueue: DispatchQueue? { get }
  var storageURL: URL? { get }
  var keySystem: AVContentKeySystem { get }
  func expire()
  var contentProtectionSessionIdentifier: Data? { get }
  func processContentKeyRequest(withIdentifier identifier: Any?, initializationData: Data?, options: [String : Any]? = nil)
  func renewExpiringResponseData(for contentKeyRequest: AVContentKeyRequest)
}
struct AVContentKeySessionServerPlaybackContextOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVContentKeySessionServerPlaybackContextOption {
}
extension AVContentKeySession {
  func addContentKeyRecipient(_ recipient: AVContentKeyRecipient)
  func removeContentKeyRecipient(_ recipient: AVContentKeyRecipient)
  var contentKeyRecipients: [AVContentKeyRecipient] { get }
}
extension AVContentKeySession {
  class func pendingExpiredSessionReports(withAppIdentifier appIdentifier: Data, storageDirectoryAt storageURL: URL) -> [Data]
  class func removePendingExpiredSessionReports(_ expiredSessionReports: [Data], withAppIdentifier appIdentifier: Data, storageDirectoryAt storageURL: URL)
}
extension AVContentKeyRequest {
  @available(tvOS 10.2, *)
  struct RetryReason : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(tvOS 10.2, *)
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case requestingResponse
    case receivedResponse
    case renewed
    case retried
    case cancelled
    case failed
  }
}
extension AVContentKeyRequest.RetryReason {
  @available(tvOS 10.2, *)
  static let timedOut: AVContentKeyRequest.RetryReason
  @available(tvOS 10.2, *)
  static let receivedResponseWithExpiredLease: AVContentKeyRequest.RetryReason
  @available(tvOS 10.2, *)
  static let receivedObsoleteContentKey: AVContentKeyRequest.RetryReason
}
@available(tvOS 10.2, *)
protocol AVContentKeySessionDelegate : NSObjectProtocol {
  func contentKeySession(_ session: AVContentKeySession, didProvide keyRequest: AVContentKeyRequest)
  optional func contentKeySession(_ session: AVContentKeySession, didProvideRenewingContentKeyRequest keyRequest: AVContentKeyRequest)
  optional func contentKeySession(_ session: AVContentKeySession, didProvide keyRequest: AVPersistableContentKeyRequest)
  optional func contentKeySession(_ session: AVContentKeySession, contentKeyRequest keyRequest: AVContentKeyRequest, didFailWithError err: Error)
  optional func contentKeySession(_ session: AVContentKeySession, shouldRetry keyRequest: AVContentKeyRequest, reason retryReason: AVContentKeyRequest.RetryReason) -> Bool
  @available(tvOS 12.0, *)
  optional func contentKeySession(_ session: AVContentKeySession, contentKeyRequestDidSucceed keyRequest: AVContentKeyRequest)
  optional func contentKeySessionContentProtectionSessionIdentifierDidChange(_ session: AVContentKeySession)
  @available(tvOS 12.0, *)
  optional func contentKeySessionDidGenerateExpiredSessionReport(_ session: AVContentKeySession)
}
@available(tvOS 10.2, *)
class AVContentKeyRequest : NSObject {
  var status: AVContentKeyRequest.Status { get }
  var error: Error? { get }
  var identifier: Any? { get }
  var initializationData: Data? { get }
  @available(tvOS 12.2, *)
  var options: [String : Any] { get }
  var canProvidePersistableContentKey: Bool { get }
  func makeStreamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data?, options: [String : Any]? = nil, completionHandler handler: @escaping (Data?, Error?) -> Void)
  func makeStreamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data?, options: [String : Any]? = nil) async throws -> Data
  func processContentKeyResponse(_ keyResponse: AVContentKeyResponse)
  func processContentKeyResponseError(_ error: Error)
}
@available(tvOS 13.0, *)
let AVContentKeyRequestRequiresValidationDataInSecureTokenKey: String
@available(tvOS 10.3, *)
class AVPersistableContentKeyRequest : AVContentKeyRequest {
  func persistableContentKey(fromKeyVendorResponse keyVendorResponse: Data, options: [String : Any]? = nil) throws -> Data
}
extension AVContentKeyRequest {
  var renewsExpiringResponseData: Bool { get }
}
@available(tvOS 10.2, *)
class AVContentKeyResponse : NSObject {
  convenience init(fairPlayStreamingKeyResponseData keyResponseData: Data)
  @available(tvOS 11.0, *)
  convenience init(clearKeyData keyData: Data, initializationVector: Data?)
  @available(tvOS 13.0, *)
  convenience init(authorizationTokenData: Data)
}
@available(tvOS 10.2, *)
let AVContentKeyRequestProtocolVersionsKey: String
@available(tvOS 10.2, *)
protocol AVContentKeyRecipient {
  var mayRequireContentKeysForMediaDataProcessing: Bool { get }
}
