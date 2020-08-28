
@available(watchOS 3.2, *)
class INPaymentAmount : NSObject, NSCopying, NSSecureCoding {
  init(amountType: INAmountType, amount: INCurrencyAmount)
  @NSCopying var amount: INCurrencyAmount? { get }
  var amountType: INAmountType { get }
}
