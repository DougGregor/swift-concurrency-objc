
extension INPerson {
  @available(watchOS, introduced: 3.0, deprecated: 3.0, message: "Use personHandle instead")
  var handle: String? { get }
  @available(watchOS, introduced: 3.0, deprecated: 3.0, message: "Use the designated initializer instead")
  convenience init(handle: String, nameComponents: PersonNameComponents, contactIdentifier: String?)
  @available(watchOS, introduced: 3.0, deprecated: 3.0, message: "Use the designated initializer instead")
  convenience init(handle: String, displayName: String?, contactIdentifier: String?)
  @available(watchOS, introduced: 3.0, deprecated: 3.0, message: "Use the designated initializer instead")
  convenience init(handle: String, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?)
}
