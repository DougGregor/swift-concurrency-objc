
@available(iOS 9.0, *)
class PKContact : NSObject {
  var name: PersonNameComponents?
  var postalAddress: CNPostalAddress?
  var phoneNumber: CNPhoneNumber?
  var emailAddress: String?
  @available(iOS, introduced: 9.2, deprecated: 10.3, message: "Use subLocality and subAdministrativeArea on -postalAddress instead")
  var supplementarySubLocality: String?
}
