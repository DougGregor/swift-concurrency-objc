
extension CKShare {
  @available(watchOS 3.0, *)
  class Metadata : NSObject, NSCopying, NSSecureCoding {
    var containerIdentifier: String { get }
    @NSCopying var share: CKShare { get }
    @NSCopying var rootRecordID: CKRecord.ID { get }
    @available(watchOS 5.0, *)
    var participantRole: CKShare_Participant_Role { get }
    @available(watchOS, introduced: 3.0, deprecated: 5.0)
    var participantType: CKShare_Participant_ParticipantType { get }
    var participantStatus: CKShare_Participant_AcceptanceStatus { get }
    var participantPermission: CKShare_Participant_Permission { get }
    @NSCopying var ownerIdentity: CKUserIdentity { get }
    @NSCopying var rootRecord: CKRecord? { get }
  }
}
