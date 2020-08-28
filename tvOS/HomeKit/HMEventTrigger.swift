
@available(tvOS 10.0, *)
let HMCharacteristicKeyPath: String
@available(tvOS 10.0, *)
let HMCharacteristicValueKeyPath: String
@available(tvOS 11.0, *)
let HMPresenceKeyPath: String
@available(tvOS 10.0, *)
class HMEventTrigger : HMTrigger {
  init(name: String, events: [HMEvent], predicate: NSPredicate?)
  @available(tvOS 11.0, *)
  init(name: String, events: [HMEvent], end endEvents: [HMEvent]?, recurrences: [DateComponents]?, predicate: NSPredicate?)
  var events: [HMEvent] { get }
  @available(tvOS 11.0, *)
  var endEvents: [HMEvent] { get }
  @NSCopying var predicate: NSPredicate? { get }
  @available(tvOS 11.0, *)
  var recurrences: [DateComponents]? { get }
  @available(tvOS 11.0, *)
  var executeOnce: Bool { get }
  @available(tvOS 11.0, *)
  var triggerActivationState: HMEventTriggerActivationState { get }
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use updateEvents:completionHandler: instead")
  func addEvent(_ event: HMEvent, completionHandler completion: @escaping (Error?) -> Void)
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use updateEvents:completionHandler: instead")
  func removeEvent(_ event: HMEvent, completionHandler completion: @escaping (Error?) -> Void)
  @available(tvOS 11.0, *)
  func updateEvents(_ events: [HMEvent], completionHandler completion: @escaping (Error?) -> Void)
  @available(tvOS 11.0, *)
  func updateEndEvents(_ endEvents: [HMEvent], completionHandler completion: @escaping (Error?) -> Void)
  func updatePredicate(_ predicate: NSPredicate?, completionHandler completion: @escaping (Error?) -> Void)
  @available(tvOS 11.0, *)
  func updateRecurrences(_ recurrences: [DateComponents]?, completionHandler completion: @escaping (Error?) -> Void)
  @available(tvOS 11.0, *)
  func updateExecuteOnce(_ executeOnce: Bool, completionHandler completion: @escaping (Error?) -> Void)
}
extension HMEventTrigger {
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use predicateForEvaluatingTriggerOccurringBeforeSignificantEvent: instead")
  class func predicateForEvaluatingTrigger(occurringBefore significantEvent: String, applyingOffset offset: DateComponents?) -> NSPredicate
  @available(tvOS 11.0, *)
  class func predicateForEvaluatingTriggerOccurring(beforeSignificantEvent significantEvent: HMSignificantTimeEvent) -> NSPredicate
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use predicateForEvaluatingTriggerOccurringAfterSignificantEvent: instead")
  class func predicateForEvaluatingTrigger(occurringAfter significantEvent: String, applyingOffset offset: DateComponents?) -> NSPredicate
  @available(tvOS 11.0, *)
  class func predicateForEvaluatingTriggerOccurring(afterSignificantEvent significantEvent: HMSignificantTimeEvent) -> NSPredicate
  @available(tvOS 11.0, *)
  class func predicate(forEvaluatingTriggerOccurringBetweenSignificantEvent firstSignificantEvent: HMSignificantTimeEvent, secondSignificantEvent: HMSignificantTimeEvent) -> NSPredicate
  class func predicateForEvaluatingTrigger(occurringBefore dateComponents: DateComponents) -> NSPredicate
  class func predicateForEvaluatingTrigger(occurringOn dateComponents: DateComponents) -> NSPredicate
  class func predicateForEvaluatingTrigger(occurringAfter dateComponents: DateComponents) -> NSPredicate
  @available(tvOS 11.0, *)
  class func predicateForEvaluatingTriggerOccurringBetweenDate(with firstDateComponents: DateComponents, secondDateWith secondDateWithComponents: DateComponents) -> NSPredicate
  class func predicateForEvaluatingTrigger(_ characteristic: HMCharacteristic, relatedBy operatorType: NSComparisonPredicate.Operator, toValue value: Any) -> NSPredicate
  @available(tvOS 11.0, *)
  class func predicateForEvaluatingTrigger(withPresence presenceEvent: HMPresenceEvent) -> NSPredicate
}
