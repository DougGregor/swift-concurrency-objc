
@available(watchOS 6.0, *)
struct INTemporalEventTriggerTypeOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var notScheduled: INTemporalEventTriggerTypeOptions { get }
  static var scheduledNonRecurring: INTemporalEventTriggerTypeOptions { get }
  static var scheduledRecurring: INTemporalEventTriggerTypeOptions { get }
}
