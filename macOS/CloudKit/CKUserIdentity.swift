
@available(macOS 10.12, *)
class CKUserIdentity : NSObject, NSSecureCoding, NSCopying {
  @NSCopying var lookupInfo: CKUserIdentity.LookupInfo? { get }
  var nameComponents: PersonNameComponents? { get }
  @NSCopying var userRecordID: CKRecord.ID? { get }
  @available(macOS 10.13, *)
  var contactIdentifiers: [String] { get }
  var hasiCloudAccount: Bool { get }
}
