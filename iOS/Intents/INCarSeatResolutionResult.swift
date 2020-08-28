
@available(iOS 10.0, *)
class INCarSeatResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCarSeat: INCarSeat) -> Self
  class func confirmationRequired(with carSeatToConfirm: INCarSeat) -> Self
}
