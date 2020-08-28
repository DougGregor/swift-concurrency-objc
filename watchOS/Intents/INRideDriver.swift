
@available(watchOS 3.2, *)
class INRideDriver : INPerson, NSCopying, NSSecureCoding {
  var rating: String? { get }
  var phoneNumber: String? { get }
  @available(watchOS 3.2, *)
  init(phoneNumber: String, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, rating: String?)
}
