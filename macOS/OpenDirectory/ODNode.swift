
class ODNode : NSObject {
  @available(macOS 10.6, *)
  init(session inSession: ODSession!, type inType: ODNodeType) throws
  @available(macOS 10.6, *)
  init(session inSession: ODSession!, name inName: String!) throws
  @available(macOS 10.6, *)
  func subnodeNames() throws -> [Any]
  @available(macOS 10.6, *)
  func unreachableSubnodeNames() throws -> [Any]
  @available(macOS 10.6, *)
  var nodeName: String! { get }
  @available(macOS 10.6, *)
  func nodeDetails(forKeys inKeys: [Any]!) throws -> [AnyHashable : Any]
  @available(macOS 10.6, *)
  func supportedRecordTypes() throws -> [Any]
  @available(macOS 10.6, *)
  func supportedAttributes(forRecordType inRecordType: String!) throws -> [Any]
  @available(macOS 10.6, *)
  func setCredentialsWithRecordType(_ inRecordType: String!, recordName inRecordName: String!, password inPassword: String!) throws
  @available(macOS 10.6, *)
  func setCredentialsWithRecordType(_ inRecordType: String!, authenticationType inType: String!, authenticationItems inItems: [Any]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>!, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>!) throws
  @available(macOS 10.6, *)
  @available(macOS, unavailable, introduced: 10.6, deprecated: 10.7, message: "APIs deprecated as of macOS 10.9 and earlier are unavailable in Swift")
  func setCredentialsUsingKerberosCache(_ inCacheName: String!) throws
  @available(macOS 10.6, *)
  func createRecord(withRecordType inRecordType: String!, name inRecordName: String!, attributes inAttributes: [AnyHashable : Any]! = [:]) throws -> ODRecord
  @available(macOS 10.6, *)
  func record(withRecordType inRecordType: String!, name inRecordName: String!, attributes inAttributes: Any!) throws -> ODRecord
  @available(macOS 10.6, *)
  func customCall(_ inCustomCode: Int, send inSendData: Data!) throws -> Data
  @available(macOS 10.9, *)
  func customFunction(_ function: String!, payload: Any!) throws -> Any
  var configuration: ODConfiguration! { get }
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "use accountPoliciesAndReturnError:")
  func policies() throws -> [AnyHashable : Any]
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
  func passwordContentCheck(_ password: String!, forRecordName recordName: String!) throws
}
