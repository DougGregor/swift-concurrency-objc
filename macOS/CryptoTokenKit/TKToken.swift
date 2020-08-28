
extension TKToken {
  @available(macOS 10.12, *)
  typealias ObjectID = Any
  @available(macOS 10.15, *)
  typealias InstanceID = String
}
@available(macOS, introduced: 10.12, deprecated: 10.15, renamed: "TKToken.ObjectID")
typealias TKTokenObjectID = AnyObject
extension TKTokenDriver {
  @available(macOS 10.15, *)
  typealias ClassID = String
}
@available(macOS 10.12, *)
enum TKTokenOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case readData
  case signData
  case decryptData
  case performKeyExchange
}
@available(macOS 10.12, *)
typealias TKTokenOperationConstraint = AnyObject
@available(macOS 10.12, *)
class TKTokenKeyAlgorithm : NSObject {
  func isAlgorithm(_ algorithm: SecKeyAlgorithm) -> Bool
  func supportsAlgorithm(_ algorithm: SecKeyAlgorithm) -> Bool
}
@available(macOS 10.12, *)
class TKTokenKeyExchangeParameters : NSObject {
  var requestedSize: Int { get }
  var sharedInfo: Data? { get }
}
@available(macOS 10.12, *)
class TKTokenSession : NSObject {
  init(token: TKToken)
  var token: TKToken { get }
  weak var delegate: @sil_weak TKTokenSessionDelegate?
}
@available(macOS 10.12, *)
protocol TKTokenSessionDelegate : NSObjectProtocol {
  optional func tokenSession(_ session: TKTokenSession, beginAuthFor operation: TKTokenOperation, constraint: Any) throws -> TKTokenAuthOperation
  optional func tokenSession(_ session: TKTokenSession, supports operation: TKTokenOperation, keyObjectID: TKToken.ObjectID, algorithm: TKTokenKeyAlgorithm) -> Bool
  optional func tokenSession(_ session: TKTokenSession, sign dataToSign: Data, keyObjectID: TKToken.ObjectID, algorithm: TKTokenKeyAlgorithm) throws -> Data
  optional func tokenSession(_ session: TKTokenSession, decrypt ciphertext: Data, keyObjectID: TKToken.ObjectID, algorithm: TKTokenKeyAlgorithm) throws -> Data
  optional func tokenSession(_ session: TKTokenSession, performKeyExchange otherPartyPublicKeyData: Data, keyObjectID objectID: TKToken.ObjectID, algorithm: TKTokenKeyAlgorithm, parameters: TKTokenKeyExchangeParameters) throws -> Data
}
@available(macOS 10.12, *)
class TKToken : NSObject {
  init(tokenDriver: TKTokenDriver, instanceID: TKToken.InstanceID)
  var tokenDriver: TKTokenDriver { get }
  weak var delegate: @sil_weak TKTokenDelegate?
  @available(macOS 10.15, *)
  var configuration: TKToken.Configuration { get }
  var keychainContents: TKTokenKeychainContents? { get }
}
@available(macOS 10.12, *)
protocol TKTokenDelegate : NSObjectProtocol {
  func createSession(_ token: TKToken) throws -> TKTokenSession
  optional func token(_ token: TKToken, terminateSession session: TKTokenSession)
}
@available(macOS 10.12, *)
class TKTokenDriver : NSObject {
  weak var delegate: @sil_weak TKTokenDriverDelegate?
}
@available(macOS 10.12, *)
protocol TKTokenDriverDelegate : NSObjectProtocol {
  @available(macOS 10.15, *)
  optional func tokenDriver(_ driver: TKTokenDriver, tokenFor configuration: TKToken.Configuration) throws -> TKToken
  optional func tokenDriver(_ driver: TKTokenDriver, terminateToken token: TKToken)
}
@available(macOS 10.12, *)
class TKTokenAuthOperation : NSObject, NSSecureCoding {
  func finish() throws
}
@available(macOS 10.12, *)
class TKTokenPasswordAuthOperation : TKTokenAuthOperation {
  var password: String?
}
