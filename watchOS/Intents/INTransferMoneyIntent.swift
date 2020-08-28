
@available(watchOS 4.0, *)
class INTransferMoneyIntent : INIntent {
  init(from fromAccount: INPaymentAccount?, to toAccount: INPaymentAccount?, transactionAmount: INPaymentAmount?, transactionScheduledDate: INDateComponentsRange?, transactionNote: String?)
  @NSCopying var fromAccount: INPaymentAccount? { get }
  @NSCopying var toAccount: INPaymentAccount? { get }
  @NSCopying var transactionAmount: INPaymentAmount? { get }
  @NSCopying var transactionScheduledDate: INDateComponentsRange? { get }
  var transactionNote: String? { get }
}
@available(watchOS 4.0, *)
protocol INTransferMoneyIntentHandling : NSObjectProtocol {
  func handle(intent: INTransferMoneyIntent, completion: @escaping (INTransferMoneyIntentResponse) -> Void)
  func handle(intent: INTransferMoneyIntent) async -> INTransferMoneyIntentResponse
  optional func confirm(intent: INTransferMoneyIntent, completion: @escaping (INTransferMoneyIntentResponse) -> Void)
  optional func confirm(intent: INTransferMoneyIntent) async -> INTransferMoneyIntentResponse
  optional func resolveFromAccount(for intent: INTransferMoneyIntent, with completion: @escaping (INPaymentAccountResolutionResult) -> Void)
  optional func resolveFromAccount(for intent: INTransferMoneyIntent) async -> INPaymentAccountResolutionResult
  optional func resolveToAccount(for intent: INTransferMoneyIntent, with completion: @escaping (INPaymentAccountResolutionResult) -> Void)
  optional func resolveToAccount(for intent: INTransferMoneyIntent) async -> INPaymentAccountResolutionResult
  optional func resolveTransactionAmount(for intent: INTransferMoneyIntent, with completion: @escaping (INPaymentAmountResolutionResult) -> Void)
  optional func resolveTransactionAmount(for intent: INTransferMoneyIntent) async -> INPaymentAmountResolutionResult
  optional func resolveTransactionScheduledDate(for intent: INTransferMoneyIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolveTransactionScheduledDate(for intent: INTransferMoneyIntent) async -> INDateComponentsRangeResolutionResult
  optional func resolveTransactionNote(for intent: INTransferMoneyIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolveTransactionNote(for intent: INTransferMoneyIntent) async -> INStringResolutionResult
}
