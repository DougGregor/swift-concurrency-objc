
@available(iOS 10.0, *)
class INRideDriver : INPerson, NSCopying, NSSecureCoding {
  var rating: String? { get }
  var phoneNumber: String? { get }
  @available(iOS 10.2, *)
  init(phoneNumber: String, nameComponents: PersonNameComponents?, displayName: String?, image: INImage?, rating: String?)
}
