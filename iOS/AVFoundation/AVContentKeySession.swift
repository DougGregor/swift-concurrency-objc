
@available(iOS 10.3, *)
struct AVContentKeySystem : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVContentKeySystem {
  @available(iOS 10.3, *)
  static let fairPlayStreaming: AVContentKeySystem
  @available(iOS 11.0, *)
  static let clearKey: AVContentKeySystem
  @available(iOS 13.0, *)
  static let authorizationToken: AVContentKeySystem
}
@available(iOS 10.3, *)
class AVContentKeySession : NSObject {
  @available(iOS 11.0, *)
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
  @available(iOS 11.0, *)
  func makeSecureTokenForExpirationDate(ofPersistableContentKey persistableContentKeyData: Data, completionHandler handler: @escaping (Data?, Error?) -> Void)
  @available(iOS 11.0, *)
  func makeSecureTokenForExpirationDate(ofPersistableContentKey persistableContentKeyData: Data) async throws -> Data
  @available(iOS 12.2, *)
  func invalidatePersistableContentKey(_ persistableContentKeyData: Data, options: [AVContentKeySessionServerPlaybackContextOption : Any]? = nil, completionHandler handler: @escaping (Data?, Error?) -> Void)
  @available(iOS 12.2, *)
  func invalidatePersistableContentKey(_ persistableContentKeyData: Data, options: [AVContentKeySessionServerPlaybackContextOption : Any]? = nil) async throws -> Data
  @available(iOS 12.2, *)
  func invalidateAllPersistableContentKeys(forApp appIdentifier: Data, options: [AVContentKeySessionServerPlaybackContextOption : Any]? = nil, completionHandler handler: @escaping (Data?, Error?) -> Void)
  @available(iOS 12.2, *)
  func invalidateAllPersistableContentKeys(forApp appIdentifier: Data, options: [AVContentKeySessionServerPlaybackContextOption : Any]? = nil) async throws -> Data
}
struct AVContentKeySessionServerPlaybackContextOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVContentKeySessionServerPlaybackContextOption {
  @available(iOS 12.2, *)
  static let protocolVersions: AVContentKeySessionServerPlaybackContextOption
  @available(iOS 12.2, *)
  static let serverChallenge: AVContentKeySessionServerPlaybackContextOption
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
  @available(iOS 10.3, *)
  struct RetryReason : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(iOS 10.3, *)
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
  @available(iOS 10.3, *)
  static let timedOut: AVContentKeyRequest.RetryReason
  @available(iOS 10.3, *)
  static let receivedResponseWithExpiredLease: AVContentKeyRequest.RetryReason
  @available(iOS 10.3, *)
  static let receivedObsoleteContentKey: AVContentKeyRequest.RetryReason
}
@available(iOS 10.3, *)
protocol AVContentKeySessionDelegate : NSObjectProtocol {
  func contentKeySession(_ session: AVContentKeySession, didProvide keyRequest: AVContentKeyRequest)
  optional func contentKeySession(_ session: AVContentKeySession, didProvideRenewingContentKeyRequest keyRequest: AVContentKeyRequest)
  optional func contentKeySession(_ session: AVContentKeySession, didProvide keyRequest: AVPersistableContentKeyRequest)
  @available(iOS 11.0, *)
  optional func contentKeySession(_ session: AVContentKeySession, didUpdatePersistableContentKey persistableContentKey: Data, forContentKeyIdentifier keyIdentifier: Any)
  optional func contentKeySession(_ session: AVContentKeySession, contentKeyRequest keyRequest: AVContentKeyRequest, didFailWithError err: Error)
  optional func contentKeySession(_ session: AVContentKeySession, shouldRetry keyRequest: AVContentKeyRequest, reason retryReason: AVContentKeyRequest.RetryReason) -> Bool
  @available(iOS 12.0, *)
  optional func contentKeySession(_ session: AVContentKeySession, contentKeyRequestDidSucceed keyRequest: AVContentKeyRequest)
  optional func contentKeySessionContentProtectionSessionIdentifierDidChange(_ session: AVContentKeySession)
  @available(iOS 12.0, *)
  optional func contentKeySessionDidGenerateExpiredSessionReport(_ session: AVContentKeySession)
}
@available(iOS 10.3, *)
class AVContentKeyRequest : NSObject {
  var status: AVContentKeyRequest.Status { get }
  var error: Error? { get }
  var identifier: Any? { get }
  var initializationData: Data? { get }
  @available(iOS 12.2, *)
  var options: [String : Any] { get }
  var canProvidePersistableContentKey: Bool { get }
  func makeStreamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data?, options: [String : Any]? = nil, completionHandler handler: @escaping (Data?, Error?) -> Void)
  func makeStreamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data?, options: [String : Any]? = nil) async throws -> Data
  func processContentKeyResponse(_ keyResponse: AVContentKeyResponse)
  func processContentKeyResponseError(_ error: Error)
  @available(iOS, introduced: 10.3, deprecated: 11.2, message: "Use respondByRequestingPersistableContentKeyRequestAndReturnError: instead.")
  func respondByRequestingPersistableContentKeyRequest()
  @available(iOS 11.2, *)
  func respondByRequestingPersistableContentKeyRequestAndReturnError() throws
}
@available(iOS 13.0, *)
let AVContentKeyRequestRequiresValidationDataInSecureTokenKey: String
@available(iOS 10.3, *)
class AVPersistableContentKeyRequest : AVContentKeyRequest {
  func persistableContentKey(fromKeyVendorResponse keyVendorResponse: Data, options: [String : Any]? = nil) throws -> Data
}
extension AVContentKeyRequest {
  var renewsExpiringResponseData: Bool { get }
}
@available(iOS 10.3, *)
class AVContentKeyResponse : NSObject {
  convenience init(fairPlayStreamingKeyResponseData keyResponseData: Data)
  @available(iOS 11.0, *)
  convenience init(clearKeyData keyData: Data, initializationVector: Data?)
  @available(iOS 13.0, *)
  convenience init(authorizationTokenData: Data)
}
@available(iOS 10.3, *)
let AVContentKeyRequestProtocolVersionsKey: String
@available(iOS 10.3, *)
protocol AVContentKeyRecipient {
  var mayRequireContentKeysForMediaDataProcessing: Bool { get }
}
