
@available(macOS 10.5, *)
class CBIdentity : NSObject, NSCoding, NSCopying {
  /*not inherited*/ init?(name: String, authority: CBIdentityAuthority)
  @available(macOS 10.11, *)
  /*not inherited*/ init?(uniqueIdentifier uuid: UUID, authority: CBIdentityAuthority)
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use +identityWithUniqueIdentifier:authority: instead.")
  /*not inherited*/ init?(uuidString uuid: String, authority: CBIdentityAuthority)
  /*not inherited*/ init?(persistentReference data: Data)
  var authority: CBIdentityAuthority { get }
  @available(macOS 10.11, *)
  var uniqueIdentifier: UUID { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use the uniqueIdentifier property instead.")
  var uuidString: String { get }
  var fullName: String { get }
  var posixName: String { get }
  var aliases: [String] { get }
  var emailAddress: String? { get }
  var image: NSImage? { get }
  var persistentReference: Data? { get }
  var isHidden: Bool { get }
  func isMember(ofGroup group: CBGroupIdentity) -> Bool
}
@available(macOS 10.5, *)
class CBUserIdentity : CBIdentity, NSCoding, NSCopying {
  /*not inherited*/ init?(posixUID uid: uid_t, authority: CBIdentityAuthority)
  var posixUID: uid_t { get }
  var certificate: SecCertificate? { get }
  var isEnabled: Bool { get }
  func authenticate(withPassword password: String) -> Bool
}
@available(macOS 10.5, *)
class CBGroupIdentity : CBIdentity {
  /*not inherited*/ init?(posixGID gid: gid_t, authority: CBIdentityAuthority)
  var posixGID: gid_t { get }
  @available(macOS 10.11, *)
  var memberIdentities: [CBIdentity] { get }
}
