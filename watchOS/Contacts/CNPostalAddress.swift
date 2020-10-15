
@available(watchOS 2.0, *)
class CNPostalAddress : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var street: String { get }
  @available(watchOS 3.3, *)
  var subLocality: String { get }
  var city: String { get }
  @available(watchOS 3.3, *)
  var subAdministrativeArea: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }
  class func localizedString(forKey key: String) -> String
}
@available(watchOS 2.0, *)
let CNPostalAddressStreetKey: String
@available(watchOS 3.3, *)
let CNPostalAddressSubLocalityKey: String
@available(watchOS 2.0, *)
let CNPostalAddressCityKey: String
@available(watchOS 3.3, *)
let CNPostalAddressSubAdministrativeAreaKey: String
@available(watchOS 2.0, *)
let CNPostalAddressStateKey: String
@available(watchOS 2.0, *)
let CNPostalAddressPostalCodeKey: String
@available(watchOS 2.0, *)
let CNPostalAddressCountryKey: String
@available(watchOS 2.0, *)
let CNPostalAddressISOCountryCodeKey: String
