
@available(tvOS 10.0, *)
class INRelativeReferenceResolutionResult : INIntentResolutionResult {
  class func success(with resolvedRelativeReference: INRelativeReference) -> Self
  class func confirmationRequired(with relativeReferenceToConfirm: INRelativeReference) -> Self
}
