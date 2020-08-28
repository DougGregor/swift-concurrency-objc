
@available(macOS 10.11, *)
class CNPostalAddress : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var street: String { get }
  @available(macOS 10.12.4, *)
  var subLocality: String { get }
  var city: String { get }
  @available(macOS 10.12.4, *)
  var subAdministrativeArea: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }
  class func localizedString(forKey key: String) -> String
}
@available(macOS 10.11, *)
let CNPostalAddressStreetKey: String
@available(macOS 10.12.4, *)
let CNPostalAddressSubLocalityKey: String
@available(macOS 10.11, *)
let CNPostalAddressCityKey: String
@available(macOS 10.12.4, *)
let CNPostalAddressSubAdministrativeAreaKey: String
@available(macOS 10.11, *)
let CNPostalAddressStateKey: String
@available(macOS 10.11, *)
let CNPostalAddressPostalCodeKey: String
@available(macOS 10.11, *)
let CNPostalAddressCountryKey: String
@available(macOS 10.11, *)
let CNPostalAddressISOCountryCodeKey: String
