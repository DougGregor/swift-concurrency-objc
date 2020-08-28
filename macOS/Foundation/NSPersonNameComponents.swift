
@available(macOS 10.11, *)
class NSPersonNameComponents : NSObject, NSCopying, NSSecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  var phoneticRepresentation: PersonNameComponents?
}

@available(macOS 10.11, iOS 9.0, *)
extension NSPersonNameComponents : _HasCustomAnyHashableRepresentation {
}
