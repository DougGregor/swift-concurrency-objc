
@available(iOS 10.0, *)
class INRelativeSettingResolutionResult : INIntentResolutionResult {
  class func success(with resolvedRelativeSetting: INRelativeSetting) -> Self
  class func confirmationRequired(with relativeSettingToConfirm: INRelativeSetting) -> Self
}
