
var ODPacketSigningDisabled: Int { get }
var ODPacketSigningAllow: Int { get }
var ODPacketSigningRequired: Int { get }
var ODPacketEncryptionDisabled: Int { get }
var ODPacketEncryptionAllow: Int { get }
var ODPacketEncryptionRequired: Int { get }
var ODPacketEncryptionSSL: Int { get }
@available(macOS 10.9, *)
let ODTrustTypeJoined: String
@available(macOS 10.9, *)
let ODTrustTypeUsingCredentials: String
@available(macOS 10.9, *)
let ODTrustTypeAnonymous: String
@available(macOS 10.9, *)
class ODConfiguration : NSObject {
  @available(macOS 10.9, *)
  var nodeName: String!
  @available(macOS 10.9, *)
  var comment: String!
  @available(macOS 10.9, *)
  var defaultMappings: ODMappings!
  @available(macOS 10.9, *)
  var templateName: String!
  @available(macOS 10.9, *)
  var virtualSubnodes: [Any]!
  @available(macOS 10.9, *)
  var hideRegistration: Bool
  @available(macOS 10.9, *)
  var preferredDestinationHostName: String!
  @available(macOS 10.9, *)
  var preferredDestinationHostPort: UInt16
  @available(macOS 10.9, *)
  var trustAccount: String! { get }
  @available(macOS 10.9, *)
  var trustMetaAccount: String! { get }
  @available(macOS 10.9, *)
  var trustKerberosPrincipal: String! { get }
  @available(macOS 10.9, *)
  var trustType: String! { get }
  @available(macOS 10.9, *)
  var trustUsesMutualAuthentication: Bool { get }
  @available(macOS 10.9, *)
  var trustUsesKerberosKeytab: Bool { get }
  @available(macOS 10.9, *)
  var trustUsesSystemKeychain: Bool { get }
  @available(macOS 10.9, *)
  var packetSigning: Int
  @available(macOS 10.9, *)
  var packetEncryption: Int
  @available(macOS 10.9, *)
  var manInTheMiddleProtection: Bool
  @available(macOS 10.9, *)
  var queryTimeoutInSeconds: Int
  @available(macOS 10.9, *)
  var connectionSetupTimeoutInSeconds: Int
  @available(macOS 10.9, *)
  var connectionIdleTimeoutInSeconds: Int
  @available(macOS 10.9, *)
  var defaultModuleEntries: [Any]!
  @available(macOS 10.9, *)
  var authenticationModuleEntries: [Any]!
  @available(macOS 10.9, *)
  var discoveryModuleEntries: [Any]!
  @available(macOS 10.9, *)
  var generalModuleEntries: [Any]!
  @available(macOS 10.9, *)
  class func suggestedTrustAccount(_ hostname: String!) -> String!
  @available(macOS 10.9, *)
  class func suggestedTrustPassword(_ length: Int) -> String!
  @available(macOS 10.9, *)
  func addTrustType(_ trustType: String!, trustAccount account: String!, trustPassword accountPassword: String!, username: String!, password: String!, joinExisting join: Bool) throws
  @available(macOS 10.9, *)
  func removeTrust(usingUsername username: String!, password: String!, deleteTrustAccount deleteAccount: Bool) throws
}
