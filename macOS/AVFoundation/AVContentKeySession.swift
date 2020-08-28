
@available(macOS 10.12.4, *)
struct AVContentKeySystem : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVContentKeySystem {
  @available(macOS 10.12.4, *)
  static let fairPlayStreaming: AVContentKeySystem
  @available(macOS 10.13, *)
  static let clearKey: AVContentKeySystem
  @available(macOS 10.15, *)
  static let authorizationToken: AVContentKeySystem
}
@available(macOS 10.12.4, *)
class AVContentKeySession : NSObject {
  @available(macOS 10.13, *)
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
  @available(macOS 10.15, *)
  func makeSecureTokenForExpirationDate(ofPersistableContentKey persistableContentKeyData: Data, completionHandler handler: @escaping (Data?, Error?) -> Void)
  @available(macOS 10.15, *)
  func makeSecureTokenForExpirationDate(ofPersistableContentKey persistableContentKeyData: Data) async throws -> Data?
  @available(macOS 10.15, *)
  func invalidatePersistableContentKey(_ persistableContentKeyData: Data, options: [AVContentKeySessionServerPlaybackContextOption : Any]? = nil, completionHandler handler: @escaping (Data?, Error?) -> Void)
  @available(macOS 10.15, *)
  func invalidatePersistableContentKey(_ persistableContentKeyData: Data, options: [AVContentKeySessionServerPlaybackContextOption : Any]? = nil) async throws -> Data?
  @available(macOS 10.15, *)
  func invalidateAllPersistableContentKeys(forApp appIdentifier: Data, options: [AVContentKeySessionServerPlaybackContextOption : Any]? = nil, completionHandler handler: @escaping (Data?, Error?) -> Void)
  @available(macOS 10.15, *)
  func invalidateAllPersistableContentKeys(forApp appIdentifier: Data, options: [AVContentKeySessionServerPlaybackContextOption : Any]? = nil) async throws -> Data?
}
struct AVContentKeySessionServerPlaybackContextOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVContentKeySessionServerPlaybackContextOption {
  @available(macOS 10.15, *)
  static let protocolVersions: AVContentKeySessionServerPlaybackContextOption
  @available(macOS 10.15, *)
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
  @available(macOS 10.12.4, *)
  struct RetryReason : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.12.4, *)
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
  @available(macOS 10.12.4, *)
  static let timedOut: AVContentKeyRequest.RetryReason
  @available(macOS 10.12.4, *)
  static let receivedResponseWithExpiredLease: AVContentKeyRequest.RetryReason
  @available(macOS 10.12.4, *)
  static let receivedObsoleteContentKey: AVContentKeyRequest.RetryReason
}
@available(macOS 10.12.4, *)
protocol AVContentKeySessionDelegate : NSObjectProtocol {
  func contentKeySession(_ session: AVContentKeySession, didProvide keyRequest: AVContentKeyRequest)
  optional func contentKeySession(_ session: AVContentKeySession, didProvideRenewingContentKeyRequest keyRequest: AVContentKeyRequest)
  optional func contentKeySession(_ session: AVContentKeySession, didProvide keyRequest: AVPersistableContentKeyRequest)
  @available(macOS 10.15, *)
  optional func contentKeySession(_ session: AVContentKeySession, didUpdatePersistableContentKey persistableContentKey: Data, forContentKeyIdentifier keyIdentifier: Any)
  optional func contentKeySession(_ session: AVContentKeySession, contentKeyRequest keyRequest: AVContentKeyRequest, didFailWithError err: Error)
  optional func contentKeySession(_ session: AVContentKeySession, shouldRetry keyRequest: AVContentKeyRequest, reason retryReason: AVContentKeyRequest.RetryReason) -> Bool
  @available(macOS 10.14, *)
  optional func contentKeySession(_ session: AVContentKeySession, contentKeyRequestDidSucceed keyRequest: AVContentKeyRequest)
  optional func contentKeySessionContentProtectionSessionIdentifierDidChange(_ session: AVContentKeySession)
  @available(macOS 10.14, *)
  optional func contentKeySessionDidGenerateExpiredSessionReport(_ session: AVContentKeySession)
}
@available(macOS 10.12.4, *)
class AVContentKeyRequest : NSObject {
  var status: AVContentKeyRequest.Status { get }
  var error: Error? { get }
  var identifier: Any? { get }
  var initializationData: Data? { get }
  @available(macOS 10.14.4, *)
  var options: [String : Any] { get }
  var canProvidePersistableContentKey: Bool { get }
  func makeStreamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data?, options: [String : Any]? = nil, completionHandler handler: @escaping (Data?, Error?) -> Void)
  func makeStreamingContentKeyRequestData(forApp appIdentifier: Data, contentIdentifier: Data?, options: [String : Any]? = nil) async throws -> Data?
  func processContentKeyResponse(_ keyResponse: AVContentKeyResponse)
  func processContentKeyResponseError(_ error: Error)
  @available(macOS 10.15, *)
  func respondByRequestingPersistableContentKeyRequest() throws
}
@available(macOS 10.15, *)
let AVContentKeyRequestRequiresValidationDataInSecureTokenKey: String
@available(macOS 10.15, *)
class AVPersistableContentKeyRequest : AVContentKeyRequest {
  func persistableContentKey(fromKeyVendorResponse keyVendorResponse: Data, options: [String : Any]? = nil) throws -> Data
}
extension AVContentKeyRequest {
  var renewsExpiringResponseData: Bool { get }
}
@available(macOS 10.12.4, *)
class AVContentKeyResponse : NSObject {
  convenience init(fairPlayStreamingKeyResponseData keyResponseData: Data)
  @available(macOS 10.13, *)
  convenience init(clearKeyData keyData: Data, initializationVector: Data?)
  @available(macOS 10.15, *)
  convenience init(authorizationTokenData: Data)
}
@available(macOS 10.12.4, *)
let AVContentKeyRequestProtocolVersionsKey: String
@available(macOS 10.12.4, *)
protocol AVContentKeyRecipient {
  var mayRequireContentKeysForMediaDataProcessing: Bool { get }
}
