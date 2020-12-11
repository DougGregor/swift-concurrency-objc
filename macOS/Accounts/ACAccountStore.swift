
enum ACAccountCredentialRenewResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case renewed
  case rejected
  case failed
}
typealias ACAccountStoreSaveCompletionHandler = (Bool, Error?) -> Void
typealias ACAccountStoreRemoveCompletionHandler = (Bool, Error?) -> Void
typealias ACAccountStoreRequestAccessCompletionHandler = (Bool, Error?) -> Void
typealias ACAccountStoreCredentialRenewalHandler = (ACAccountCredentialRenewResult, Error?) -> Void
@available(macOS 10.8, *)
class ACAccountStore : NSObject {
  weak var accounts: @sil_weak NSArray! { get }
  func account(withIdentifier identifier: String!) -> ACAccount!
  func accountType(withAccountTypeIdentifier typeIdentifier: String!) -> ACAccountType!
  func accounts(with accountType: ACAccountType!) -> [Any]!
  func saveAccount(_ account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreSaveCompletionHandler!)
  func saveAccount(_ account: ACAccount!) async throws -> Bool
  func requestAccessToAccounts(with accountType: ACAccountType!, options: [AnyHashable : Any]! = [:], completion: ACAccountStoreRequestAccessCompletionHandler!)
  func requestAccessToAccounts(with accountType: ACAccountType!, options: [AnyHashable : Any]! = [:]) async throws -> Bool
  func renewCredentials(for account: ACAccount!, completion completionHandler: ACAccountStoreCredentialRenewalHandler!)
  func renewCredentials(for account: ACAccount!) async throws -> ACAccountCredentialRenewResult
  func removeAccount(_ account: ACAccount!, withCompletionHandler completionHandler: ACAccountStoreRemoveCompletionHandler!)
  func removeAccount(_ account: ACAccount!) async throws -> Bool
}
extension NSNotification.Name {
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Public notification deprecated. Internal clients, see private header for replacement")
  static let ACAccountStoreDidChange: NSNotification.Name
}
