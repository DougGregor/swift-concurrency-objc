
class ODRecord : NSObject {
  @available(macOS 10.6, *)
  func setNodeCredentials(_ inUsername: String!, password inPassword: String!) throws
  @available(macOS 10.6, *)
  func setNodeCredentialsWithRecordType(_ inRecordType: String!, authenticationType inType: String!, authenticationItems inItems: [Any]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>!, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>!) throws
  @available(macOS 10.6, *)
  func verifyPassword(_ inPassword: String!) throws
  @available(macOS 10.6, *)
  func verifyExtended(withAuthenticationType inType: String!, authenticationItems inItems: [Any]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>!, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>!) throws
  @available(macOS 10.6, *)
  func changePassword(_ oldPassword: String!, toPassword newPassword: String!) throws
  @available(macOS 10.6, *)
  func synchronize() throws
  @available(macOS 10.6, *)
  var recordType: String! { get }
  @available(macOS 10.6, *)
  var recordName: String! { get }
  @available(macOS 10.6, *)
  func recordDetails(forAttributes inAttributes: [Any]!) throws -> [AnyHashable : Any]
  @available(macOS 10.6, *)
  func values(forAttribute inAttribute: String!) throws -> [Any]
  @available(macOS 10.6, *)
  func setValue(_ inValueOrValues: Any!, forAttribute inAttribute: String!) throws
  @available(macOS 10.6, *)
  func removeValues(forAttribute inAttribute: String!) throws
  @available(macOS 10.6, *)
  func addValue(_ inValue: Any!, toAttribute inAttribute: String!) throws
  @available(macOS 10.6, *)
  func removeValue(_ inValue: Any!, fromAttribute inAttribute: String!) throws
  @available(macOS 10.6, *)
  func delete() throws
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "use accountPoliciesAndReturnError:")
  func policies() throws -> [AnyHashable : Any]
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "use authenticationAllowedAndReturnError: and similar methods")
  func effectivePolicies() throws -> [AnyHashable : Any]
  @available(macOS, introduced: 10.9, deprecated: 10.10)
  func supportedPolicies() throws -> [AnyHashable : Any]
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "use setAccountPolicies:error:")
  func setPolicies(_ policies: [AnyHashable : Any]!) throws
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "use addAccountPolicy:toCategory:error:")
  func setPolicy(_ policy: String!, value: Any!) throws
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "use removeAccountPolicy:fromCategory:error:")
  func removePolicy(_ policy: String!) throws
  @available(macOS 10.10, *)
  func addAccountPolicy(_ policy: [AnyHashable : Any]!, toCategory category: String!) throws
  @available(macOS 10.10, *)
  func removeAccountPolicy(_ policy: [AnyHashable : Any]!, fromCategory category: String!) throws
  @available(macOS 10.10, *)
  func setAccountPolicies(_ policies: [AnyHashable : Any]!) throws
  @available(macOS 10.10, *)
  func accountPolicies() throws -> [AnyHashable : Any]
  @available(macOS 10.10, *)
  func authenticationAllowed() throws
  @available(macOS 10.10, *)
  func passwordChangeAllowed(_ newPassword: String!) throws
  @available(macOS 10.10, *)
  func willPasswordExpire(_ willExpireIn: UInt64) -> Bool
  @available(macOS 10.10, *)
  func willAuthenticationsExpire(_ willExpireIn: UInt64) -> Bool
  @available(macOS 10.10, *)
  var secondsUntilPasswordExpires: Int64 { get }
  @available(macOS 10.10, *)
  var secondsUntilAuthenticationsExpire: Int64 { get }
}
extension ODRecord {
  @available(macOS 10.6, *)
  func addMemberRecord(_ inRecord: ODRecord!) throws
  @available(macOS 10.6, *)
  func removeMemberRecord(_ inRecord: ODRecord!) throws
  @available(macOS 10.6, *)
  func isMemberRecord(_ inRecord: ODRecord!) throws
}
