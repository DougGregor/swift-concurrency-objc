
@available(iOS 12.0, *)
let ASCredentialIdentityStoreErrorDomain: String
@available(iOS 12.0, *)
struct ASCredentialIdentityStoreError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var internalError: ASCredentialIdentityStoreError.Code { get }
  static var storeDisabled: ASCredentialIdentityStoreError.Code { get }
  static var storeBusy: ASCredentialIdentityStoreError.Code { get }
}
@available(iOS 12.0, *)
class ASCredentialIdentityStore : NSObject {
  class var shared: ASCredentialIdentityStore { get }
  func getState(_ completion: @escaping (ASCredentialIdentityStoreState) -> Void)
  func saveCredentialIdentities(_ credentialIdentities: [ASPasswordCredentialIdentity], completion: ((Bool, Error?) -> Void)? = nil)
  func removeCredentialIdentities(_ credentialIdentities: [ASPasswordCredentialIdentity], completion: ((Bool, Error?) -> Void)? = nil)
  func removeAllCredentialIdentities(_ completion: ((Bool, Error?) -> Void)? = nil)
  func replaceCredentialIdentities(with newCredentialIdentities: [ASPasswordCredentialIdentity], completion: ((Bool, Error?) -> Void)? = nil)
}
