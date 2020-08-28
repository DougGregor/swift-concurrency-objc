
@available(tvOS 10.3, *)
class INPaymentAmount : NSObject, NSCopying, NSSecureCoding {
  init(amountType: INAmountType, amount: INCurrencyAmount)
  @NSCopying var amount: INCurrencyAmount? { get }
  var amountType: INAmountType { get }
}
