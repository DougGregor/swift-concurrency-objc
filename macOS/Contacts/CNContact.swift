
@available(macOS 10.11, *)
enum CNContactType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case person
  case organization
}
@available(macOS 10.11, *)
enum CNContactSortOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case userDefault
  case givenName
  case familyName
}
protocol CNKeyDescriptor : NSCopying, NSSecureCoding, NSObjectProtocol {
}
extension NSString : CNKeyDescriptor {
}
@available(macOS 10.11, *)
class CNContact : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var identifier: String { get }
  var contactType: CNContactType { get }
  var namePrefix: String { get }
  var givenName: String { get }
  var middleName: String { get }
  var familyName: String { get }
  var previousFamilyName: String { get }
  var nameSuffix: String { get }
  var nickname: String { get }
  var organizationName: String { get }
  var departmentName: String { get }
  var jobTitle: String { get }
  var phoneticGivenName: String { get }
  var phoneticMiddleName: String { get }
  var phoneticFamilyName: String { get }
  @available(macOS 10.12, *)
  var phoneticOrganizationName: String { get }
  var note: String { get }
  var imageData: Data? { get }
  var thumbnailImageData: Data? { get }
  @available(macOS 10.12, *)
  var imageDataAvailable: Bool { get }
  var phoneNumbers: [CNLabeledValue<CNPhoneNumber>] { get }
  var emailAddresses: [CNLabeledValue<NSString>] { get }
  var postalAddresses: [CNLabeledValue<CNPostalAddress>] { get }
  var urlAddresses: [CNLabeledValue<NSString>] { get }
  var contactRelations: [CNLabeledValue<CNContactRelation>] { get }
  var socialProfiles: [CNLabeledValue<CNSocialProfile>] { get }
  var instantMessageAddresses: [CNLabeledValue<CNInstantMessageAddress>] { get }
  var birthday: DateComponents? { get }
  var nonGregorianBirthday: DateComponents? { get }
  var dates: [CNLabeledValue<NSDateComponents>] { get }
  func isKeyAvailable(_ key: String) -> Bool
  func areKeysAvailable(_ keyDescriptors: [CNKeyDescriptor]) -> Bool
  class func localizedString(forKey key: String) -> String
  class func comparator(forNameSortOrder sortOrder: CNContactSortOrder) -> Comparator
  class func descriptorForAllComparatorKeys() -> CNKeyDescriptor
  func isUnifiedWithContact(withIdentifier contactIdentifier: String) -> Bool
}
let CNContactPropertyNotFetchedExceptionName: String
@available(macOS 10.11, *)
let CNContactIdentifierKey: String
@available(macOS 10.11, *)
let CNContactNamePrefixKey: String
@available(macOS 10.11, *)
let CNContactGivenNameKey: String
@available(macOS 10.11, *)
let CNContactMiddleNameKey: String
@available(macOS 10.11, *)
let CNContactFamilyNameKey: String
@available(macOS 10.11, *)
let CNContactPreviousFamilyNameKey: String
@available(macOS 10.11, *)
let CNContactNameSuffixKey: String
@available(macOS 10.11, *)
let CNContactNicknameKey: String
@available(macOS 10.11, *)
let CNContactOrganizationNameKey: String
@available(macOS 10.11, *)
let CNContactDepartmentNameKey: String
@available(macOS 10.11, *)
let CNContactJobTitleKey: String
@available(macOS 10.11, *)
let CNContactPhoneticGivenNameKey: String
@available(macOS 10.11, *)
let CNContactPhoneticMiddleNameKey: String
@available(macOS 10.11, *)
let CNContactPhoneticFamilyNameKey: String
@available(macOS 10.12, *)
let CNContactPhoneticOrganizationNameKey: String
@available(macOS 10.11, *)
let CNContactBirthdayKey: String
@available(macOS 10.11, *)
let CNContactNonGregorianBirthdayKey: String
@available(macOS 10.11, *)
let CNContactNoteKey: String
@available(macOS 10.11, *)
let CNContactImageDataKey: String
@available(macOS 10.11, *)
let CNContactThumbnailImageDataKey: String
@available(macOS 10.12, *)
let CNContactImageDataAvailableKey: String
@available(macOS 10.11, *)
let CNContactTypeKey: String
@available(macOS 10.11, *)
let CNContactPhoneNumbersKey: String
@available(macOS 10.11, *)
let CNContactEmailAddressesKey: String
@available(macOS 10.11, *)
let CNContactPostalAddressesKey: String
@available(macOS 10.11, *)
let CNContactDatesKey: String
@available(macOS 10.11, *)
let CNContactUrlAddressesKey: String
@available(macOS 10.11, *)
let CNContactRelationsKey: String
@available(macOS 10.11, *)
let CNContactSocialProfilesKey: String
@available(macOS 10.11, *)
let CNContactInstantMessageAddressesKey: String
