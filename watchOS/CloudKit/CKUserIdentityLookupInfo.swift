
extension CKUserIdentity {
  @available(watchOS 3.0, *)
  class LookupInfo : NSObject, NSSecureCoding, NSCopying {
    init(emailAddress: String)
    init(phoneNumber: String)
    init(userRecordID: CKRecord.ID)
    class func lookupInfos(withEmails emails: [String]) -> [CKUserIdentity.LookupInfo]
    class func lookupInfos(withPhoneNumbers phoneNumbers: [String]) -> [CKUserIdentity.LookupInfo]
    class func lookupInfos(with recordIDs: [CKRecord.ID]) -> [CKUserIdentity.LookupInfo]
    var emailAddress: String? { get }
    var phoneNumber: String? { get }
    @NSCopying var userRecordID: CKRecord.ID? { get }
  }
}
