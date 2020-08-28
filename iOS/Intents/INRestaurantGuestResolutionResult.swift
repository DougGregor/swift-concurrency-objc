
@available(iOS 10.0, *)
class INRestaurantGuestResolutionResult : INIntentResolutionResult {
  class func success(with resolvedRestaurantGuest: INRestaurantGuest) -> Self
  class func disambiguation(with restaurantGuestsToDisambiguate: [INRestaurantGuest]) -> Self
  class func confirmationRequired(with restaurantGuestToConfirm: INRestaurantGuest?) -> Self
}
