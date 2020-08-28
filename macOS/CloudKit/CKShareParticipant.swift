
@available(macOS 10.12, *)
enum CKShare_Participant_AcceptanceStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case pending
  case accepted
  case removed
}
@available(macOS 10.12, *)
enum CKShare_Participant_Permission : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case none
  case readOnly
  case readWrite
}
@available(macOS 10.14, *)
enum CKShare_Participant_Role : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case owner
  case privateUser
  case publicUser
}
@available(macOS, introduced: 10.12, deprecated: 10.14, renamed: "CKShareParticipantRole")
enum CKShare_Participant_ParticipantType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case owner
  case privateUser
  case publicUser
}
extension CKShare {
  @available(macOS 10.12, *)
  class Participant : NSObject, NSSecureCoding, NSCopying {
    @NSCopying var userIdentity: CKUserIdentity { get }
    @available(macOS 10.14, *)
    var role: CKShare_Participant_Role
    @available(macOS, introduced: 10.12, deprecated: 10.14)
    var type: CKShare_Participant_ParticipantType
    var acceptanceStatus: CKShare_Participant_AcceptanceStatus { get }
    var permission: CKShare_Participant_Permission
  }
}
