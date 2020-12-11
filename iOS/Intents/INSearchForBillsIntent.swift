
@available(iOS 10.3, *)
class INSearchForBillsIntent : INIntent {
  init(billPayee: INBillPayee?, paymentDateRange: INDateComponentsRange?, billType: INBillType, status: INPaymentStatus, dueDateRange: INDateComponentsRange?)
  @NSCopying var billPayee: INBillPayee? { get }
  @NSCopying var paymentDateRange: INDateComponentsRange? { get }
  var billType: INBillType { get }
  var status: INPaymentStatus { get }
  @NSCopying var dueDateRange: INDateComponentsRange? { get }
}
@available(iOS 10.3, *)
protocol INSearchForBillsIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchForBillsIntent, completion: @escaping (INSearchForBillsIntentResponse) -> Void)
  func handle(intent: INSearchForBillsIntent) async -> INSearchForBillsIntentResponse
  optional func confirm(intent: INSearchForBillsIntent, completion: @escaping (INSearchForBillsIntentResponse) -> Void)
  optional func confirm(intent: INSearchForBillsIntent) async -> INSearchForBillsIntentResponse
  optional func resolveBillPayee(for intent: INSearchForBillsIntent, with completion: @escaping (INBillPayeeResolutionResult) -> Void)
  optional func resolveBillPayee(for intent: INSearchForBillsIntent) async -> INBillPayeeResolutionResult
  optional func resolvePaymentDateRange(for intent: INSearchForBillsIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolvePaymentDateRange(for intent: INSearchForBillsIntent) async -> INDateComponentsRangeResolutionResult
  optional func resolveBillType(for intent: INSearchForBillsIntent, with completion: @escaping (INBillTypeResolutionResult) -> Void)
  optional func resolveBillType(for intent: INSearchForBillsIntent) async -> INBillTypeResolutionResult
  optional func resolveStatus(for intent: INSearchForBillsIntent, with completion: @escaping (INPaymentStatusResolutionResult) -> Void)
  optional func resolveStatus(for intent: INSearchForBillsIntent) async -> INPaymentStatusResolutionResult
  optional func resolveDueDateRange(for intent: INSearchForBillsIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolveDueDateRange(for intent: INSearchForBillsIntent) async -> INDateComponentsRangeResolutionResult
}
