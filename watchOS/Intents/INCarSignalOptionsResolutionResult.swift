
@available(watchOS 3.2, *)
class INCarSignalOptionsResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCarSignalOptions: INCarSignalOptions = []) -> Self
  class func confirmationRequired(with carSignalOptionsToConfirm: INCarSignalOptions = []) -> Self
}
