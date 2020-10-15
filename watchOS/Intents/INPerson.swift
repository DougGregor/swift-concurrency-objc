
@available(watchOS 3.2, *)
class INPerson : NSObject, NSCopying, NSSecureCoding {
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?)
  @available(watchOS 7.0, *)
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?, relationship: INPersonRelationship?)
  @available(watchOS 5.0, *)
  init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?, isMe: Bool)
  @NSCopying var personHandle: INPersonHandle? { get }
  var nameComponents: PersonNameComponents? { get }
  var displayName: String { get }
  @NSCopying var image: INImage? { get }
  var contactIdentifier: String? { get }
  var customIdentifier: String? { get }
  @available(watchOS 3.2, *)
  var relationship: INPersonRelationship? { get }
}
@available(watchOS 3.2, *)
enum INPersonSuggestionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(watchOS 5.0, *)
  case none
  case socialProfile
  case instantMessageAddress
}
extension INPerson {
  var aliases: [INPersonHandle]? { get }
  var suggestionType: INPersonSuggestionType { get }
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?, aliases: [INPersonHandle]?, suggestionType: INPersonSuggestionType)
}
