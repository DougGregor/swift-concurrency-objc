
extension CKShare {
  @available(iOS 10.0, *)
  class Metadata : NSObject, NSCopying, NSSecureCoding {
    var containerIdentifier: String { get }
    @NSCopying var share: CKShare { get }
    @NSCopying var rootRecordID: CKRecord.ID { get }
    @available(iOS 12.0, *)
    var participantRole: CKShare_Participant_Role { get }
    @available(iOS, introduced: 10.0, deprecated: 12.0)
    var participantType: CKShare_Participant_ParticipantType { get }
    var participantStatus: CKShare_Participant_AcceptanceStatus { get }
    var participantPermission: CKShare_Participant_Permission { get }
    @NSCopying var ownerIdentity: CKUserIdentity { get }
    @NSCopying var rootRecord: CKRecord? { get }
  }
}
