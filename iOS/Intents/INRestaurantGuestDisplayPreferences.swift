
@available(iOS 10.0, *)
class INRestaurantGuestDisplayPreferences : NSObject, NSSecureCoding, NSCopying {
  var nameFieldFirstNameOptional: Bool
  var nameFieldLastNameOptional: Bool
  var nameFieldShouldBeDisplayed: Bool
  var emailAddressFieldShouldBeDisplayed: Bool
  var phoneNumberFieldShouldBeDisplayed: Bool
  var nameEditable: Bool
  var emailAddressEditable: Bool
  var phoneNumberEditable: Bool
}
