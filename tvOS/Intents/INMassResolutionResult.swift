
@available(tvOS 13.0, *)
class INMassResolutionResult : INIntentResolutionResult {
  class func success(with resolvedMass: Measurement<UnitMass>) -> Self
  class func disambiguation(with massToDisambiguate: [Measurement<UnitMass>]) -> Self
  class func confirmationRequired(with massToConfirm: Measurement<UnitMass>?) -> Self
}
