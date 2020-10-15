
@available(iOS 10.0, *)
class INRestaurantResolutionResult : INIntentResolutionResult {
  class func success(with resolvedRestaurant: INRestaurant) -> Self
  class func disambiguation(with restaurantsToDisambiguate: [INRestaurant]) -> Self
  class func confirmationRequired(with restaurantToConfirm: INRestaurant?) -> Self
}
