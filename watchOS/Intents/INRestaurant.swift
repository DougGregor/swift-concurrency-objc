
@available(watchOS 3.0, *)
class INRestaurant : NSObject, NSSecureCoding, NSCopying {
  init(location: CLLocation, name: String, vendorIdentifier: String, restaurantIdentifier: String)
  @NSCopying var location: CLLocation
  var name: String
  var vendorIdentifier: String
  var restaurantIdentifier: String
}
