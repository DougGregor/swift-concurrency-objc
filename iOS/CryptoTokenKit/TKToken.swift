
extension TKToken {
  @available(iOS 10.0, *)
  typealias ObjectID = Any
  @available(iOS 14.0, *)
  typealias InstanceID = String
}
extension TKTokenDriver {
  @available(iOS 14.0, *)
  typealias ClassID = String
}
@available(iOS 10.0, *)
enum TKTokenOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case readData
  case signData
  case decryptData
  case performKeyExchange
}
@available(iOS 10.0, *)
typealias TKTokenOperationConstraint = AnyObject
@available(iOS 10.0, *)
class TKTokenKeyAlgorithm : NSObject {
  func isAlgorithm(_ algorithm: SecKeyAlgorithm) -> Bool
  func supportsAlgorithm(_ algorithm: SecKeyAlgorithm) -> Bool
}
@available(iOS 10.0, *)
class TKTokenKeyExchangeParameters : NSObject {
  var requestedSize: Int { get }
  var sharedInfo: Data? { get }
}
@available(iOS 10.0, *)
class TKTokenSession : NSObject {
  init(token: TKToken)
  var token: TKToken { get }
  weak var delegate: @sil_weak TKTokenSessionDelegate?
}
@available(iOS 10.0, *)
protocol TKTokenSessionDelegate : NSObjectProtocol {
  optional func tokenSession(_ session: TKTokenSession, beginAuthFor operation: TKTokenOperation, constraint: Any) throws -> TKTokenAuthOperation
  optional func tokenSession(_ session: TKTokenSession, supports operation: TKTokenOperation, keyObjectID: TKToken.ObjectID, algorithm: TKTokenKeyAlgorithm) -> Bool
  optional func tokenSession(_ session: TKTokenSession, sign dataToSign: Data, keyObjectID: TKToken.ObjectID, algorithm: TKTokenKeyAlgorithm) throws -> Data
  optional func tokenSession(_ session: TKTokenSession, decrypt ciphertext: Data, keyObjectID: TKToken.ObjectID, algorithm: TKTokenKeyAlgorithm) throws -> Data
  optional func tokenSession(_ session: TKTokenSession, performKeyExchange otherPartyPublicKeyData: Data, keyObjectID objectID: TKToken.ObjectID, algorithm: TKTokenKeyAlgorithm, parameters: TKTokenKeyExchangeParameters) throws -> Data
}
@available(iOS 10.0, *)
class TKToken : NSObject {
  init(tokenDriver: TKTokenDriver, instanceID: TKToken.InstanceID)
  var tokenDriver: TKTokenDriver { get }
  weak var delegate: @sil_weak TKTokenDelegate?
  @available(iOS 14.0, *)
  var configuration: TKToken.Configuration { get }
  var keychainContents: TKTokenKeychainContents? { get }
}
@available(iOS 10.0, *)
protocol TKTokenDelegate : NSObjectProtocol {
  func createSession(_ token: TKToken) throws -> TKTokenSession
  optional func token(_ token: TKToken, terminateSession session: TKTokenSession)
}
@available(iOS 10.0, *)
class TKTokenDriver : NSObject {
  weak var delegate: @sil_weak TKTokenDriverDelegate?
}
@available(iOS 10.0, *)
protocol TKTokenDriverDelegate : NSObjectProtocol {
  @available(iOS 14.0, *)
  optional func tokenDriver(_ driver: TKTokenDriver, tokenFor configuration: TKToken.Configuration) throws -> TKToken
  optional func tokenDriver(_ driver: TKTokenDriver, terminateToken token: TKToken)
}
@available(iOS 10.0, *)
class TKTokenAuthOperation : NSObject, NSSecureCoding {
  func finish() throws
}
@available(iOS 10.0, *)
class TKTokenPasswordAuthOperation : TKTokenAuthOperation {
  var password: String?
}
