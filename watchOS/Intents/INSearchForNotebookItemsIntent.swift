
@available(watchOS 4.0, *)
class INSearchForNotebookItemsIntent : INIntent {
  @available(watchOS 6.0, *)
  init(title: INSpeakableString?, content: String?, itemType: INNotebookItemType, status: INTaskStatus, location: CLPlacemark?, locationSearchType: INLocationSearchType, dateTime: INDateComponentsRange?, dateSearchType: INDateSearchType, temporalEventTriggerTypes: INTemporalEventTriggerTypeOptions = [], taskPriority: INTaskPriority, notebookItemIdentifier: String?)
  @NSCopying var title: INSpeakableString? { get }
  var content: String? { get }
  var itemType: INNotebookItemType { get }
  var status: INTaskStatus { get }
  @NSCopying var location: CLPlacemark? { get }
  var locationSearchType: INLocationSearchType { get }
  @NSCopying var dateTime: INDateComponentsRange? { get }
  var dateSearchType: INDateSearchType { get }
  @available(watchOS 6.0, *)
  var temporalEventTriggerTypes: INTemporalEventTriggerTypeOptions { get }
  @available(watchOS 6.0, *)
  var taskPriority: INTaskPriority { get }
  @available(watchOS 4.2, *)
  var notebookItemIdentifier: String? { get }
}
@available(watchOS 4.0, *)
protocol INSearchForNotebookItemsIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchForNotebookItemsIntent, completion: @escaping (INSearchForNotebookItemsIntentResponse) -> Void)
  func handle(intent: INSearchForNotebookItemsIntent) async -> INSearchForNotebookItemsIntentResponse
  optional func confirm(intent: INSearchForNotebookItemsIntent, completion: @escaping (INSearchForNotebookItemsIntentResponse) -> Void)
  optional func confirm(intent: INSearchForNotebookItemsIntent) async -> INSearchForNotebookItemsIntentResponse
  optional func resolveTitle(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveTitle(for intent: INSearchForNotebookItemsIntent) async -> INSpeakableStringResolutionResult
  optional func resolveContent(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolveContent(for intent: INSearchForNotebookItemsIntent) async -> INStringResolutionResult
  optional func resolveItemType(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INNotebookItemTypeResolutionResult) -> Void)
  optional func resolveItemType(for intent: INSearchForNotebookItemsIntent) async -> INNotebookItemTypeResolutionResult
  optional func resolveStatus(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INTaskStatusResolutionResult) -> Void)
  optional func resolveStatus(for intent: INSearchForNotebookItemsIntent) async -> INTaskStatusResolutionResult
  optional func resolveLocation(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void)
  optional func resolveLocation(for intent: INSearchForNotebookItemsIntent) async -> INPlacemarkResolutionResult
  optional func resolveLocationSearchType(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INLocationSearchTypeResolutionResult) -> Void)
  optional func resolveLocationSearchType(for intent: INSearchForNotebookItemsIntent) async -> INLocationSearchTypeResolutionResult
  optional func resolveDateTime(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolveDateTime(for intent: INSearchForNotebookItemsIntent) async -> INDateComponentsRangeResolutionResult
  optional func resolveDateSearchType(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INDateSearchTypeResolutionResult) -> Void)
  optional func resolveDateSearchType(for intent: INSearchForNotebookItemsIntent) async -> INDateSearchTypeResolutionResult
  @available(watchOS 6.0, *)
  optional func resolveTemporalEventTriggerTypes(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INTemporalEventTriggerTypeOptionsResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolveTemporalEventTriggerTypes(for intent: INSearchForNotebookItemsIntent) async -> INTemporalEventTriggerTypeOptionsResolutionResult
  @available(watchOS 6.0, *)
  optional func resolveTaskPriority(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INTaskPriorityResolutionResult) -> Void)
  @available(watchOS 6.0, *)
  optional func resolveTaskPriority(for intent: INSearchForNotebookItemsIntent) async -> INTaskPriorityResolutionResult
}
