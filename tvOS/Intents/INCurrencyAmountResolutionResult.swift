
@available(tvOS 10.0, *)
class INCurrencyAmountResolutionResult : INIntentResolutionResult {
  class func success(with resolvedCurrencyAmount: INCurrencyAmount) -> Self
  class func disambiguation(with currencyAmountsToDisambiguate: [INCurrencyAmount]) -> Self
  class func confirmationRequired(with currencyAmountToConfirm: INCurrencyAmount?) -> Self
}
