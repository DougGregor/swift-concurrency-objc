
@available(tvOS 10.0, *)
let __CKRecordTypeShare: String
@available(tvOS 10.0, *)
let __CKShareTitleKey: String
@available(tvOS 10.0, *)
let __CKShareThumbnailImageDataKey: String
@available(tvOS 10.0, *)
let __CKShareTypeKey: String
@available(tvOS 10.0, *)
class CKShare : CKRecord, NSSecureCoding, NSCopying {
  convenience init(rootRecord: CKRecord)
  init(rootRecord: CKRecord, shareID: CKRecord.ID)
  var publicPermission: CKShare_Participant_Permission
  var url: URL? { get }
  var participants: [CKShare.Participant] { get }
  @NSCopying var owner: CKShare.Participant { get }
  @NSCopying var currentUserParticipant: CKShare.Participant? { get }
  func addParticipant(_ participant: CKShare.Participant)
  func removeParticipant(_ participant: CKShare.Participant)
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@nonobjc extension CKShare {
  @available(swift 4.2)
  enum SystemFieldKey {
    static let title: CKRecord.FieldKey
    static let thumbnailImageData: CKRecord.FieldKey
    static let shareType: CKRecord.FieldKey
  }
}
