
@available(tvOS 10.0, *)
class INPerson : NSObject, NSCopying, NSSecureCoding {
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?)
  @available(tvOS 14.0, *)
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?, relationship: INPersonRelationship?)
  @available(tvOS 12.0, *)
  init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?, isMe: Bool)
  @NSCopying var personHandle: INPersonHandle? { get }
  var nameComponents: PersonNameComponents? { get }
  var displayName: String { get }
  @NSCopying var image: INImage? { get }
  var contactIdentifier: String? { get }
  var customIdentifier: String? { get }
  @available(tvOS 10.2, *)
  var relationship: INPersonRelationship? { get }
}
@available(tvOS 10.0, *)
enum INPersonSuggestionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 12.0, *)
  case none
  case socialProfile
  case instantMessageAddress
}
extension INPerson {
  var aliases: [INPersonHandle]? { get }
  var suggestionType: INPersonSuggestionType { get }
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?, aliases: [INPersonHandle]?, suggestionType: INPersonSuggestionType)
}
