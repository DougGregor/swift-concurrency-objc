
@available(macOS 10.12, *)
class PKContact : NSObject {
  var name: PersonNameComponents?
  var postalAddress: CNPostalAddress?
  var phoneNumber: CNPhoneNumber?
  var emailAddress: String?
  var supplementarySubLocality: String?
}
