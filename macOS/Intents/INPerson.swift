
@available(macOS 11.0, *)
class INPerson : NSObject, NSCopying, NSSecureCoding {
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?)
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?, relationship: INPersonRelationship?)
  init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?, isMe: Bool)
  @NSCopying var personHandle: INPersonHandle? { get }
  var nameComponents: PersonNameComponents? { get }
  var displayName: String { get }
  @NSCopying var image: INImage? { get }
  var contactIdentifier: String? { get }
  var customIdentifier: String? { get }
  var relationship: INPersonRelationship? { get }
}
@available(macOS 11.0, *)
enum INPersonSuggestionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case socialProfile
  case instantMessageAddress
}
extension INPerson {
  var aliases: [INPersonHandle]? { get }
  var suggestionType: INPersonSuggestionType { get }
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?, aliases: [INPersonHandle]?, suggestionType: INPersonSuggestionType)
}
