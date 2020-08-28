
@available(watchOS 4.0, *)
class INSearchForAccountsIntent : INIntent {
  init(accountNickname: INSpeakableString?, accountType: INAccountType, organizationName: INSpeakableString?, requestedBalanceType: INBalanceType)
  @NSCopying var accountNickname: INSpeakableString? { get }
  var accountType: INAccountType { get }
  @NSCopying var organizationName: INSpeakableString? { get }
  var requestedBalanceType: INBalanceType { get }
}
@available(watchOS 4.0, *)
protocol INSearchForAccountsIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchForAccountsIntent, completion: @escaping (INSearchForAccountsIntentResponse) -> Void)
  func handle(intent: INSearchForAccountsIntent) async -> INSearchForAccountsIntentResponse
  optional func confirm(intent: INSearchForAccountsIntent, completion: @escaping (INSearchForAccountsIntentResponse) -> Void)
  optional func confirm(intent: INSearchForAccountsIntent) async -> INSearchForAccountsIntentResponse
  optional func resolveAccountNickname(for intent: INSearchForAccountsIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveAccountNickname(for intent: INSearchForAccountsIntent) async -> INSpeakableStringResolutionResult
  optional func resolveAccountType(for intent: INSearchForAccountsIntent, with completion: @escaping (INAccountTypeResolutionResult) -> Void)
  optional func resolveAccountType(for intent: INSearchForAccountsIntent) async -> INAccountTypeResolutionResult
  optional func resolveOrganizationName(for intent: INSearchForAccountsIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveOrganizationName(for intent: INSearchForAccountsIntent) async -> INSpeakableStringResolutionResult
  optional func resolveRequestedBalanceType(for intent: INSearchForAccountsIntent, with completion: @escaping (INBalanceTypeResolutionResult) -> Void)
  optional func resolveRequestedBalanceType(for intent: INSearchForAccountsIntent) async -> INBalanceTypeResolutionResult
}
