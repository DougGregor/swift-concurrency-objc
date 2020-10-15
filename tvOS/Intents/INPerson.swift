
extension INPerson {
  var aliases: [INPersonHandle]? { get }
  var suggestionType: INPersonSuggestionType { get }
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?, customIdentifier: String?, aliases: [INPersonHandle]?, suggestionType: INPersonSuggestionType)
}
