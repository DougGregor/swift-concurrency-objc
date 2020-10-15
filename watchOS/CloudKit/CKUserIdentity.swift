
@available(watchOS 3.0, *)
class CKUserIdentity : NSObject, NSSecureCoding, NSCopying {
  @NSCopying var lookupInfo: CKUserIdentity.LookupInfo? { get }
  var nameComponents: PersonNameComponents? { get }
  @NSCopying var userRecordID: CKRecord.ID? { get }
  @available(watchOS 4.0, *)
  var contactIdentifiers: [String] { get }
  var hasiCloudAccount: Bool { get }
}
