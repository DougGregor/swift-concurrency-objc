
@available(watchOS 3.0, *)
class PKContact : NSObject {
  var name: PersonNameComponents?
  var postalAddress: CNPostalAddress?
  var phoneNumber: CNPhoneNumber?
  var emailAddress: String?
  @available(watchOS, introduced: 3.0, deprecated: 3.2, message: "Use subLocality and subAdministrativeArea on -postalAddress instead")
  var supplementarySubLocality: String?
}
