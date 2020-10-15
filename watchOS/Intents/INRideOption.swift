
@available(watchOS 3.0, *)
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

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INRideOption {
  @available(swift 4.0)
  @available(iOS 10.0, watchOS 3.2, *)
  @nonobjc var usesMeteredFare: Bool?
}
extension INRideOption {
  var identifier: String?
}
