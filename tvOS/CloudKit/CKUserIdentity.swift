
@available(tvOS 10.0, *)
class CKUserIdentity : NSObject, NSSecureCoding, NSCopying {
  @NSCopying var lookupInfo: CKUserIdentity.LookupInfo? { get }
  var nameComponents: PersonNameComponents? { get }
  @NSCopying var userRecordID: CKRecord.ID? { get }
  var hasiCloudAccount: Bool { get }
}
