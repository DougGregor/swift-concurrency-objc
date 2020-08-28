
@available(iOS 9.0, *)
class CNPostalAddress : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var street: String { get }
  @available(iOS 10.3, *)
  var subLocality: String { get }
  var city: String { get }
  @available(iOS 10.3, *)
  var subAdministrativeArea: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }
  class func localizedString(forKey key: String) -> String
}
@available(iOS 9.0, *)
let CNPostalAddressStreetKey: String
@available(iOS 10.3, *)
let CNPostalAddressSubLocalityKey: String
@available(iOS 9.0, *)
let CNPostalAddressCityKey: String
@available(iOS 10.3, *)
let CNPostalAddressSubAdministrativeAreaKey: String
@available(iOS 9.0, *)
let CNPostalAddressStateKey: String
@available(iOS 9.0, *)
let CNPostalAddressPostalCodeKey: String
@available(iOS 9.0, *)
let CNPostalAddressCountryKey: String
@available(iOS 9.0, *)
let CNPostalAddressISOCountryCodeKey: String
