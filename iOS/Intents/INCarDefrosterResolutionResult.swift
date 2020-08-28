
@available(iOS 10.0, *)
class INCarDefrosterResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCarDefroster: INCarDefroster) -> Self
  class func confirmationRequired(with carDefrosterToConfirm: INCarDefroster) -> Self
}
