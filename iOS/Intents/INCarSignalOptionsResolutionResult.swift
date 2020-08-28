
@available(iOS 10.3, *)
class INCarSignalOptionsResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCarSignalOptions: INCarSignalOptions = []) -> Self
  class func confirmationRequired(with carSignalOptionsToConfirm: INCarSignalOptions = []) -> Self
}
