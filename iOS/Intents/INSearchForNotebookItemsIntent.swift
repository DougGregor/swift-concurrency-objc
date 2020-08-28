
@available(iOS 11.0, *)
class INSearchForNotebookItemsIntent : INIntent {
  @available(iOS 13.0, *)
  init(title: INSpeakableString?, content: String?, itemType: INNotebookItemType, status: INTaskStatus, location: CLPlacemark?, locationSearchType: INLocationSearchType, dateTime: INDateComponentsRange?, dateSearchType: INDateSearchType, temporalEventTriggerTypes: INTemporalEventTriggerTypeOptions = [], taskPriority: INTaskPriority, notebookItemIdentifier: String?)
  @NSCopying var title: INSpeakableString? { get }
  var content: String? { get }
  var itemType: INNotebookItemType { get }
  var status: INTaskStatus { get }
  @NSCopying var location: CLPlacemark? { get }
  var locationSearchType: INLocationSearchType { get }
  @NSCopying var dateTime: INDateComponentsRange? { get }
  var dateSearchType: INDateSearchType { get }
  @available(iOS 13.0, *)
  var temporalEventTriggerTypes: INTemporalEventTriggerTypeOptions { get }
  @available(iOS 13.0, *)
  var taskPriority: INTaskPriority { get }
  @available(iOS 11.2, *)
  var notebookItemIdentifier: String? { get }
}
@available(iOS 11.0, *)
protocol INSearchForNotebookItemsIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchForNotebookItemsIntent, completion: @escaping (INSearchForNotebookItemsIntentResponse) -> Void)
  optional func confirm(intent: INSearchForNotebookItemsIntent, completion: @escaping (INSearchForNotebookItemsIntentResponse) -> Void)
  optional func resolveTitle(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  optional func resolveContent(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolveItemType(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INNotebookItemTypeResolutionResult) -> Void)
  optional func resolveStatus(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INTaskStatusResolutionResult) -> Void)
  optional func resolveLocation(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void)
  optional func resolveLocationSearchType(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INLocationSearchTypeResolutionResult) -> Void)
  optional func resolveDateTime(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolveDateSearchType(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INDateSearchTypeResolutionResult) -> Void)
  @available(iOS 13.0, *)
  optional func resolveTemporalEventTriggerTypes(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INTemporalEventTriggerTypeOptionsResolutionResult) -> Void)
  @available(iOS 13.0, *)
  optional func resolveTaskPriority(for intent: INSearchForNotebookItemsIntent, with completion: @escaping (INTaskPriorityResolutionResult) -> Void)
}
