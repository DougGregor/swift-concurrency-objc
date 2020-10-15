
@available(watchOS 2.0, *)
let HMCharacteristicKeyPath: String
@available(watchOS 2.0, *)
let HMCharacteristicValueKeyPath: String
@available(watchOS 4.0, *)
let HMPresenceKeyPath: String
@available(watchOS 2.0, *)
class HMEventTrigger : HMTrigger {
  var events: [HMEvent] { get }
  @available(watchOS 4.0, *)
  var endEvents: [HMEvent] { get }
  @NSCopying var predicate: NSPredicate? { get }
  @available(watchOS 4.0, *)
  var recurrences: [DateComponents]? { get }
  @available(watchOS 4.0, *)
  var executeOnce: Bool { get }
  @available(watchOS 4.0, *)
  var triggerActivationState: HMEventTriggerActivationState { get }
}
extension HMEventTrigger {
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "Use predicateForEvaluatingTriggerOccurringBeforeSignificantEvent: instead")
  class func predicateForEvaluatingTrigger(occurringBefore significantEvent: String, applyingOffset offset: DateComponents?) -> NSPredicate
  @available(watchOS 4.0, *)
  class func predicateForEvaluatingTriggerOccurring(beforeSignificantEvent significantEvent: HMSignificantTimeEvent) -> NSPredicate
  @available(watchOS, introduced: 2.0, deprecated: 4.0, message: "Use predicateForEvaluatingTriggerOccurringAfterSignificantEvent: instead")
  class func predicateForEvaluatingTrigger(occurringAfter significantEvent: String, applyingOffset offset: DateComponents?) -> NSPredicate
  @available(watchOS 4.0, *)
  class func predicateForEvaluatingTriggerOccurring(afterSignificantEvent significantEvent: HMSignificantTimeEvent) -> NSPredicate
  @available(watchOS 4.0, *)
  class func predicate(forEvaluatingTriggerOccurringBetweenSignificantEvent firstSignificantEvent: HMSignificantTimeEvent, secondSignificantEvent: HMSignificantTimeEvent) -> NSPredicate
  class func predicateForEvaluatingTrigger(occurringBefore dateComponents: DateComponents) -> NSPredicate
  class func predicateForEvaluatingTrigger(occurringOn dateComponents: DateComponents) -> NSPredicate
  class func predicateForEvaluatingTrigger(occurringAfter dateComponents: DateComponents) -> NSPredicate
  @available(watchOS 4.0, *)
  class func predicateForEvaluatingTriggerOccurringBetweenDate(with firstDateComponents: DateComponents, secondDateWith secondDateWithComponents: DateComponents) -> NSPredicate
  class func predicateForEvaluatingTrigger(_ characteristic: HMCharacteristic, relatedBy operatorType: NSComparisonPredicate.Operator, toValue value: Any) -> NSPredicate
  @available(watchOS 4.0, *)
  class func predicateForEvaluatingTrigger(withPresence presenceEvent: HMPresenceEvent) -> NSPredicate
}
