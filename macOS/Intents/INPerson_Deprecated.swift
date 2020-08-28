
extension INPerson {
  @available(macOS, introduced: 10.12, deprecated: 10.12, message: "Use personHandle instead")
  var handle: String? { get }
  @available(macOS, introduced: 10.12, deprecated: 10.12, message: "Use the designated initializer instead")
  convenience init(handle: String, nameComponents: PersonNameComponents, contactIdentifier: String?)
  @available(macOS, introduced: 10.12, deprecated: 10.12, message: "Use the designated initializer instead")
  convenience init(handle: String, displayName: String?, contactIdentifier: String?)
  @available(macOS, introduced: 10.12, deprecated: 10.12, message: "Use the designated initializer instead")
  convenience init(handle: String, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, contactIdentifier: String?)
}
