
@available(watchOS 3.2, *)
class INPaymentRecord : NSObject, NSCopying, NSSecureCoding {
  init?(payee: INPerson?, payer: INPerson?, currencyAmount: INCurrencyAmount?, paymentMethod: INPaymentMethod?, note: String?, status: INPaymentStatus, feeAmount: INCurrencyAmount?)
  convenience init?(payee: INPerson?, payer: INPerson?, currencyAmount: INCurrencyAmount?, paymentMethod: INPaymentMethod?, note: String?, status: INPaymentStatus)
  @NSCopying var payee: INPerson? { get }
  @NSCopying var payer: INPerson? { get }
  @NSCopying var currencyAmount: INCurrencyAmount? { get }
  var note: String? { get }
  var status: INPaymentStatus { get }
  @NSCopying var paymentMethod: INPaymentMethod? { get }
  @NSCopying var feeAmount: INCurrencyAmount? { get }
}
