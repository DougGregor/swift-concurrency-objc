
@available(tvOS 10.0, *)
class INRideOption : NSObject, NSCopying, NSSecureCoding {
  init(name: String, estimatedPickupDate: Date)
  var name: String
  var estimatedPickupDate: Date
  @NSCopying var priceRange: INPriceRange?
  @NSCopying var __usesMeteredFare: NSNumber?
  var disclaimerMessage: String?
  var availablePartySizeOptions: [INRidePartySizeOption]?
  var availablePartySizeOptionsSelectionPrompt: String?
  var specialPricing: String?
  @NSCopying var specialPricingBadgeImage: INImage?
  var fareLineItems: [INRideFareLineItem]?
  var userActivityForBookingInApplication: NSUserActivity?
}
extension INRideOption {
  var identifier: String?
}
