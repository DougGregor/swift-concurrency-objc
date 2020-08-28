
extension INRideDriver {
  @available(iOS, introduced: 10.0, deprecated: 10.2, message: "Use the designated initializer instead")
  convenience init(personHandle: INPersonHandle, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, rating: String?, phoneNumber: String?)
  @available(iOS, introduced: 10.0, deprecated: 10.0, message: "Use the designated initializer instead")
  convenience init(handle: String, displayName: String?, image: INImage?, rating: String?, phoneNumber: String?)
  @available(iOS, introduced: 10.0, deprecated: 10.0, message: "Use the designated initializer instead")
  convenience init(handle: String, nameComponents: PersonNameComponents, image: INImage?, rating: String?, phoneNumber: String?)
}
