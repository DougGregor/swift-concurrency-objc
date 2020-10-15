
extension INRideDriver {
  @available(watchOS, introduced: 3.0, deprecated: 3.2, message: "Use the designated initializer instead")
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, rating: String?, phoneNumber: String?)
  @available(watchOS, introduced: 3.0, deprecated: 3.0, message: "Use the designated initializer instead")
  convenience init(handle: String, displayName: String?, image: INImage?, rating: String?, phoneNumber: String?)
  @available(watchOS, introduced: 3.0, deprecated: 3.0, message: "Use the designated initializer instead")
  convenience init(handle: String, nameComponents: PersonNameComponents, image: INImage?, rating: String?, phoneNumber: String?)
}
