
@available(tvOS 10.3, *)
class INBillDetails : NSObject, NSCopying, NSSecureCoding {
  init?(billType: INBillType, paymentStatus: INPaymentStatus, billPayee: INBillPayee?, amountDue: INCurrencyAmount?, minimumDue: INCurrencyAmount?, lateFee: INCurrencyAmount?, dueDate: DateComponents?, paymentDate: DateComponents?)
  @NSCopying var billPayee: INBillPayee?
  @NSCopying var amountDue: INCurrencyAmount?
  @NSCopying var minimumDue: INCurrencyAmount?
  @NSCopying var lateFee: INCurrencyAmount?
  var dueDate: DateComponents?
  var paymentDate: DateComponents?
  var billType: INBillType
  var paymentStatus: INPaymentStatus
}
