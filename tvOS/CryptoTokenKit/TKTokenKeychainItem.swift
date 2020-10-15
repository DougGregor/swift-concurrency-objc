
@available(tvOS 11.0, *)
class TKTokenKeychainItem : NSObject {
  init(objectID: TKToken.ObjectID)
  var objectID: TKToken.ObjectID { get }
  var label: String?
  var constraints: [NSNumber : Any]?
}
@available(tvOS 11.0, *)
class TKTokenKeychainCertificate : TKTokenKeychainItem {
  init?(certificate certificateRef: SecCertificate, objectID: TKToken.ObjectID)
  var data: Data { get }
}
@available(tvOS 11.0, *)
class TKTokenKeychainKey : TKTokenKeychainItem {
  init?(certificate certificateRef: SecCertificate?, objectID: TKToken.ObjectID)
  var keyType: String
  var applicationTag: Data?
  var keySizeInBits: Int
  var publicKeyData: Data?
  var publicKeyHash: Data?
  var canDecrypt: Bool
  var canSign: Bool
  var canPerformKeyExchange: Bool
  var isSuitableForLogin: Bool
}
@available(tvOS 11.0, *)
class TKTokenKeychainContents : NSObject {
  func fill(with items: [TKTokenKeychainItem])
  var items: [TKTokenKeychainItem] { get }
  func key(forObjectID objectID: TKToken.ObjectID) throws -> TKTokenKeychainKey
  func certificate(forObjectID objectID: TKToken.ObjectID) throws -> TKTokenKeychainCertificate
}
