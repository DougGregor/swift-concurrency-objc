
@available(iOS 10.3, *)
class INPayBillIntent : INIntent {
  init(billPayee: INBillPayee?, from fromAccount: INPaymentAccount?, transactionAmount: INPaymentAmount?, transactionScheduledDate: INDateComponentsRange?, transactionNote: String?, billType: INBillType, dueDate: INDateComponentsRange?)
  @NSCopying var billPayee: INBillPayee? { get }
  @NSCopying var fromAccount: INPaymentAccount? { get }
  @NSCopying var transactionAmount: INPaymentAmount? { get }
  @NSCopying var transactionScheduledDate: INDateComponentsRange? { get }
  var transactionNote: String? { get }
  var billType: INBillType { get }
  @NSCopying var dueDate: INDateComponentsRange? { get }
}
@available(iOS 10.3, *)
protocol INPayBillIntentHandling : NSObjectProtocol {
  func handle(intent: INPayBillIntent, completion: @escaping (INPayBillIntentResponse) -> Void)
  func handle(intent: INPayBillIntent) async -> INPayBillIntentResponse
  optional func confirm(intent: INPayBillIntent, completion: @escaping (INPayBillIntentResponse) -> Void)
  optional func confirm(intent: INPayBillIntent) async -> INPayBillIntentResponse
  optional func resolveBillPayee(for intent: INPayBillIntent, with completion: @escaping (INBillPayeeResolutionResult) -> Void)
  optional func resolveFromAccount(for intent: INPayBillIntent, with completion: @escaping (INPaymentAccountResolutionResult) -> Void)
  optional func resolveTransactionAmount(for intent: INPayBillIntent, with completion: @escaping (INPaymentAmountResolutionResult) -> Void)
  optional func resolveTransactionScheduledDate(for intent: INPayBillIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolveTransactionNote(for intent: INPayBillIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolveBillType(for intent: INPayBillIntent, with completion: @escaping (INBillTypeResolutionResult) -> Void)
  optional func resolveDueDate(for intent: INPayBillIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
}
