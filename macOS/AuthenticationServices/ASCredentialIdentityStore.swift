
@available(macOS 11.0, *)
let ASCredentialIdentityStoreErrorDomain: String
@available(macOS 11.0, *)
struct ASCredentialIdentityStoreError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var internalError: ASCredentialIdentityStoreError.Code { get }
  static var storeDisabled: ASCredentialIdentityStoreError.Code { get }
  static var storeBusy: ASCredentialIdentityStoreError.Code { get }
}
@available(macOS 11.0, *)
class ASCredentialIdentityStore : NSObject {
  class var shared: ASCredentialIdentityStore { get }
  func getState(_ completion: @escaping (ASCredentialIdentityStoreState) -> Void)
  func saveCredentialIdentities(_ credentialIdentities: [ASPasswordCredentialIdentity], completion: ((Bool, Error?) -> Void)? = nil)
  func saveCredentialIdentities(_ credentialIdentities: [ASPasswordCredentialIdentity]) async throws -> Bool
  func removeCredentialIdentities(_ credentialIdentities: [ASPasswordCredentialIdentity], completion: ((Bool, Error?) -> Void)? = nil)
  func removeCredentialIdentities(_ credentialIdentities: [ASPasswordCredentialIdentity]) async throws -> Bool
  func removeAllCredentialIdentities(_ completion: ((Bool, Error?) -> Void)? = nil)
  func replaceCredentialIdentities(with newCredentialIdentities: [ASPasswordCredentialIdentity], completion: ((Bool, Error?) -> Void)? = nil)
  func replaceCredentialIdentities(with newCredentialIdentities: [ASPasswordCredentialIdentity]) async throws -> Bool
}
