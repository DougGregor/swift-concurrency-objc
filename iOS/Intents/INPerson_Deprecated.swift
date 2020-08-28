
extension INPerson {
  @available(iOS, introduced: 10.0, deprecated: 10.0, message: "Use personHandle instead")
  var handle: String? { get }
  @available(iOS, introduced: 10.0, deprecated: 10.0, message: "Use the designated initializer instead")
  convenience init(handle: String, nameComponents: PersonNameComponents, contactIdentifier: String?)
  @available(iOS, introduced: 10.0, deprecated: 10.0, message: "Use the designated initializer instead")
  convenience init(handle: String, displayName: String?, contactIdentifier: String?)
  @available(iOS, introduced: 10.0, deprecated: 10.0, message: "Use the designated initializer instead")
  convenience init(handle: String, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?)
}
